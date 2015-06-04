package org.openmrs.module.pharmacy.api.db;

import org.openmrs.module.pharmacy.api.OtherModels.DispenseDrug;

import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
public interface DispenseDrugDAO {
    List<DispenseDrug> getAllMyDispensedDrugs();
    DispenseDrug getMyDispensedDrug(Integer drugId);
    DispenseDrug saveMyDispensedDrug(DispenseDrug dispenseDrug);
    DispenseDrug updateMyDispensedDrug(DispenseDrug dispenseDrug);
    void purgeMyDispensedDrug(DispenseDrug dispenseDrug);
    /*List<DispenseDrug> showDrugOrderByTime();*/
}
