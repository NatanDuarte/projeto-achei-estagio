
package com.natanduarte.acheiestagio.actions;

import com.natanduarte.acheiestagio.model.Internship;
import com.natanduarte.acheiestagio.model.Student;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SaveActivities implements Action {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {

        HttpSession session = request.getSession();
        Internship internship = (Internship) session.getAttribute("internship");
        Student student = (Student) session.getAttribute("student");

        String activities = request.getParameter("activities");
        String semester = request.getParameter("semester");

        internship.setActivities(activities);
        student.setSemester(semester);

        return "redirect:PrintArea";
    }
}
