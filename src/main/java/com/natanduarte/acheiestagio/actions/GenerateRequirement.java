
package com.natanduarte.acheiestagio.actions;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GenerateRequirement implements Action {

    @Override
    public String run(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {

        return "forward:printable-pages/requirement.jsp";
    }
}
