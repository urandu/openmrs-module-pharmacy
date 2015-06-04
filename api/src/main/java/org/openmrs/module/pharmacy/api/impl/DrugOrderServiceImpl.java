package org.openmrs.module.pharmacy.api.impl;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.api.impl.BaseOpenmrsService;
import org.openmrs.module.pharmacy.api.DrugOrderService;
import org.openmrs.module.pharmacy.api.OtherModels.DrugOrder;
import org.openmrs.module.pharmacy.api.db.DrugOrderDAO;

import java.util.List;

/**
 * Created by kinyua on 5/27/15.
 */
public class DrugOrderServiceImpl extends BaseOpenmrsService implements DrugOrderService {
    protected final Log log = LogFactory.getLog(this.getClass());
    private DrugOrderDAO dao;

    public void setDao(DrugOrderDAO dao) {
        this.dao = dao;
    }

    public DrugOrderDAO getDao() {
        return dao;
    }

    @Override
    public List<DrugOrder> getAllMyDrugOrders() {
        return dao.getAllMyDrugOrders();
    }

    @Override
    public DrugOrder getMyDrugOrder(Integer myDrugId) {
        return dao.getMyDrugOrder(myDrugId);
    }

    @Override
    public DrugOrder saveMyDrugOrder(DrugOrder drugOrder) {
        return dao.saveMyDrugOrder(drugOrder);
    }

    @Override
    public DrugOrder updateMyDrugOrder(DrugOrder drugOrder) {
        return dao.updateMyDrugOrder(drugOrder);
    }

    @Override
    public void purgeMyDrugOrder(DrugOrder drugOrder){
        dao.purgeMyDrugOrder(drugOrder);
    }
}
