package ru.javastudy.mvcHtml5Angular.mvc.jdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.javastudy.mvcHtml5Angular.mvc.bean.User;

import java.util.Arrays;
import java.util.List;

@Controller
public class JDBCAccordController {

    @Autowired
    JDBCAccordDAO jdbcAccordDAO;

    @RequestMapping(value = "/jdbcRptOrd01", method = RequestMethod.GET)
    public ModelAndView jdbcRptOrd01() {
        System.out.println("JDBCAccordController jdbcRptOrd01() is called");

        List<String> aHead = Arrays.asList("Код ТА", "ФИО ТА", "Сумма, грн", "К-во заказов");
        List<List<String>> aRecList = jdbcAccordDAO.queryRptOrder01();

        List<User> users =  jdbcAccordDAO.queryAllUsers();

        final ModelAndView mv = new ModelAndView("/jdbc/jdbcrptord01");
        mv.addObject("resultObject", "jdbcRptOrd01 report completed ");
        mv.addObject("aHead", aHead);
        mv.addObject("aRecList", aRecList);
        return mv;

    }

    @RequestMapping(value = "/jdbcRptTov01", method = RequestMethod.GET)
    public ModelAndView jdbcRptTov01() {
        System.out.println("JDBCAccordController jdbcRptTov01() is called");
        List<User> users =  jdbcAccordDAO.queryAllUsers();
        return new ModelAndView("/jdbc/jdbcrpttov01", "resultObject", users);
    }
}
