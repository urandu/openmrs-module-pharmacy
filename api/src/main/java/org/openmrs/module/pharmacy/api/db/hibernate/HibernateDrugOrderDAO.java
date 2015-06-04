package org.openmrs.module.pharmacy.api.db.hibernate;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.pharmacy.api.OtherModels.DrugOrder;
import org.openmrs.module.pharmacy.api.db.DrugOrderDAO;

import java.util.List;

/**
 * Created by kinyua on 5/27/15.
 */
public class HibernateDrugOrderDAO implements DrugOrderDAO {
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
    public List<DrugOrder> getAllMyDrugOrders() {
        return sessionFactory.getCurrentSession().createCriteria(DrugOrder.class).list();
    }

    @Override
    public DrugOrder getMyDrugOrder(Integer myDrugOrderId) {
        return (DrugOrder) sessionFactory.getCurrentSession().get(DrugOrder.class, myDrugOrderId);
    }

    public void purgeMyDrugOrder(DrugOrder drugOrder)
    {
        sessionFactory.getCurrentSession().delete(drugOrder);
    }


    @Override
    public DrugOrder saveMyDrugOrder(DrugOrder drugOrder) {
        sessionFactory.getCurrentSession().save(drugOrder);
        return drugOrder;
    }

    @Override
    public DrugOrder updateMyDrugOrder(DrugOrder drugOrder) {
        sessionFactory.getCurrentSession().update(drugOrder);
        return drugOrder;
    }
}
