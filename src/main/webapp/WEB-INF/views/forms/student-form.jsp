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

        <form action="${ServletPath}" method="POST">
            <div class="">
                <div class="row">
                    <div class="col s12">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <h4>Dados do Aluno</h4>
                                </div>
                            </div>
                                <div class="row">
                                    <div class="col s12 m6">
                                        <div class="input-field col s12 m8">
                                            <input type="text" name="student_name" class="validade" required>
                                            <label for="student_name">Nome Completo</label>
                                        </div>

                                        <div class="input-field col s12 m4">
                                            <input type="text" name="student_id" id="student_id" class="validade" min="0" max="99999" required>
                                            <label for="student_id">ID do aluno</label>
                                        </div>

                                        <div class="input-field col s12 m12">
                                            <input type="text" name="student_cpf" id="cpf" class="validade" required>
                                            <label for="student_cpf">CPF</label>
                                        </div>

                                        <div class="input-field col s12 m6">
                                            <input type="date" name="birth_date" class="validade" required>
                                            <label for="birth_date">Data de nascimento</label>
                                        </div>
                                        
                                        <div class="input-field col s12 m8">
                                            <input type="tel" name="student_phone" id="phone" class="validade" required>
                                            <label for="student_phone">Telefone</label>
                                        </div>
                                    </div>
                                    <div class="col s12 m6">
                                        <div class="input-field col s12 m12">
                                            <input type="text" name="student_street" class="validade" required>
                                            <label for="student_street">Rua</label>
                                        </div>

                                        <div class="input-field col s12 m12">
                                            <input type="text" name="student_district" class="validade" required>
                                            <label for="student_district">Bairro</label>
                                        </div>
                                        <div class="input-field col s12 m12">
                                            <input type="text" name="student_city" class="validade" required>
                                            <label for="student_city">Cidade</label>
                                        </div>
                                        <div class="input-field col s12 m6">
                                            <input type="text" name="student_cep" id="cep" class="validade" required>
                                            <label for="student_cep">CEP</label>
                                        </div>
                                    </div>

                                    <c:if test="${formType.equals('0')}">
                                        <div class="col s12 m12">
                                            <div class="input-field col s12 m12">
                                                <input type="text" name="advisor" id="advisor" class="validade" required>
                                                <label for="advisor" class="truncate">Professor Orientador do Estágio</label>
                                            </div>
                                            <div class="input-field col s12 m12">
                                                <select name="course">
                                                    <optgroup label="Ciências Exatas e Aplicadas">
                                                        <option value="Administração">Administração</option>
                                                        <option value="Arquitetura">Arquitetura</option>
                                                        <option value="Arquitetura e Urbanismo">Arquitetura e Urbanismo</option>
                                                        <option value="Ciência da Computação">Ciência da Computação</option>
                                                        <option value="Ciências Contábeis">Ciências Contábeis</option>
                                                        <option value="Design">Design</option>
                                                        <option value="Design de Moda">Design de Moda</option>
                                                        <option value="Engenharia Agronômica">Engenharia Agronômica</option>
                                                        <option value="Engenharia Civil">Engenharia Civil</option>
                                                        <option value="Engenharia de Produção">Engenharia de Produção</option>
                                                        <option value="Engenharia Elétrica">Engenharia Elétrica</option>
                                                        <option value="Engenharia Mecânica">Engenharia Mecânica</option>
                                                        <option value="Engenharia Química">Engenharia Química</option>
                                                        <option value="Jogos Digitais">Jogos Digitais</option>
                                                    </optgroup>
                                                    <optgroup label="Ciências Humanas e Sociais">
                                                        <option value="Artes">Artes</option>
                                                        <option value="Educação Física">Educação Física</option>
                                                        <option value="História">História</option>
                                                        <option value="Jornalismo">Jornalismo</option>
                                                        <option value="Letras - Português e inglês - Licenciatura">Letras - Português e inglês - Licenciatura</option>
                                                        <option value="Letras - Tradutor - Bacharelado">Letras - Tradutor - Bacharelado</option>
                                                        <option value="Matemática">Matemática</option>
                                                        <option value="Pedagogia">Pedagogia</option>
                                                        <option value="Pedagogia para Licenciatura">Pedagogia para Licenciatura</option>
                                                        <option value="Publicidade e Propaganda">Publicidade e Propaganda</option>
                                                        <option value="Relações Internacionais">Relações Internacionais</option>
                                                        <option value="Teatro">Teatro</option>
                                                    </optgroup>
                                                    <optgroup label="Ciências da Saúde">
                                                        <option value="Biomedicina">Biomedicina</option>
                                                        <option value="Ciências Biológicas Bacharelado">Ciências Biológicas Bacharelado</option>
                                                        <option value="Ciências Biológicas Licenciatura">Ciências Biológicas Licenciatura</option>
                                                        <option value="Enfermagem">Enfermagem</option>
                                                        <option value="Estética e Cosmética">Estética e Cosmética</option>
                                                        <option value="Farmácia">Farmácia</option>
                                                        <option value="Fisioterapia">Fisioterapia</option>
                                                        <option value="Gastronomia">Gastronomia</option>
                                                        <option value="Nutrição">Nutrição</option>
                                                        <option value="Odontologia">Odontologia</option>
                                                    </optgroup>
                                                </select>
                                                <label>Curso</label>
                                            </div>

                                            <div class="input-field col s12 m12">
                                                <input type="text" name="subject_name" class="validade" required>
                                                <label for="subject_name">Nome da disciplina</label>
                                            </div>
                                        </div>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <input type="hidden" name="action" value="SaveStudent" required/>

                <div class="row container">
                    <div class="col right">
                        <button type="submit" class="btn grey darken-2 waves-effect waves-orange">
                            próximo
                        </button>
                    </div>
                </div>
            </div>
        </form>

        <c:import url="../components/footer.jsp" charEncoding="UTF-8"/>

        <script type="text/javascript" src="./src/js/materialize.min.js"></script>
        <script type="text/javascript" src="./src/js/init.js"></script>
        <script type="text/javascript" src="./src/js/scripts.js"></script>
        <script type="text/javascript" src="./src/js/regex-masks.js"></script>
    </body>
</html>
