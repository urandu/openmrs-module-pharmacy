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
import org.hibernate.SessionFactory;
import org.openmrs.api.context.Context;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * The main controller.
 */
@Controller
public class  PharmacyManageController {
<<<<<<< HEAD
	SessionFactory sessionFactory;
	protected final Log log = LogFactory.getLog(getClass());
=======
	
	protected final Log log = LogFactory.getLog(getClass());//jkkjkjkjk
>>>>>>> 84ceb54b9f2d97056f476a2ce37826449662d5a4
	
	@RequestMapping(value = "/module/pharmacy/manage", method = RequestMethod.GET)
	public void manage(ModelMap model) {
		model.addAttribute("user", Context.getAuthenticatedUser());
	}

    @RequestMapping(value = "/module/pharmacy/listDrugs", method = RequestMethod.GET)
    public void listDrugs(ModelMap model) {
        model.addAttribute("user", Context.getAuthenticatedUser());
    }

    @RequestMapping(value = "/module/pharmacy/pharmacyHome", method = RequestMethod.GET)
    public void pharmacyHome(ModelMap model) {
        model.addAttribute("user", Context.getAuthenticatedUser());
    }

    @RequestMapping(value = "/module/pharmacy/patientPanel", method = RequestMethod.GET)
    public String patientPanel(ModelMap model,@RequestParam(required = false, value="patientId") Integer ptId) {
        model.addAttribute("user", Context.getAuthenticatedUser());
        //Person person= Context.getPatientService().getPatient(ptId);
        model.addAttribute("patient",Context.getPatientService().getPatient(ptId));
        return "module/pharmacy/patientPanel";
    }

}
