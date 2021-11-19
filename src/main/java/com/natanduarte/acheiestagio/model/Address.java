
package com.natanduarte.acheiestagio.model;

public class Address {

    private String street;
    private String district;
    private String city;
    private String cep;

    public Address(String street, String district,
            String city, String cep) {
        this.street = street;
        this.district = district;
        this.city = city;
        this.cep = cep;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }
}
