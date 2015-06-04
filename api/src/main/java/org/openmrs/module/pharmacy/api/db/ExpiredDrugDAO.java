package org.openmrs.module.pharmacy.api.db;

import org.openmrs.module.pharmacy.api.OtherModels.ExpiredDrug;

import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
public interface ExpiredDrugDAO {
    List<ExpiredDrug> getAllMyExpiredDrugs();
    ExpiredDrug getMyExpiredDrug(Integer drugId);
    ExpiredDrug saveMyExpiredDrug(ExpiredDrug expiredDrug);
    ExpiredDrug updateMyExpiredDrug(ExpiredDrug expiredDrug);
    void purgeMyExpiredDrug(ExpiredDrug expiredDrug);
}
