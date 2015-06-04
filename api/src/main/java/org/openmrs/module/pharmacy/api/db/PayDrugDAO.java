package org.openmrs.module.pharmacy.api.db;

import org.openmrs.module.pharmacy.api.OtherModels.PayDrug;

import java.util.List;

/**
 * Created by kinyua on 5/28/15.
 */
public interface PayDrugDAO {
    List<PayDrug> getAllMyPaidDrugs();
    PayDrug getMyPaidDrug(Integer drugId);
    PayDrug saveMyPaidDrug(PayDrug payDrug);
    void purgeMyPaidDrug(PayDrug payDrug);
    PayDrug updateMyPaidDrug(PayDrug payDrug);
}
