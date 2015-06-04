package org.openmrs.module.pharmacy.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.SessionFactory;
import org.openmrs.module.pharmacy.api.OtherModels.DispenseDrug;
import org.openmrs.module.pharmacy.api.db.DispenseDrugDAO;

import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
public class HibernateDispenseDrugDAO implements DispenseDrugDAO {
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
    public List<DispenseDrug> getAllMyDispensedDrugs() {
        return sessionFactory.getCurrentSession().createCriteria(DispenseDrug.class).list();
    }

    @Override
    public DispenseDrug getMyDispensedDrug(Integer myDispensedDrugId) {
        return (DispenseDrug) sessionFactory.getCurrentSession().get(DispenseDrug.class, myDispensedDrugId);
    }

    @Override
    public void purgeMyDispensedDrug(DispenseDrug dispenseDrug)
    {
        sessionFactory.getCurrentSession().delete(dispenseDrug);
    }


    @Override
    public DispenseDrug saveMyDispensedDrug(DispenseDrug dispenseDrug) {
        sessionFactory.getCurrentSession().save(dispenseDrug);
        return dispenseDrug;
    }

    @Override
    public DispenseDrug updateMyDispensedDrug(DispenseDrug dispenseDrug) {
        sessionFactory.getCurrentSession().update(dispenseDrug);
        return dispenseDrug;
    }

 /*   @Override
    public List<DispenseDrug> showDrugOrderByTime(){
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(DispenseDrug.class);
        criteria.setFetchMode("Pharmacy", FetchMode.JOIN);
        List list = criteria.list();
        return list;
    }*/
}
