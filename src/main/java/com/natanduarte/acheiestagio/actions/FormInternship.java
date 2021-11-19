
package com.natanduarte.acheiestagio.actions;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormInternship implements Action {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {

        return "forward:forms/internship-form.jsp";
    }
}
