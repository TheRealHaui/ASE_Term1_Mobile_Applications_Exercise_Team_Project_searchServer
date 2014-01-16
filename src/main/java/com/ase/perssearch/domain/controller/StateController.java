package com.ase.perssearch.domain.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


//Basic implementation details.
//http://www.pretechsol.com/2013/08/spring-restful-web-services-example.html#.UtgsApBDtkB


@Controller
@RequestMapping("/state")
public class StateController {
    @RequestMapping(value = "/{code}", method = RequestMethod.GET)
    public  @ResponseBody
    String getState(@PathVariable String code) {
        String result;
        if (code.equals("KL")) {
            result = "Kerala";
        } else {
            result = "Default State";
        }
        return result;
    }
}