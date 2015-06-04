package org.openmrs.module.pharmacy.api;

import org.openmrs.api.OpenmrsService;
import org.openmrs.module.pharmacy.api.OtherModels.DispenseDrug;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
@Transactional
public interface DispenseDrugService extends OpenmrsService{
    @Transactional(readOnly = true)
    List<DispenseDrug> getAllMyDispensedDrugs();

    @Transactional(readOnly = true)
    DispenseDrug getMyDispensedDrug(Integer myDispenseDrugId);

    DispenseDrug saveMyDispensedDrug(DispenseDrug dispenseDrug);

    DispenseDrug updateMyDispensedDrug(DispenseDrug dispenseDrug);

    void purgeMyDispensedDrug(DispenseDrug dispenseDrug);

    /*@Transactional(readOnly = true)
    List<DispenseDrug> showDrugOrderByTime();*/
}
