package org.openmrs.module.pharmacy.api.OtherModels;

import org.openmrs.BaseOpenmrsObject;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

/**
 * Created by kinyua on 5/28/15.
 */
public class PayDrug extends BaseOpenmrsObject implements Serializable {
    private static final long serialVersionUID = 1L;
    private Integer id;
    private Integer patientID;
    private float totalAmount;
    private boolean paid;
    private Date dateOfPayment;

    public Set<PayDrug> getMyPaidDrugs() {
        return myPaidDrugs;
    }

    public void setMyPaidDrugs(Set<PayDrug> myPaidDrugs) {
        this.myPaidDrugs = myPaidDrugs;
    }

    private Set<PayDrug> myPaidDrugs;

    public Date getDateOfPayment() {
        return dateOfPayment;
    }

    public void setDateOfPayment(Date dateOfPayment) {
        this.dateOfPayment = dateOfPayment;
    }

    @Override
    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPatientID() {
        return patientID;
    }

    public void setPatientID(Integer patientID) {
        this.patientID = patientID;
    }

    public float getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(float totalAmount) {
        this.totalAmount = totalAmount;
    }

    public boolean isPaid() {
        return paid;
    }

    public void setPaid(boolean paid) {
        this.paid = paid;
    }
}
