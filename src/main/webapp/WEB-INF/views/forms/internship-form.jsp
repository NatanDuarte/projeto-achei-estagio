<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="app" var="ServletPath" />

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <c:import url="../components/head.jsp" charEncoding="UTF-8"/>
        <title>Achei Estágio</title>
    </head>
    <body class="">
        <c:import url="../components/header.jsp" charEncoding="UTF-8"/>

        <form action="${ServletPath}" method="post">
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <h4 class="header">O Estágio</h4>
                        </div>
                    </div>

                    <div class="col s12 m4">
                        <div class="col s12 m12">
                            <label for="internship-start">data de início</label>
                            <input type="text" name="internship-start" id="internship-start" class="datepicker grey-text">
                        </div>
                        <div class="col s12 m12">
                            <label for="internship-end">data de conclusão</label>
                            <input type="text" name="internship-end" id="internship-end" class="datepicker grey-text">
                        </div>
                    </div>
                    <div class="card col s12 m8">
                        <div class="col s6 m6">
                            <label for="entry-hour">horário de entrada</label>
                            <input type="text" class="timepicker entry-hour" name="entry-hour">
                        </div>
                        <div class="col s6 m6">
                            <label for="">horário de saída</label>
                            <input type="text" class="timepicker quit-hour" name="quit-hour">
                        </div>

                        <div class="col s12 m6">
                            <label>
                                <input type="checkbox" name="non-regular-hours" class="non-regular-hours"/>
                                <span>horários variados</span>
                            </label>
                        </div>
                    </div>
                    <div class="card col s12 m12">
                        <div class="col s12 m12">
                            <div class="input-field col s12">
                                <label for="weekly-workload">Carga horário semanal</label>
                                <input type="text" name="weekly-workload"
                                       disabled class="validate workload" placeholder="00 horas">
                            </div>
                        </div>
                    </div>
                    <div class="col s12 m6">
                        <div class="input-field">
                            <select multiple name="days-selection" class="weekDays">
                              <option value="segunda-feira">Segunda-feira</option>
                              <option value="terca-feira">Terça-feira</option>
                              <option value="quarta-feira">Quarta-feira</option>
                              <option value="quinta-feira">Quinta-feira</option>
                              <option value="sexta-feira">Sexta-feira</option>
                              <option value="sabado">Sábado</option>
                              <option value="domingo">Domingo</option>
                            </select>
                            <label for="days-selection">Dias de trabalho</label>
                        </div>

                        <div class="col s12 m12">
                            <label>
                                <input type="checkbox" name="various-days" class="various-days"/>
                                <span>dias variados</span>
                            </label>
                        </div>
                    </div>
                    <c:if test="${formType.equals('1')}">
                        <div class="col s12 m6">
                            <div class="">
                                <div class="row">
                                    <div class="input-field col s12 m12">
                                        <input type="text" name="scholarshipValue"
                                               class="validade" required>
                                        <label for="scholarshipValue">bolsa auxílio mensal</label>
                                    </div>
                                    <div class="input-field col s12 m12">
                                        <input type="number" name="insurancePolicyNumber"
                                               class="validade" required>
                                        <label for="insurancePolicyNumber">nº da apólice de seguro</label>
                                    </div>
                                    <div class="input-field col s12 m12">
                                        <input type="text" name="insuranceCompany"
                                               class="validade" required>
                                        <label for="insuranceCompany">seguradora/corretora</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:if>
                </div>
            </div>

            <input type="hidden" name="action" value="SaveInternship"/>

            <div class="row container">
                <div class="col right">
                    <button type="submit" class="btn-submit btn grey darken-2 waves-effect waves-orange">
                        enviar
                    </button>
                </div>
            </div>
        </form>

        <c:import url="../components/footer.jsp" charEncoding="UTF-8" />

        <script type="text/javascript" src="./src/js/materialize.min.js"></script>
        <script type="text/javascript" src="./src/js/init.js"></script>
        <script type="text/javascript" src="./src/js/scripts.js"></script>
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                M.Datepicker.init(cash('.datepicker'), {
                    autoClose: true, 
                    format: 'dd/mm/yyyy', 
                    minDate: new Date()
                });
                M.Timepicker.init(cash('.timepicker'), {
                    autoClose: true, 
                    twelveHour: false
                });
            });
        </script>
        <script type="text/javascript" src="./src/js/work-hours-calculator.js"></script>
    </body>
</html>
