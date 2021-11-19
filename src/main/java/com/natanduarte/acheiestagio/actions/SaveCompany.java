
package com.natanduarte.acheiestagio.actions;

import com.natanduarte.acheiestagio.model.Address;
import com.natanduarte.acheiestagio.model.Company;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SaveCompany implements Action {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {

        Address address = this.getAddressParameters(request);
        Company company = this.getCompanyParameters(request);
        company.setAddress(address);

        String representativeName = request.getParameter("representative");
        String representativeOffice = request.getParameter("representative_office");

        company.setRepresentativeName(representativeName);
        company.setRepresentativeOffice(representativeOffice);

        String supervisorName = request.getParameter("supervisor_name");
        String supervisorOffice = request.getParameter("supervisor_office");
        String supervisorEmail = request.getParameter("supervisor_email");

        company.setSupervisorName(supervisorName);
        company.setSupervisorOffice(supervisorOffice);
        company.setSupervisorEmail(supervisorEmail);

        HttpSession session = request.getSession();
        session.setAttribute("company", company);

        return "redirect:FormInternship";
    }

    private Address getAddressParameters(HttpServletRequest request) {
        String street = request.getParameter("company_street");
        String district = request.getParameter("company_district");
        String city = request.getParameter("company_city");
        String cep = request.getParameter("company_cep");

        return new Address(street, district, city, cep);
    }

    private Company getCompanyParameters(HttpServletRequest request) {
        String name = request.getParameter("company_name");
        String cnpj = request.getParameter("company_");
        String phone = request.getParameter("company_");
        String email = request.getParameter("company_");

        return new Company(name, cnpj, phone, email);
    }
}
