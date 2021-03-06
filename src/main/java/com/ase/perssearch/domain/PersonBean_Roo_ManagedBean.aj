// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.ase.perssearch.domain;

import com.ase.perssearch.domain.Person;
import com.ase.perssearch.domain.PersonBean;
import com.ase.perssearch.domain.util.MessageFactory;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;

privileged aspect PersonBean_Roo_ManagedBean {
    
    declare @type: PersonBean: @ManagedBean(name = "personBean");
    
    declare @type: PersonBean: @SessionScoped;
    
    private String PersonBean.name = "People";
    
    private Person PersonBean.person;
    
    private List<Person> PersonBean.allPeople;
    
    private boolean PersonBean.dataVisible = false;
    
    private List<String> PersonBean.columns;
    
    private HtmlPanelGrid PersonBean.createPanelGrid;
    
    private HtmlPanelGrid PersonBean.editPanelGrid;
    
    private HtmlPanelGrid PersonBean.viewPanelGrid;
    
    private boolean PersonBean.createDialogVisible = false;
    
    @PostConstruct
    public void PersonBean.init() {
        columns = new ArrayList<String>();
        columns.add("firstname");
        columns.add("lastname");
        columns.add("emailAddress");
        columns.add("address");
        columns.add("telephonNumber");
    }
    
    public String PersonBean.getName() {
        return name;
    }
    
    public List<String> PersonBean.getColumns() {
        return columns;
    }
    
    public List<Person> PersonBean.getAllPeople() {
        return allPeople;
    }
    
    public void PersonBean.setAllPeople(List<Person> allPeople) {
        this.allPeople = allPeople;
    }
    
    public String PersonBean.findAllPeople() {
        allPeople = Person.findAllPeople();
        dataVisible = !allPeople.isEmpty();
        return null;
    }
    
    public boolean PersonBean.isDataVisible() {
        return dataVisible;
    }
    
    public void PersonBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid PersonBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void PersonBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid PersonBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void PersonBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid PersonBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void PersonBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid PersonBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel firstnameCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        firstnameCreateOutput.setFor("firstnameCreateInput");
        firstnameCreateOutput.setId("firstnameCreateOutput");
        firstnameCreateOutput.setValue("Firstname:");
        htmlPanelGrid.getChildren().add(firstnameCreateOutput);
        
        InputText firstnameCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        firstnameCreateInput.setId("firstnameCreateInput");
        firstnameCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.firstname}", String.class));
        firstnameCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(firstnameCreateInput);
        
        Message firstnameCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        firstnameCreateInputMessage.setId("firstnameCreateInputMessage");
        firstnameCreateInputMessage.setFor("firstnameCreateInput");
        firstnameCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(firstnameCreateInputMessage);
        
        OutputLabel lastnameCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        lastnameCreateOutput.setFor("lastnameCreateInput");
        lastnameCreateOutput.setId("lastnameCreateOutput");
        lastnameCreateOutput.setValue("Lastname:");
        htmlPanelGrid.getChildren().add(lastnameCreateOutput);
        
        InputText lastnameCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        lastnameCreateInput.setId("lastnameCreateInput");
        lastnameCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.lastname}", String.class));
        lastnameCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(lastnameCreateInput);
        
        Message lastnameCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        lastnameCreateInputMessage.setId("lastnameCreateInputMessage");
        lastnameCreateInputMessage.setFor("lastnameCreateInput");
        lastnameCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(lastnameCreateInputMessage);
        
        OutputLabel emailAddressCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        emailAddressCreateOutput.setFor("emailAddressCreateInput");
        emailAddressCreateOutput.setId("emailAddressCreateOutput");
        emailAddressCreateOutput.setValue("Email Address:");
        htmlPanelGrid.getChildren().add(emailAddressCreateOutput);
        
        InputText emailAddressCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        emailAddressCreateInput.setId("emailAddressCreateInput");
        emailAddressCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.emailAddress}", String.class));
        emailAddressCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(emailAddressCreateInput);
        
        Message emailAddressCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        emailAddressCreateInputMessage.setId("emailAddressCreateInputMessage");
        emailAddressCreateInputMessage.setFor("emailAddressCreateInput");
        emailAddressCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(emailAddressCreateInputMessage);
        
        OutputLabel addressCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        addressCreateOutput.setFor("addressCreateInput");
        addressCreateOutput.setId("addressCreateOutput");
        addressCreateOutput.setValue("Address:");
        htmlPanelGrid.getChildren().add(addressCreateOutput);
        
        InputText addressCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        addressCreateInput.setId("addressCreateInput");
        addressCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.address}", String.class));
        addressCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(addressCreateInput);
        
        Message addressCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        addressCreateInputMessage.setId("addressCreateInputMessage");
        addressCreateInputMessage.setFor("addressCreateInput");
        addressCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(addressCreateInputMessage);
        
        OutputLabel telephonNumberCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        telephonNumberCreateOutput.setFor("telephonNumberCreateInput");
        telephonNumberCreateOutput.setId("telephonNumberCreateOutput");
        telephonNumberCreateOutput.setValue("Telephon Number:");
        htmlPanelGrid.getChildren().add(telephonNumberCreateOutput);
        
        InputText telephonNumberCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        telephonNumberCreateInput.setId("telephonNumberCreateInput");
        telephonNumberCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.telephonNumber}", String.class));
        telephonNumberCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(telephonNumberCreateInput);
        
        Message telephonNumberCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        telephonNumberCreateInputMessage.setId("telephonNumberCreateInputMessage");
        telephonNumberCreateInputMessage.setFor("telephonNumberCreateInput");
        telephonNumberCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(telephonNumberCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid PersonBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel firstnameEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        firstnameEditOutput.setFor("firstnameEditInput");
        firstnameEditOutput.setId("firstnameEditOutput");
        firstnameEditOutput.setValue("Firstname:");
        htmlPanelGrid.getChildren().add(firstnameEditOutput);
        
        InputText firstnameEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        firstnameEditInput.setId("firstnameEditInput");
        firstnameEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.firstname}", String.class));
        firstnameEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(firstnameEditInput);
        
        Message firstnameEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        firstnameEditInputMessage.setId("firstnameEditInputMessage");
        firstnameEditInputMessage.setFor("firstnameEditInput");
        firstnameEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(firstnameEditInputMessage);
        
        OutputLabel lastnameEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        lastnameEditOutput.setFor("lastnameEditInput");
        lastnameEditOutput.setId("lastnameEditOutput");
        lastnameEditOutput.setValue("Lastname:");
        htmlPanelGrid.getChildren().add(lastnameEditOutput);
        
        InputText lastnameEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        lastnameEditInput.setId("lastnameEditInput");
        lastnameEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.lastname}", String.class));
        lastnameEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(lastnameEditInput);
        
        Message lastnameEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        lastnameEditInputMessage.setId("lastnameEditInputMessage");
        lastnameEditInputMessage.setFor("lastnameEditInput");
        lastnameEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(lastnameEditInputMessage);
        
        OutputLabel emailAddressEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        emailAddressEditOutput.setFor("emailAddressEditInput");
        emailAddressEditOutput.setId("emailAddressEditOutput");
        emailAddressEditOutput.setValue("Email Address:");
        htmlPanelGrid.getChildren().add(emailAddressEditOutput);
        
        InputText emailAddressEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        emailAddressEditInput.setId("emailAddressEditInput");
        emailAddressEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.emailAddress}", String.class));
        emailAddressEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(emailAddressEditInput);
        
        Message emailAddressEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        emailAddressEditInputMessage.setId("emailAddressEditInputMessage");
        emailAddressEditInputMessage.setFor("emailAddressEditInput");
        emailAddressEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(emailAddressEditInputMessage);
        
        OutputLabel addressEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        addressEditOutput.setFor("addressEditInput");
        addressEditOutput.setId("addressEditOutput");
        addressEditOutput.setValue("Address:");
        htmlPanelGrid.getChildren().add(addressEditOutput);
        
        InputText addressEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        addressEditInput.setId("addressEditInput");
        addressEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.address}", String.class));
        addressEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(addressEditInput);
        
        Message addressEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        addressEditInputMessage.setId("addressEditInputMessage");
        addressEditInputMessage.setFor("addressEditInput");
        addressEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(addressEditInputMessage);
        
        OutputLabel telephonNumberEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        telephonNumberEditOutput.setFor("telephonNumberEditInput");
        telephonNumberEditOutput.setId("telephonNumberEditOutput");
        telephonNumberEditOutput.setValue("Telephon Number:");
        htmlPanelGrid.getChildren().add(telephonNumberEditOutput);
        
        InputText telephonNumberEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        telephonNumberEditInput.setId("telephonNumberEditInput");
        telephonNumberEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.telephonNumber}", String.class));
        telephonNumberEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(telephonNumberEditInput);
        
        Message telephonNumberEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        telephonNumberEditInputMessage.setId("telephonNumberEditInputMessage");
        telephonNumberEditInputMessage.setFor("telephonNumberEditInput");
        telephonNumberEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(telephonNumberEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid PersonBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText firstnameLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        firstnameLabel.setId("firstnameLabel");
        firstnameLabel.setValue("Firstname:");
        htmlPanelGrid.getChildren().add(firstnameLabel);
        
        HtmlOutputText firstnameValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        firstnameValue.setId("firstnameValue");
        firstnameValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.firstname}", String.class));
        htmlPanelGrid.getChildren().add(firstnameValue);
        
        HtmlOutputText lastnameLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        lastnameLabel.setId("lastnameLabel");
        lastnameLabel.setValue("Lastname:");
        htmlPanelGrid.getChildren().add(lastnameLabel);
        
        HtmlOutputText lastnameValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        lastnameValue.setId("lastnameValue");
        lastnameValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.lastname}", String.class));
        htmlPanelGrid.getChildren().add(lastnameValue);
        
        HtmlOutputText emailAddressLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        emailAddressLabel.setId("emailAddressLabel");
        emailAddressLabel.setValue("Email Address:");
        htmlPanelGrid.getChildren().add(emailAddressLabel);
        
        HtmlOutputText emailAddressValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        emailAddressValue.setId("emailAddressValue");
        emailAddressValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.emailAddress}", String.class));
        htmlPanelGrid.getChildren().add(emailAddressValue);
        
        HtmlOutputText addressLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        addressLabel.setId("addressLabel");
        addressLabel.setValue("Address:");
        htmlPanelGrid.getChildren().add(addressLabel);
        
        HtmlOutputText addressValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        addressValue.setId("addressValue");
        addressValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.address}", String.class));
        htmlPanelGrid.getChildren().add(addressValue);
        
        HtmlOutputText telephonNumberLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        telephonNumberLabel.setId("telephonNumberLabel");
        telephonNumberLabel.setValue("Telephon Number:");
        htmlPanelGrid.getChildren().add(telephonNumberLabel);
        
        HtmlOutputText telephonNumberValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        telephonNumberValue.setId("telephonNumberValue");
        telephonNumberValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{personBean.person.telephonNumber}", String.class));
        htmlPanelGrid.getChildren().add(telephonNumberValue);
        
        return htmlPanelGrid;
    }
    
    public Person PersonBean.getPerson() {
        if (person == null) {
            person = new Person();
        }
        return person;
    }
    
    public void PersonBean.setPerson(Person person) {
        this.person = person;
    }
    
    public String PersonBean.onEdit() {
        return null;
    }
    
    public boolean PersonBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void PersonBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String PersonBean.displayList() {
        createDialogVisible = false;
        findAllPeople();
        return "person";
    }
    
    public String PersonBean.displayCreateDialog() {
        person = new Person();
        createDialogVisible = true;
        return "person";
    }
    
    public String PersonBean.persist() {
        String message = "";
        if (person.getId() != null) {
            person.merge();
            message = "message_successfully_updated";
        } else {
            person.persist();
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "Person");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllPeople();
    }
    
    public String PersonBean.delete() {
        person.remove();
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "Person");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllPeople();
    }
    
    public void PersonBean.reset() {
        person = null;
        createDialogVisible = false;
    }
    
    public void PersonBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}
