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
package org.openmrs.module.pharmacy.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.pharmacy.Pharmacy;
import org.openmrs.module.pharmacy.api.db.PharmacyDAO;

import java.util.List;

/**
 * It is a default implementation of  {@link PharmacyDAO}.
 */
public class HibernatePharmacyDAO implements PharmacyDAO {
	protected final Log log = LogFactory.getLog(this.getClass());
	private SessionFactory sessionFactory;
	/**
	 * @ param sessionFactory the sessionFactory to set
	 */
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	/**
	 * @ return the sessionFactory
	 */
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	@Override
	public List<Pharmacy> getAllMyDrugs() {
		return sessionFactory.getCurrentSession().createCriteria(Pharmacy.class).list();
    }

	@Override
	public Pharmacy getMyDrug(Integer myDrugId) {
		return (Pharmacy) sessionFactory.getCurrentSession().get(Pharmacy.class, myDrugId);
	}

	@Override
	public void purgeMyDrug(Pharmacy pharmacy) {
		sessionFactory.getCurrentSession().delete(pharmacy);
	}

	@Override
	public Pharmacy saveMyDrug(Pharmacy pharmacy) {
		sessionFactory.getCurrentSession().save(pharmacy);
		return pharmacy;
	}

	@Override
	public Pharmacy updateMyDrug(Pharmacy pharmacy){
		sessionFactory.getCurrentSession().update(pharmacy);
		return pharmacy;
	}
}