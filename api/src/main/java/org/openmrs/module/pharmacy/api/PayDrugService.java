package org.openmrs.module.pharmacy.api;

import org.openmrs.module.pharmacy.api.OtherModels.PayDrug;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
@Transactional
public interface PayDrugService {
    @Transactional(readOnly = true)
    List<PayDrug> getAllMyPaidDrugs();

    @Transactional(readOnly = true)
    PayDrug getMyPaidDrug(Integer myPayDrugId);

    PayDrug saveMyPaidDrug(PayDrug payDrug);

    PayDrug updateMyPaidDrug(PayDrug payDrug);

    void purgeMyPaidDrug(PayDrug payDrug);
}
