
package com.natanduarte.acheiestagio.actions;

import com.natanduarte.acheiestagio.model.Address;
import com.natanduarte.acheiestagio.model.Student;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SaveStudent implements Action {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {

        Address address = this.getAddressParameters(request);
        Student student = this.getStudentParameters(request, address);

        HttpSession session = request.getSession();
        String formType = (String) session.getAttribute("formType");

        if (formType.equals("0")) {
            student.setTeacherAdvisor(request.getParameter("advisor"));
            student.setCourse(request.getParameter("course"));
            student.setSubject(request.getParameter("subject_name"));
        }

        session.setAttribute("student", student);
        return "redirect:FormCompany";
    }

    private Address getAddressParameters(HttpServletRequest request) {
        String street = request.getParameter("student_street");
        String district = request.getParameter("student_district");
        String city = request.getParameter("student_city");
        String cep = request.getParameter("student_cep");

        return new Address(street, district, city, cep);
    }

    private Student getStudentParameters(HttpServletRequest request, 
            Address address) throws ServletException {

        String name = request.getParameter("student_name");
        int id = Integer.parseInt(request.getParameter("student_id"));
        String cpf = request.getParameter("student_cpf");

        String birthDate = request.getParameter("birth_date");

        return new Student(name, id, cpf, birthDate, address);
    }
}
