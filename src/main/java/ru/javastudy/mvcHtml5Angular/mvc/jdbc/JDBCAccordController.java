package ru.javastudy.mvcHtml5Angular.mvc.jdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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

        //List<User> users =  jdbcAccordDAO.queryAllUsers();

        final ModelAndView mv = new ModelAndView("/jdbc/jdbcrptord01");
        mv.addObject("resultObject", "jdbcRptOrd01 report completed ");
        mv.addObject("aHead", aHead);
        mv.addObject("aRecList", aRecList);
        return mv;

    }

    //@RequestMapping(value = "/jdbcRptTov01.do/{page}", method = RequestMethod.GET)
    //public ModelAndView jdbcRptTov01(@PathVariable(value="page") Integer pageGetParam) {
    @RequestMapping(value = "/rpttov01.do", method = RequestMethod.GET)
    public ModelAndView jdbcRptTov01(@RequestParam(value = "page", required = false) Integer pageGetParam) {
        System.out.println("JDBCAccordController rpttov01.do is called");

        int page = 1;
        int recordsPerPage = 10;
        if(pageGetParam != null) {
            page = pageGetParam;
        }

        List<String> aHead = Arrays.asList("Код пр-ции", "Наименование продукции","Ед.изм","К-во, шт", "Сумма, грн","N п.п.");
        List<List<String>> aRecList = jdbcAccordDAO.queryRptTov01(page, recordsPerPage);
        int noOfRecords = jdbcAccordDAO.getNoOfRecords();
        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);

        //List<User> users =  jdbcAccordDAO.queryAllUsers();
        System.out.printf("noOfPages=%d currentPage=%d noOfRecords=%d", noOfPages, page, noOfRecords);
        final ModelAndView mv = new ModelAndView("/jdbc/jdbcrpttov01");
        mv.addObject("resultObject", "jdbcRptTov01 report completed ");
        mv.addObject("noOfPages", noOfPages);
        mv.addObject("currentPage", page);
        mv.addObject("aHead", aHead);
        mv.addObject("aRecList", aRecList);
        return mv;
    }
}
