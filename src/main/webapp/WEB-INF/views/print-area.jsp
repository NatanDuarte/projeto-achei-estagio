<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="app" var="ServletPath" />

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <c:import url="components/head.jsp" charEncoding="UTF-8"/>
        <title>Achei Estágio</title>
    </head>
    <body>
        <c:import url="components/header.jsp" charEncoding="UTF-8"/>

        <main role="main">

            <div class="container">
                <div class="row">
                    <div class="col s12 m12">

                        <div class="card">
                            <div class="collection with-header">
                                <li class="collection-header"><h5>Imprimir</h5></li>
                                <a href="app?action=GenerateRequirement" class="collection-item">Requerimento de estágio</a>
                                <a href="app?action=GenerateInternshipPlan" class="collection-item">Plano de estágio</a>
                                <a href="app?action=GenerateCommitmentTerm" class="collection-item">Termo de compromisso</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </main>

        <c:import url="components/footer.jsp" charEncoding="UTF-8" />

        <script type="text/javascript" src="./src/js/materialize.min.js"></script>
        <script type="text/javascript" src="./src/js/init.js"></script>
    </body>
</html>
