
package com.natanduarte.acheiestagio.model;

public class Company {

    String name;
    String cnpj;
    String phone;
    String email;
    Address address;

    String representativeName;
    String representativeOffice;

    String supervisorName;
    String supervisorOffice;
    String supervisorEmail;

    public Company(String name, String cnpj, String phone, String email) {
        this.name = name;
        this.cnpj = cnpj;
        this.phone = phone;
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getRepresentativeName() {
        return representativeName;
    }

    public void setRepresentativeName(String representativeName) {
        this.representativeName = representativeName;
    }

    public String getRepresentativeOffice() {
        return representativeOffice;
    }

    public void setRepresentativeOffice(String representativeOffice) {
        this.representativeOffice = representativeOffice;
    }

    public String getSupervisorName() {
        return supervisorName;
    }

    public void setSupervisorName(String supervisorName) {
        this.supervisorName = supervisorName;
    }

    public String getSupervisorOffice() {
        return supervisorOffice;
    }

    public void setSupervisorOffice(String supervisorOffice) {
        this.supervisorOffice = supervisorOffice;
    }

    public String getSupervisorEmail() {
        return supervisorEmail;
    }

    public void setSupervisorEmail(String supervisorEmail) {
        this.supervisorEmail = supervisorEmail;
    }
}
