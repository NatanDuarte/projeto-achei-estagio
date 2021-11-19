
package com.natanduarte.acheiestagio.model;

public class Student {

    private String name;
    private int id;
    private String cpf;
    private String birthDate;

    private String teacherAdvisor;
    private String course;
    private String subject;
    private String phone;

    private Address address;
    private String semester;

    public Student(String name, int id, String cpf, String birthDate,
            Address address) {

        this.name = name;
        this.id = id;
        this.cpf = cpf;
        this.birthDate = birthDate;
        this.address = address;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public String getTeacherAdvisor() {
        return teacherAdvisor;
    }

    public void setTeacherAdvisor(String teacherAdvisor) {
        this.teacherAdvisor = teacherAdvisor;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }
}
