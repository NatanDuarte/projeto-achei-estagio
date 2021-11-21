
package com.natanduarte.acheiestagio.actions;

import com.natanduarte.acheiestagio.model.Internship;
import com.natanduarte.acheiestagio.model.ScholarshipAid;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SaveInternship implements Action {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {

        String internshipStart = request.getParameter("internship-start");
        String internshipEnd = request.getParameter("internship-end");
        String daysSelection = request.getParameter("days-of-work");
        String workload = request.getParameter("weekly-workload");
        boolean workVariousDays = Boolean.parseBoolean(request.getParameter("various-days"));
        String entryHour = request.getParameter("entry-hour");
        String quitHour = request.getParameter("quit-hour");
        boolean nonRegularWorkHours = Boolean.parseBoolean(
                request.getParameter("non-regular-hours")
        );

        Internship internship = new Internship(
                internshipStart, internshipEnd, 
                daysSelection, workVariousDays, 
                entryHour, quitHour, nonRegularWorkHours
        );
        internship.setWorkload(workload);

        HttpSession session = request.getSession();
        String formType = (String) session.getAttribute("formType");

        if (formType.equals("1"))
            internship.setAid(this.getScholarshipAidData(request));

        session.setAttribute("internship", internship);

        return "forward:forms/activities-form.jsp";
    }

    private ScholarshipAid getScholarshipAidData(HttpServletRequest request) {
        double scholarshipValue = Double.parseDouble(
                request.getParameter("scholarshipValue")
        );
        int insurancePolicyNumber = Integer.parseInt(
                request.getParameter("insurancePolicyNumber")
        );
        String insuranceCompany = request.getParameter("insuranceCompany");

        ScholarshipAid scholarshipAid = new ScholarshipAid(
                scholarshipValue, insurancePolicyNumber, insuranceCompany
        );

        return scholarshipAid;
    }
}
