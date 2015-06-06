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
import org.openmrs.Patient;
import org.openmrs.Person;
import org.openmrs.api.PatientService;
import org.openmrs.api.PersonService;
import org.openmrs.api.context.Context;
import org.openmrs.module.pharmacy.Pharmacy;
import org.openmrs.module.pharmacy.api.DispenseDrugService;
import org.openmrs.module.pharmacy.api.OtherModels.DispenseDrug;
import org.openmrs.module.pharmacy.api.PharmacyService;
import org.openmrs.web.WebConstants;
import org.springframework.orm.ObjectRetrievalFailureException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;


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
                                   @RequestParam(value = "pricePerUnit", required = false) String price,
                          @RequestParam(value = "pricePerUnit", required = false) String units) {
        try {
            Pharmacy pharmacy=new Pharmacy();
            pharmacy.setBrandName(brandName);
            pharmacy.setGenericName(genericName);
            pharmacy.setPricePerUnit(Float.parseFloat(price));
            pharmacy.setDescription(description);
            pharmacy.setUnitsInStock(Integer.parseInt(units));

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
                                   @RequestParam(value = "genericName", required = false) int drugId,
                                   @RequestParam(value = "genericName", required = false) String genericName,
                                   @RequestParam(value = "brandName", required = false) String brandName,
                                   @RequestParam(value = "description", required = false) String description,
                                   @RequestParam(value = "pricePerUnit", required = false) String price)  {
        try {
            Pharmacy pharmacy=new Pharmacy();
            pharmacy.setBrandName(brandName);
            pharmacy.setGenericName(genericName);
            pharmacy.setDescription(description);
            pharmacy.setId(drugId);
            pharmacy.setPricePerUnit(Float.parseFloat(price));

            PharmacyService pharmacyService=Context.getService(PharmacyService.class);
            pharmacyService.updateMyDrug(pharmacy);
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, "Updated Successfully");
            return "redirect:manage.form";
        } catch (Exception ex) {
            httpSession.setAttribute(WebConstants.OPENMRS_MSG_ATTR, ex.getLocalizedMessage());
            return "redirect:manage.form";
        }
    }


	
	/*protected final Log log = LogFactory.getLog(getClass());//jkkjkjkjk

	
	@RequestMapping(value = "/module/pharmacy/manage", method = RequestMethod.GET)
	public void manage(ModelMap model) {
		model.addAttribute("user", Context.getAuthenticatedUser());
	}*/

    @RequestMapping(value = "/module/pharmacy/listDrugs", method = RequestMethod.GET)
    public void listDrugs(ModelMap model) {

        PharmacyService pharmacyService=Context.getService(PharmacyService.class);
        List<Pharmacy> drugList=pharmacyService.getAllMyDrugs();
        model.addAttribute("drugList", drugList);
        model.addAttribute("user", Context.getAuthenticatedUser());
    }

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


}

