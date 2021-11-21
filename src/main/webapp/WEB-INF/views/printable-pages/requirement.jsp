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
                    <h5>Requerimento de estágio</h5>
                </div>

                <div class="col s6 m6">
                    <img src="src\images\unisagrado-logos\unisagrado-transparente-cor.png" alt="" height="180">
                </div>
            </div>

            <div class="row">
                <div class="col s12 m12">
                    <span><b>Nome:</b> ${student.name}</span>
                </div>

                <div class="col s12 m12">
                    <span><b>Endereço:</b> ${student.address.street}</span>
                </div>

                <div class="col s4 m4">
                    <span><b>Bairro:</b> ${student.address.district}</span>
                </div>
                <div class="col s4 m4">
                    <span><b>Cidade:</b> ${student.address.city}</span>
                </div>
                <div class="col s4 m4">
                    <span><b>CEP:</b> ${student.address.cep}</span>
                </div>

                <div class="col s12 m12">
                    <span><b>Telefone:</b> ${student.phone}</span>
                </div>

                <c:if test="${formType.equals('0')}">
                    <div class="col s6 m6">
                        <span><b>Curso:</b> ${student.course}</span>
                    </div>
                </c:if>
                <div class="col s6 m6">
                    <span><b>ID:</b> ${student.id}</span>
                </div>

                <div class="col s6 m6">
                    <span><b>CPF:</b> ${student.cpf}</span>
                </div>
                <div class="col s6 m6">
                    <span><b>Data de nascimento:</b> ${student.birthDate}</span>
                </div>
            </div>

            <div class="row">
                <div class="col s12 m12">
                    <span><b>Nome da disciplina:</b> ${student.subject}</span>
                </div>

                <c:if test="${formType.equals('0')}">
                    <div class="col s12 m12">
                        <span><b>Professor Orientador do Estágio (Unisagrado):</b> ${student.teacherAdvisor}</span>
                    </div>
                </c:if>
            </div>


            <div class="row">
                <div class="col s12 m12">
                    <span><b>Razão Social da Unidade Concedente:</b> ${company.name}</span>
                </div>

                <div class="col s12 m12">
                    <span><b>Endereço:</b> ${company.address.street}</span>
                </div>

                <div class="col s4 m4">
                    <span><b>Bairro:</b> ${company.address.district}</span>
                </div>
                <div class="col s4 m4">
                    <span><b>Cidade:</b> ${company.address.city}</span>
                </div>
                <div class="col s4 m4">
                    <span><b>CEP:</b> ${company.address.cep}</span>
                </div>

                <div class="col s6 m6">
                    <span><b>Telefone:</b> ${company.phone}</span>
                </div>

                <div class="col s6 m6">
                    <span><b>CNPJ:</b> ${company.cnpj}</span>
                </div>

                <div class="col s12 m12">
                    <span><b>Nome do representante legal:</b> ${company.representativeName}</span>
                </div>

                <div class="col s12 m12">
                    <span><b>Cargo/Função:</b> ${company.representativeOffice}</span>
                </div>

                <div class="col s6 m6">
                    <span><b>CPF:</b> </span>
                </div>

                <div class="col s12 m12">
                    <span><b>Nome do supervisor da Unidade Concedente:</b> ${company.supervisorName}</span>
                </div>

                <div class="col s6 m6">
                    <span><b>Cargo/Função:</b> ${company.supervisorOffice}</span>
                </div>

                <div class="col s6 m6">
                    <span><b>E-Mail:</b> ${company.supervisorEmail}</span>
                </div>
            </div>

            <div class="row">
                <div class="col s6 m6">
                    <span><b>Perí­odo do estágio:</b> de ${internship.internshipStart} a ${internship.internshipEnd}</span>
                </div>

                <div class="col s6 m6">
                    <span><b>horário:</b> ${internship.entryHours} - ${internship.quitHours}</span>
                </div>

                <div class="col s6 m6">
                    <span><b>Carga horária semanal:</b> ${internship.workload}</span>
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