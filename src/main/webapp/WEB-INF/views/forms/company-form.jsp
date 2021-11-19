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

        <form action="app?action=SaveCompany" method="post">
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <h4 class="header">A Empresa</h3>
                        </div>
                    </div>
                    <div class="col s12 m6">
                        <div class="card col">
                            <div class="input-field col s12 m12">
                                <input type="text" name="company_name" class="validade" required>
                                <label for="company_name">Razão Social</label>
                            </div>

                            <div class="input-field col s12 m6">
                                <input type="text" name="company_cnpj" class="validade" required>
                                <label for="company_cnpj">CNPJ</label>
                            </div>

                            <div class="input-field col s12 m6">
                                <input type="tel" name="company_phone" class="validade" required>
                                <label for="company_phone">Telefone da Empresa</label>
                            </div>

                            <div class="input-field col s12 m12">
                                <input type="email" name="company_email" class="validade" required>
                                <label for="company_email">e-mail da Empresa</label>
                            </div>
                        </div>
                    </div>

                    <div class="col s12 m6">
                        <div class="card col">
                                <div class="input-field col s12 m12">
                                    <input type="text" name="company_street" class="validade" required>
                                    <label for="company_street">Rua</label>
                                </div>

                                <div class="input-field col s12 m8">
                                    <input type="text" name="company_district" class="validade" required>
                                    <label for="company_district">Bairro</label>
                                </div>

                                <div class="input-field col s12 m4">
                                    <input type="text" name="company_city" class="validade" required>
                                    <label for="company_city">Cidade</label>
                                </div>

                                <div class="input-field col s12 m6">
                                    <input type="text" name="company_cep" class="validade" required>
                                    <label for="company_cep">CEP</label>
                                </div>
                        </div>
                    </div>

                    <div class="col s12 m6">
                        <div class="card col">
                            <div class="col s12 m12">
                                <p>Representante legal</p>
                            </div>

                            <div class="input-field col s12 m12">
                                <input type="text" name="representative" class="validade" required>
                                <label for="representative">Pessoa autorizada para assinatura do TCE</label>
                            </div>

                            <div class="input-field col s12 m6">
                                <input type="text" name="representative_office" class="validade" required>
                                <label for="office">Cargo / Função</label>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col s12 m6">
                        <div class="card col">
                            <div class="col s12 m12">
                                <p>Supervisor</p>
                            </div>

                            <div class="input-field col s12 m12">
                                <input type="text" name="supervisor_name" class="validade" required>
                                <label for="supervisor">nome</label>
                            </div>

                            <div class="input-field col s12 m6">
                                <input type="text" name="supervisor_office" class="validade" required>
                                <label for="supervisor-office">Cargo / Função</label>
                            </div>

                            <div class="input-field col s12 m12">
                                <input type="email" name="supervisor_email" class="validade" required>
                                <label for="supervisor-email">e-mail</label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <input type="hidden" name="action" value="SaveCompany"/>

            <div class="row container">
                <div class="col right">
                    <button type="submit" class="btn grey darken-2 waves-effect waves-orange">
                        próximo
                    </button>
                </div>
            </div>
        </form>

        <c:import url="../components/footer.jsp" charEncoding="UTF-8" />

        <script type="text/javascript" src="./src/js/materialize.min.js"></script>
        <script type="text/javascript" src="./src/js/init.js"></script>
        <script type="text/javascript" src="./src/js/scripts.js"></script>
    </body>
</html>
