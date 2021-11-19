<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="app" var="ServletPath" />

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <c:import url="../components/head.jsp" charEncoding="UTF-8"/>
        <title>Achei Estágio</title>
    </head>
    <body>
        <header class="no-print navbar-fixed">
            <nav>
                <div class="nav-wrapper grey darken-4">
                    <div class="container">
                        <div class="row">
                            <div class="col s6 m6">
                                <a href="index.html" class="left brand-logo truncate">Achei Estágio!</a>
                            </div>
                            <div class="col s6 m6">
                                <a onclick="window.print();" class="waves-effect">
                                    <i class="material-icons">print</i>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </header>

        <div class="container document-mode">
            <div class="row valign-wrapper">
                <div class="col s6 m6">
                    <h5>Plano de estágio</h5>
                </div>

                <div class="col s6 m6">
                    <img src="src\images\unisagrado-logos\unisagrado-transparente-cor.png" alt="" height="180">
                </div>
            </div>

            <div class="row">
                <div class="col s12 m12">
                    <span><b>Estagiário(a):</b> ${student.name}</span>
                </div>

                <c:if test="${formType.equals('0')}">
                    <div class="col s12 m12">
                        <span><b>Curso:</b> ${student.course}</span>
                    </div>
                    
                    <div class="col s12 m12">
                        <span><b>Professor Orientador do Estágio (Unisagrado):</b> ${student.teacherAdvisor}</span>
                    </div>
                </c:if>

                <div class="col s12 m12">
                    <span><b>Unidade Concedente:</b> ${company.name}</span>
                </div>

                <div class="col s12 m12">
                    <span><b>Supervisor do Estágio:</b> ${company.supervisorName}</span>
                </div>

                <div class="col s12 m12">
                    <span><b>Semestre Letivo:</b> ${student.semester}º</span>
                </div>

                <div class="col s12 m12">
                    <span><b>Atividades a Serem Desenvolvidas:</b> ${internship.activities}</span>
                </div>
            </div>

            <div class="row margin-t8">
                <c:if test="${formType.equals('0')}">
                    <div class="col s4 m4">
                        <span> ${student.teacherAdvisor} </span>
                    </div>
                </c:if>

                <div class="col s4 m4">
                    <span> ${student.name} </span>
                </div>

                <div class="col s4 m4">
                    <span> ${company.representativeName} </span>
                </div>
            </div>
        </div>

        <div class="fixed-action-btn no-print">
            <a class="btn-floating btn-large grey darken-3" onclick="window.print();">
                <i class="large material-icons">print</i>
            </a>
        </div>

        <script type="text/javascript" src="./src/js/materialize.min.js"></script>
        <script type="text/javascript" src="./src/js/init.js"></script>
    </body>
</html>
