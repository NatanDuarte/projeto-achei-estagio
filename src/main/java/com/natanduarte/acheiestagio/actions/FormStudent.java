
package com.natanduarte.acheiestagio.actions;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FormStudent implements Action {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {

        HttpSession session = request.getSession();
        session.invalidate();

        HttpSession newSession = request.getSession();
        String formType = request.getParameter("formType");
        newSession.setAttribute("formType", formType);

        return "forward:forms/student-form.jsp";
    }
}
