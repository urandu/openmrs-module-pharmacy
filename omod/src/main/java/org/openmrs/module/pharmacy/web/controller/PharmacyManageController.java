/**
 * The contents of this file are subject to the OpenMRS Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://license.openmrs.org
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 * License for the specific language governing rights and limitations
 * under the License.
 *
 * Copyright (C) OpenMRS, LLC.  All Rights Reserved.
 */
package org.openmrs.module.pharmacy.web.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.Drug;
import org.openmrs.Patient;
import org.openmrs.Person;
import org.openmrs.api.ConceptService;
import org.openmrs.api.PatientService;
import org.openmrs.api.PersonService;
import org.openmrs.api.context.Context;
import org.openmrs.module.pharmacy.Pharmacy;
import org.openmrs.module.pharmacy.api.DispenseDrugService;
import org.openmrs.module.pharmacy.api.DrugOrderService;
import org.openmrs.module.pharmacy.api.OtherModels.DispenseDrug;
import org.openmrs.module.pharmacy.api.OtherModels.DrugOrder;
import org.openmrs.module.pharmacy.api.PharmacyService;
import org.openmrs.web.WebConstants;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Vector;


/**
 * The main controller.
 */
@Controller
public class  PharmacyManageController {


    protected final Log log = LogFactory.getLog(getClass());
    private static final String PATH ="/module/pharmacy/newDrug.form";

