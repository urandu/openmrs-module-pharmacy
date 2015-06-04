package org.openmrs.module.pharmacy.api;

import org.openmrs.module.pharmacy.api.OtherModels.DrugOrder;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by kinyua on 5/27/15.
 */
@Transactional
public interface DrugOrderService {
    @Transactional(readOnly = true)
    List<DrugOrder> getAllMyDrugOrders();

    @Transactional(readOnly = true)
    DrugOrder getMyDrugOrder(Integer myDrugOrderId);

    DrugOrder saveMyDrugOrder(DrugOrder drugOrder);

    DrugOrder updateMyDrugOrder(DrugOrder drugOrder);

    void purgeMyDrugOrder(DrugOrder drugOrder);
}

