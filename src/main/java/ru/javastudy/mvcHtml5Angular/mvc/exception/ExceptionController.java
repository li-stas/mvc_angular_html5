package ru.javastudy.mvcHtml5Angular.mvc.exception;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created for JavaStudy.ru on 02.03.2016.
 */
@Controller
public class ExceptionController {

    @RequestMapping(value = "/runtimeException", method = RequestMethod.GET)
    public void throwException( ) {
        throw new RuntimeException();
    }
}