    @RequestMapping(value = "/module/pharmacy/manage", method = RequestMethod.GET)
    public void manage(ModelMap model) {
		/*PharmacyService pharmacyService=Context.getService(PharmacyService.class);
        List<Pharmacy> drugList=pharmacyService.getAllMyDrugs();
        model.addAttribute("drugList", drugList);
        DispenseDrugService dispenseDrugService=Context.getService(DispenseDrugService.class);
        List<DispenseDrug> dispenseDrugList=dispenseDrugService.getAllMyDispensedDrugs();
        model.addAttribute("dispenseDrugList",dispenseDrugList);*/

    }
    @RequestMapping(value = PATH , method = RequestMethod.GET)
    public String newDrug(HttpSession httpSession,
                          @RequestParam(value = "genericName", required = false) String genericName,
                          @RequestParam(value = "brandName", required = false) String brandName,
                          @RequestParam(value = "description", required = false) String description,
                          @RequestParam(value = "pricePerUnit", required = false) String price) {
        try {
            Pharmacy pharmacy=new Pharmacy();
            pharmacy.setBrandName(brandName);
            pharmacy.setGenericName(genericName);
            pharmacy.setPricePerUnit(Float.parseFloat(price));
            pharmacy.setDescription(description);
            //pharmacy.setUnitsInStock(Integer.parseInt(units));

            PharmacyService pharmacyService=Context.getService(PharmacyService.class);
            pharmacyService.saveMyDrug(pharmacy);
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Registered Successfully");
            return "redirect:listDrugs.form";
        } catch (Exception ex) {
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, ex.getLocalizedMessage());
            return "redirect:listDrugs.form";
        }
    }
    @RequestMapping(value ="/module/pharmacy/editDrug.form"  , method = RequestMethod.GET)
    public String updateform(HttpSession httpSession,

                             @RequestParam(value = "drugId", required = false) int drugId,

                             @RequestParam(value = "genericName", required = false) String genericName,
                             @RequestParam(value = "brandName", required = false) String brandName,
                             @RequestParam(value = "description", required = false) String description,
                             @RequestParam(value = "pricePerUnit", required = false) String price)  {
        try {
            PharmacyService pharmacyService=Context.getService(PharmacyService.class);
            Pharmacy pharmacy=pharmacyService.getMyDrug(drugId);
            pharmacy.setBrandName(brandName);
            pharmacy.setGenericName(genericName);
            pharmacy.setDescription(description);
            pharmacy.setId(drugId);
            pharmacy.setPricePerUnit(Float.parseFloat(price));


            pharmacyService.updateMyDrug(pharmacy);
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Updated Successfully");
            return "redirect:listDrugs.form";
        } catch (Exception ex) {
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, ex.getLocalizedMessage());
            return "redirect:listDrugs.form";
        }
    }


    @RequestMapping(value = "/module/pharmacy/listDrugs", method = RequestMethod.GET)
    public void listDrugs(ModelMap model) {




        List<Drug> conceptDrugList = new Vector<Drug>();

        //only fill the Object if the user has authenticated properly
        if (Context.isAuthenticated()) {
            ConceptService cs = Context.getConceptService();
            conceptDrugList = cs.getAllDrugs();
        }

        PharmacyService pharmacyService = Context.getService(PharmacyService.class);
        List<Pharmacy> drugList = pharmacyService.getAllMyDrugs();
        model.addAttribute("drugList", drugList);
        model.addAttribute("conceptDrugList", conceptDrugList);

        model.addAttribute("user", Context.getAuthenticatedUser());
    }


    @RequestMapping(value ="/module/pharmacy/editDrugStock.form"  , method = RequestMethod.GET)
    public String editDrugStock(HttpSession httpSession,

                                @RequestParam(value = "drugId", required = false) int drugId,

                                @RequestParam(value = "unitsDelivered", required = false) String unitsDelivered,
                                @RequestParam(value = "dateOfDelivery", required = false) String dateOfDelivery,
                                @RequestParam(value = "batchId", required = false) Integer batchId,
                                @RequestParam(value = "batchExpirationDate", required = false) String batchExpirationDate)  {
       /* try {*/



        //handling date
        SimpleDateFormat formatter = new SimpleDateFormat("dd-mm-yyyy");


        Date dof= null;
        try {
            dof = formatter.parse(dateOfDelivery);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Date doe= null;
        try {
            doe = formatter.parse(batchExpirationDate);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        DrugOrder drugOrder=new DrugOrder();

        //drugOrder.s
        drugOrder.setUnitsDelivered(unitsDelivered);
        drugOrder.setDateOfDelivery(dof);
        drugOrder.setDateOfExpiry(doe);

        DrugOrderService drugOrderService=Context.getService(DrugOrderService.class);
        drugOrderService.saveMyDrugOrder(drugOrder);
        Pharmacy pharmacy;//=new Pharmacy();
        // pharmacy.setId(drugId);
        //pharmacy.setUnitsInStock();
        PharmacyService pharmacyService=Context.getService(PharmacyService.class);


        pharmacy=pharmacyService.getMyDrug(drugId);
        Integer stock=pharmacy.getUnitsInStock();
        stock=stock + Integer.parseInt(unitsDelivered);
        pharmacy.setUnitsInStock(stock);
        pharmacyService.updateMyDrug(pharmacy);

        httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Updated Successfully");
        return "redirect:listDrugs.form";
        /*} catch (Exception ex) {
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, ex.getLocalizedMessage());
            return "redirect:manage.form";
        }*/
    }



	/*protected final Log log = LogFactory.getLog(getClass());//jkkjkjkjk

	@RequestMapping(value = "/module/pharmacy/manage", method = RequestMethod.GET)
	public void manage(ModelMap model) {
		model.addAttribute("user", Context.getAuthenticatedUser());
	}*/



    @RequestMapping(value = "/module/pharmacy/pharmacyHome", method = RequestMethod.GET)
    public void pharmacyHome(ModelMap model) {
        model.addAttribute("user", Context.getAuthenticatedUser());
    }

    @RequestMapping(value = "/module/pharmacy/cashierHome", method = RequestMethod.GET)
    public void cashierHome(ModelMap model) {
        model.addAttribute("user", Context.getAuthenticatedUser());
    }

    @RequestMapping(value = "/module/pharmacy/patientPanel", method = RequestMethod.GET)
    public void patientPanel(ModelMap model,@RequestParam( value="patientId",required = true) Integer patientId,
                             @RequestParam( value="patientUuid",required = false) String patientUuid) {
        model.addAttribute("user", Context.getAuthenticatedUser());
        //Person person= Context.getPatientService().getPatient(ptId);



        PatientService ps = Context.getPatientService();
        Patient patient = null;

        PersonService personService=Context.getPersonService();

        Person person=null;

        person=personService.getPerson(patientId);

        try {
            patient = ps.getPatient(patientId);
        }
        catch (ObjectRetrievalFailureException noPatientEx) {
            log.warn("There is no patient with id: '" + patientId + "'", noPatientEx);
        }



        log.debug("patient: '" + patient + "'");



        DispenseDrugService dispenseDrugService=Context.getService(DispenseDrugService.class);
        List<DispenseDrug> dispenseDrugList=dispenseDrugService.getDispensedDrugForPatient(patientId);
        model.addAttribute("dispenseDrugList",dispenseDrugList);


        model.addAttribute("patient",patient);
        model.addAttribute("patientId",patientId);
        model.addAttribute("person",person);


    }

    @RequestMapping(value = "/module/pharmacy/cashierPatientPanel", method = RequestMethod.GET)
    public void cashierPatientPanel(ModelMap model,@RequestParam( value="patientId",required = true) Integer patientId,
                                    @RequestParam( value="patientUuid",required = false) String patientUuid) {
        model.addAttribute("user", Context.getAuthenticatedUser());
        //Person person= Context.getPatientService().getPatient(ptId);



        PatientService ps = Context.getPatientService();
        Patient patient = null;

        PersonService personService=Context.getPersonService();

        Person person=null;

        person=personService.getPerson(patientId);

        try {
            patient = ps.getPatient(patientId);
        }
        catch (ObjectRetrievalFailureException noPatientEx) {
            log.warn("There is no patient with id: '" + patientId + "'", noPatientEx);
        }



        log.debug("patient: '" + patient + "'");



        DispenseDrugService dispenseDrugService=Context.getService(DispenseDrugService.class);
        List<DispenseDrug> dispenseDrugList=dispenseDrugService.getDispensedDrugForPatient(patientId);
        model.addAttribute("dispenseDrugList",dispenseDrugList);

        model.addAttribute("patient",patient);
        model.addAttribute("patientId",patientId);
        model.addAttribute("person",person);

    }
    @RequestMapping(value ="/module/pharmacy/paydrug.form"  , method = RequestMethod.GET)
    public String paydrug(HttpSession httpSession,
                          @RequestParam(value = "patientId", required = false) Integer patientId,
                             /*@RequestParam(value = "totalAmount", required = false) float totalAmount,*/
                          @RequestParam(value = "drugId", required = false) Integer drugId,
                          @RequestParam(value = "comments", required = false) String comments,
                          @RequestParam(value = "units", required = false) Integer units,
                          @RequestParam(value = "date", required = false) String date,
                          @RequestParam(value = "dispenseId", required = false) Integer dispenseId)  {
        try {
            DispenseDrugService dispenseDrugService=Context.getService(DispenseDrugService.class);
            DispenseDrug dispenseDrug=dispenseDrugService.getMyDispensedDrug(dispenseId);
            dispenseDrug.setPaymentStatus(true);
            dispenseDrug.setPatientID(patientId);
            dispenseDrug.setComments(comments);
            dispenseDrug.setUnitsDispensed(units);
            /*dispenseDrug.setDateOfDispense(date);*/
            dispenseDrug.setDrugId(drugId);
            dispenseDrug.setId(dispenseId);
          /*  PayDrug payDrug= new PayDrug();
            payDrug.setPatientID(patientId);
            payDrug.setDateOfPayment(new Date());
            payDrug.setPaid(true);
            payDrug.setTotalAmount(totalAmount);
*/

            dispenseDrugService.updateMyDispensedDrug(dispenseDrug);

            /*PayDrugService payDrugService=Context.getService(PayDrugService.class);
            payDrugService.saveMyPaidDrug(payDrug);*/

            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Updated Successfully");
            return "redirect:cashierPatientPanel.form?patientId="+patientId;
        } catch (Exception ex) {
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, ex.getLocalizedMessage());
            return "redirect:cashierPatientPanel.form?patientId="+patientId;
        }
    }

    @RequestMapping(value ="/module/pharmacy/issuedrug.form"  , method = RequestMethod.GET)
    public String issuedrug(HttpSession httpSession,
                            @RequestParam(value = "patientId", required = false) Integer patientId,
                             /*@RequestParam(value = "totalAmount", required = false) float totalAmount,*/
                            @RequestParam(value = "drugId", required = false) Integer drugId,
                            @RequestParam(value = "comments", required = false) String comments,
                            @RequestParam(value = "units", required = false) Integer units,
                            @RequestParam(value = "date", required = false) String date,
                            @RequestParam(value = "dispenseId", required = false) Integer dispenseId,
                            @RequestParam(value = "paymentStatus", required = false) Boolean payStatus)  {
        try {
            DispenseDrugService dispenseDrugService=Context.getService(DispenseDrugService.class);
            DispenseDrug dispenseDrug=dispenseDrugService.getMyDispensedDrug(dispenseId);
            dispenseDrug.setPaymentStatus(true);
            dispenseDrug.setPatientID(patientId);
            dispenseDrug.setComments(comments);
            dispenseDrug.setUnitsDispensed(units);
            /*dispenseDrug.setDateOfDispense(date);*/

            SimpleDateFormat format=new SimpleDateFormat("yyyy-mm-dd");
            Date dod;
            dod=format.parse(date);
            dispenseDrug.setDateOfDispense(dod);
            dispenseDrug.setDrugId(drugId);
            dispenseDrug.setId(dispenseId);
            dispenseDrug.setPaymentStatus(payStatus);
            dispenseDrug.setIssueStatus(true);
          /*  PayDrug payDrug= new PayDrug();
            payDrug.setPatientID(patientId);
            payDrug.setDateOfPayment(new Date());
            payDrug.setPaid(true);
            payDrug.setTotalAmount(totalAmount);
*/

            dispenseDrugService.updateMyDispensedDrug(dispenseDrug);

            /*PayDrugService payDrugService=Context.getService(PayDrugService.class);
            payDrugService.saveMyPaidDrug(payDrug);*/

            return "redirect:patientPanel.form?patientId="+patientId;
        } catch (Exception ex) {
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, ex.getLocalizedMessage());
            return "redirect:patientPanel.form?patientId="+patientId;
        }
    }
    @RequestMapping(value = "/module/pharmacy/report", method = RequestMethod.GET)
    public void report(ModelMap model){
        PharmacyService pharmacyService=Context.getService(PharmacyService.class);
        List<Pharmacy> drugList=pharmacyService.getAllMyDrugs();
        model.addAttribute("drugList",drugList);

        DispenseDrugService dispenseDrugService=Context.getService(DispenseDrugService.class);
        List<DispenseDrug> dispenseDrugList=dispenseDrugService.getAllMyDispensedDrugs();
        model.addAttribute("dispenseDrugList",dispenseDrugList);

    }

    @RequestMapping(value = "/module/pharmacy/viewtimedreport.form", method = RequestMethod.GET)
    public String viewtimedreport(ModelMap modelMap,
            @RequestParam(value = "minDate", required = false) String minDate,
                                @RequestParam(value = "maxDate", required = false) String maxDate){
        try {
            SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
            Date dateMin, dateMax;
            dateMin = format.parse(minDate);
            dateMax = format.parse(maxDate);

            return "redirect:report.form?patientId="+dateMin+"&"+dateMax;
        }
        catch (Exception ex){
            return "redirect:report.form";
        }
    }
}