
package com.natanduarte.acheiestagio.model;

public class ScholarshipAid {

    private double scholarshipValue;
    private int insurancePolicyNumber;
    private String insuranceCompany;

    public ScholarshipAid(double scholarshipValue, int insurancePolicyNumber,
            String insuranceCompany) {

        this.scholarshipValue = scholarshipValue;
        this.insurancePolicyNumber = insurancePolicyNumber;
        this.insuranceCompany = insuranceCompany;
    }

    public double getScholarshipValue() {
        return scholarshipValue;
    }

    public void setScholarshipValue(double scholarshipValue) {
        this.scholarshipValue = scholarshipValue;
    }

    public int getInsurancePolicyNumber() {
        return insurancePolicyNumber;
    }

    public void setInsurancePolicyNumber(int insurancePolicyNumber) {
        this.insurancePolicyNumber = insurancePolicyNumber;
    }

    public String getInsuranceCompany() {
        return insuranceCompany;
    }

    public void setInsuranceCompany(String insuranceCompany) {
        this.insuranceCompany = insuranceCompany;
    }
}
