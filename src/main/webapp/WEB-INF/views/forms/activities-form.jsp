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
        <c:import url="../components/header.jsp" charEncoding="UTF-8"/>

        <main>
            <form action="${ServletPath}" method="POST">
                <div class="container">
                    <div class="card">
                        <div class="row">
                            <div class="col s12 m12">
                                <div class="input-field col s6 m6">
                                    <select name="semester">
                                        <option value="" disabled selected>Semestre Letivo</option>
                                        <option value="2">2º semestre</option>
                                        <option value="3">3º semestre</option>
                                        <option value="4">4º semestre</option>
                                        <option value="5">5º semestre</option>
                                        <option value="6">6º semestre</option>
                                        <option value="7">7º semestre</option>
                                        <option value="8">8º semestre</option>
                                    </select>
                                </div>

                                <div class="input-field col s12 m12">
                                    <div class="row">
                                        <div class="input-field col s12 m12">
                                        <textarea name="activities" class="materialize-textarea"></textarea>
                                        <label for="activities" class="truncate">Descrição das atividades desenvolvidas</label>

                                        <a class="waves-effect waves-light btn modal-trigger" href="#modal1">Dica</a>

                                        <div id="modal1" class="modal">
                                            <div class="modal-content">
                                                <h4>O que devo informar?</h4>
                                                <p class="justify-text">informe detalhadamente, em parágrado único, as atividades que serão executadas, fazendo referência aos conteúdos relacionados com a sua área de formação.</p>
                                            </div>
                                            <div class="modal-footer">
                                                <a href="#!" class="modal-close waves-effect waves-green btn-flat">Entendi!</a>
                                            </div>
                                        </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <input type="hidden" name="action" value="SaveActivities"/>

                    <div class="row">
                        <div class="col right">
                            <button type="submit" class="btn grey darken-2 waves-effect waves-orange">
                                enviar
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </main>

        <c:import url="../components/footer.jsp" charEncoding="UTF-8" />

        <script type="text/javascript" src="./src/js/materialize.min.js"></script>
        <script type="text/javascript" src="./src/js/init.js"></script>
    </body>
</html>