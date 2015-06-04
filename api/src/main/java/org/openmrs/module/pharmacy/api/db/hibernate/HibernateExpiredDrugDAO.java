package org.openmrs.module.pharmacy.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.pharmacy.api.OtherModels.ExpiredDrug;
import org.openmrs.module.pharmacy.api.db.ExpiredDrugDAO;

import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
public class HibernateExpiredDrugDAO implements ExpiredDrugDAO{
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
    public List<ExpiredDrug> getAllMyExpiredDrugs() {
        return sessionFactory.getCurrentSession().createCriteria(ExpiredDrug.class).list();
    }

    @Override
    public ExpiredDrug getMyExpiredDrug(Integer myExpiredDrugId) {
        return (ExpiredDrug) sessionFactory.getCurrentSession().get(ExpiredDrug.class, myExpiredDrugId);
    }

    public void purgeMyExpiredDrug(ExpiredDrug expiredDrug)
    {
        sessionFactory.getCurrentSession().delete(expiredDrug);
    }


    @Override
    public ExpiredDrug saveMyExpiredDrug(ExpiredDrug expiredDrug) {
        sessionFactory.getCurrentSession().save(expiredDrug);
        return expiredDrug;
    }

    @Override
    public ExpiredDrug updateMyExpiredDrug(ExpiredDrug expiredDrug) {
        sessionFactory.getCurrentSession().update(expiredDrug);
        return expiredDrug;
    }
}
