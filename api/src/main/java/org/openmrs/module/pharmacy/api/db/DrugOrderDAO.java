package org.openmrs.module.pharmacy.api.db;

import org.openmrs.module.pharmacy.api.OtherModels.DrugOrder;

import java.util.List;

/**
 * Created by kinyua on 5/27/15.
 */
public interface DrugOrderDAO {
    List<DrugOrder> getAllMyDrugOrders();
    DrugOrder getMyDrugOrder(Integer drugId);
    DrugOrder saveMyDrugOrder(DrugOrder drugOrder);
    DrugOrder updateMyDrugOrder(DrugOrder drugOrder);
    void purgeMyDrugOrder(DrugOrder drugOrder);
}
