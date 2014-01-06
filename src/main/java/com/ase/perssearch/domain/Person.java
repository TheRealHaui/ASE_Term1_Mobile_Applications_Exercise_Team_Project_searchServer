package com.ase.perssearch.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
@RooJson
public class Person {

    /**
     */
    @NotNull
    private String firstname;

    /**
     */
    @NotNull
    private String lastname;

    /**
     */
    @NotNull
    private String emailAddress;

    /**
     */
    @NotNull
    private String address;

    /**
     * Telephonenumber of the person
     */
    @NotNull
    private String telephonNumber;
}
