package org.openmrs.module.pharmacy.api;

import org.openmrs.module.pharmacy.api.OtherModels.PayDrug;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
public interface PayDrugService {
    @Transactional(readOnly = true)
    List<PayDrug> getAllMyPaidDrugs();

    @Transactional(readOnly = true)
    PayDrug getMyPaidDrug(Integer myPayDrugId);

    PayDrug saveMyPaidDrug(PayDrug payDrug);

    void purgeMyPaidDrug(PayDrug payDrug);
}
