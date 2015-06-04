package org.openmrs.module.pharmacy;

import org.openmrs.module.pharmacy.api.OtherModels.ExpiredDrug;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
@Transactional
public interface ExpiredDrugService {
    @Transactional(readOnly = true)
    List<ExpiredDrug> getAllMyExpiredDrugs();

    @Transactional(readOnly = true)
    ExpiredDrug getMyExpiredDrug(Integer myExpiredDrugId);

    ExpiredDrug saveMyExpiredDrug(ExpiredDrug expiredDrug);

    ExpiredDrug updateMyExpiredDrug(ExpiredDrug expiredDrug);

    void purgeMyExpiredDrug(ExpiredDrug expiredDrug);
}

