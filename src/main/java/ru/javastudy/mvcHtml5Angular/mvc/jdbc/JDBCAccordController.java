package ru.javastudy.mvcHtml5Angular.mvc.jdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.javastudy.mvcHtml5Angular.mvc.bean.DBLog;
import ru.javastudy.mvcHtml5Angular.mvc.bean.User;

import java.util.List;

@Controller
public class JDBCAccordController {

    @Autowired JDBCAccordExample jdbcAccordExample;

    @RequestMapping(value = "/jdbcRptOrd01", method = RequestMethod.GET)
    public ModelAndView jdbcRptOrd01() {
        System.out.println("JDBCAccordController jdbcRptOrd01() is called");
        List<User> users =  jdbcAccordExample.queryAllUsers();
        return new ModelAndView("/jdbc/jdbcrptord01", "resultObject", users);
    }

    @RequestMapping(value = "/jdbcRptTov01", method = RequestMethod.GET)
    public ModelAndView jdbcRptTov01() {
        System.out.println("JDBCAccordController jdbcRptTov01() is called");
        List<User> users =  jdbcAccordExample.queryAllUsers();
        return new ModelAndView("/jdbc/jdbcrpttov01", "resultObject", users);
    }
}
