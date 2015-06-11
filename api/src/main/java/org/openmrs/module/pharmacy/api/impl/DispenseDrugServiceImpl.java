package org.openmrs.module.pharmacy.api.impl;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.api.impl.BaseOpenmrsService;
import org.openmrs.module.pharmacy.api.DispenseDrugService;
import org.openmrs.module.pharmacy.api.OtherModels.DispenseDrug;
import org.openmrs.module.pharmacy.api.db.DispenseDrugDAO;

import java.util.Date;
import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
public class DispenseDrugServiceImpl extends BaseOpenmrsService implements DispenseDrugService {
    protected final Log log = LogFactory.getLog(this.getClass());
    private DispenseDrugDAO dao;

    public void setDao(DispenseDrugDAO dao) {
        this.dao = dao;
    }

    public DispenseDrugDAO getDao() {
        return dao;
    }

    @Override
    public List<DispenseDrug> getAllMyDispensedDrugs() {
        return dao.getAllMyDispensedDrugs();
    }

    @Override
    public DispenseDrug getMyDispensedDrug(Integer myDrugId) {
        return dao.getMyDispensedDrug(myDrugId);
    }

    @Override
    public DispenseDrug updateMyDispensedDrug(DispenseDrug dispenseDrug) {
        return dao.updateMyDispensedDrug(dispenseDrug);
    }

    @Override
    public DispenseDrug saveMyDispensedDrug(DispenseDrug dispenseDrug) {
        return dao.saveMyDispensedDrug(dispenseDrug);
    }

    @Override
    public void purgeMyDispensedDrug(DispenseDrug dispenseDrug){
        dao.purgeMyDispensedDrug(dispenseDrug);
    }

    @Override
    public List <DispenseDrug> getDispensedDrugForPatient(Integer patientId){
                return dao.getDispensedDrugForPatient(patientId);
            }
    public List<DispenseDrug> getDispensedDrugForDrug(Integer drugId){
        return dao.getDispensedDrugForDrug(drugId);
    }

    public List <DispenseDrug> getDispensedDrugForPatientIfPaid(Integer patientId,boolean bool){
        return dao.getDispensedDrugForPatientIfPaid(patientId,bool);
    }
   @Override
    public List<DispenseDrug> showDispensedDrugByTime(Date minDate,Date maxDate){
        return dao.showDispensedDrugByTime(minDate,maxDate);
    }

}
