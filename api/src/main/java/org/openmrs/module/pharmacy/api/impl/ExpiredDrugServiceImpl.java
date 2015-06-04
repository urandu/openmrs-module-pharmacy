package org.openmrs.module.pharmacy.api.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.module.pharmacy.ExpiredDrugService;
import org.openmrs.module.pharmacy.api.OtherModels.ExpiredDrug;
import org.openmrs.module.pharmacy.api.db.ExpiredDrugDAO;

import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
public class ExpiredDrugServiceImpl implements ExpiredDrugService {
    protected final Log log = LogFactory.getLog(this.getClass());
    private ExpiredDrugDAO dao;

    public void setDao(ExpiredDrugDAO dao) {
        this.dao = dao;
    }

    public ExpiredDrugDAO getDao() {
        return dao;
    }

    @Override
    public List<ExpiredDrug> getAllMyExpiredDrugs() {
        return dao.getAllMyExpiredDrugs();
    }

    @Override
    public ExpiredDrug getMyExpiredDrug(Integer myDrugId) {
        return dao.getMyExpiredDrug(myDrugId);
    }

    @Override
    public ExpiredDrug updateMyExpiredDrug(ExpiredDrug expiredDrug) {
        return dao.updateMyExpiredDrug(expiredDrug);
    }

    @Override
    public ExpiredDrug saveMyExpiredDrug(ExpiredDrug expiredDrug) {
        return dao.saveMyExpiredDrug(expiredDrug);
    }
    @Override
    public void purgeMyExpiredDrug(ExpiredDrug expiredDrug){
        dao.purgeMyExpiredDrug(expiredDrug);
    }
}
