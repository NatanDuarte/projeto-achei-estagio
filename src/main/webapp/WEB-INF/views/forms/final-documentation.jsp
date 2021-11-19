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
                    <div class="row">
                        <div class="input-field col s12 m8">
                            <input type="text" name="student_name" class="validade" required>
                            <label for="student_name">Nome Completo</label>
                        </div>

                        <div class="input-field col s12 m4">
                            <input type="number" name="student_id" class="validade" min="0" max="99999" required>
                            <label for="student_id">ID do aluno</label>
                        </div>

                        <div class="input-field col s12 m6">
                            <h5>Ficha de frequência</h5>

                            <form action="#">
                                <div class="file-field input-field">
                                  <div class="btn">
                                    <span>procurar</span>
                                    <input type="file" accept="application/pdf">
                                  </div>
                                  <div class="file-path-wrapper">
                                    <input class="file-path validate" type="text">
                                  </div>
                                </div>
                            </form>
                        </div>

                        <div class="input-field col s12 m6">
                            <h5>Declaração</h5>

                            <form action="#">
                                <div class="file-field input-field">
                                  <div class="btn">
                                    <span>procurar</span>
                                    <input type="file" accept="application/pdf">
                                  </div>
                                  <div class="file-path-wrapper">
                                    <input class="file-path validate" type="text">
                                  </div>
                                </div>
                            </form>
                        </div>
                    </div>


                    <input type="hidden" name="action" value="SendDocumentation"/>

                    <div class="row">
                        <div class="col right">
                            <a href="index.html" class="btn grey darken-2 waves-effect waves-orange">
                                enviar
                            </a>
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