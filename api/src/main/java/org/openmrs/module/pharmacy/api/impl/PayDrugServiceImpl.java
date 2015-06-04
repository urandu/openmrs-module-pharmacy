package org.openmrs.module.pharmacy.api.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.module.pharmacy.api.OtherModels.PayDrug;
import org.openmrs.module.pharmacy.api.PayDrugService;
import org.openmrs.module.pharmacy.api.db.PayDrugDAO;

import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
public class PayDrugServiceImpl implements PayDrugService {
    protected final Log log = LogFactory.getLog(this.getClass());
    private PayDrugDAO dao;

    public void setDao(PayDrugDAO dao) {
        this.dao = dao;
    }

    public PayDrugDAO getDao() {
        return dao;
    }

    @Override
    public List<PayDrug> getAllMyPaidDrugs() {
        return dao.getAllMyPaidDrugs();
    }

    @Override
    public PayDrug getMyPaidDrug(Integer myDrugId) {
        return dao.getMyPaidDrug(myDrugId);
    }

    @Override
    public PayDrug updateMyPaidDrug(PayDrug payDrug) {
        return dao.updateMyPaidDrug(payDrug);
    }

    @Override
    public PayDrug saveMyPaidDrug(PayDrug payDrug) {
        return dao.saveMyPaidDrug(payDrug);
    }

    @Override
    public void purgeMyPaidDrug(PayDrug payDrug){
        dao.purgeMyPaidDrug(payDrug);
    }
}
