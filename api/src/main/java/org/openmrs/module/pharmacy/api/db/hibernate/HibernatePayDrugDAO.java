package org.openmrs.module.pharmacy.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.pharmacy.api.OtherModels.PayDrug;
import org.openmrs.module.pharmacy.api.db.PayDrugDAO;

import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
public class HibernatePayDrugDAO implements PayDrugDAO {
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
    public List<PayDrug> getAllMyPaidDrugs() {
        return sessionFactory.getCurrentSession().createCriteria(PayDrug.class).list();
    }

    @Override
    public PayDrug getMyPaidDrug(Integer myPayDrugId) {
        return (PayDrug) sessionFactory.getCurrentSession().get(PayDrug.class, myPayDrugId);
    }

    public void purgeMyPaidDrug(PayDrug payDrug)
    {
        sessionFactory.getCurrentSession().delete(payDrug);
    }


    @Override
    public PayDrug saveMyPaidDrug(PayDrug payDrug) {
        sessionFactory.getCurrentSession().save(payDrug);
        return payDrug;
    }
    @Override
    public PayDrug updateMyPaidDrug(PayDrug payDrug) {
        sessionFactory.getCurrentSession().update(payDrug);
        return payDrug;
    }
}
