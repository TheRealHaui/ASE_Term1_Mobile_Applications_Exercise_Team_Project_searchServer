package com.ase.perssearch.domain.controller;

import com.ase.perssearch.domain.Person;
import com.ase.perssearch.domain.PersonBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;


//Basic implementation details.
//http://www.pretechsol.com/2013/08/spring-restful-web-services-example.html#.UtgsApBDtkB


//Call me locally with http://localhost:8080/searchPerson/Hans


@Controller
public class Search {


    @RequestMapping(value = "/searchPerson/{searchTerm}", method = RequestMethod.GET)
    public  @ResponseBody
    String getPersons(@PathVariable String searchTerm) {

        //http://stackoverflow.com/questions/14787822/jetty-maven-plugin-does-not-show-sysout-and-log-messages
        //Stimmt nicht.
        //System.out.println("Here we go");
        //System.err.println("Wrrrrrrrrrrrrrrrrrrrrrr Here we go");

        Person pB = new Person();

        List<Person> resultList = new ArrayList<Person>();

        searchTerm = searchTerm.replace(" ","").replace("*","").toLowerCase();

        //We implement our own full text search.
        for (Person p : pB.findAllPeople()) {

            if ( p.getFirstname().concat( p.getLastname() ).toLowerCase().contains(searchTerm) ){
                resultList.add(p);
            }

        }


        //Offensichtlich keine automatische Konvertierung bei Spring.
        return Person.toJsonArray(resultList);

    }


}