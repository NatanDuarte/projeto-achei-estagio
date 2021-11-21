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

        <div class="row justify-text">
            <div class="col s12 m12">
                <section>
                    <p>Pelo presente instrumento particular e na melhor forma de direito, as partes a seguir nomeadas:</p>

                    <p>Instituição de Ensino: IASCJ - CENTRO UNIVERSITÁRIO SAGRADO CORAÇÃO – UNISAGRADO, associação civil de assistência social, cultural e educacional, declarada de utilidade pública e de fins não lucrativos, inscrita no CNPJ: 61.015.087/0008-31, com sede na Rua Irmã Arminda, 10-50, Jd. Brasil, Bauru/SP, CEP: 17011-160, fone: (14) 2107-7000, site: www.unisagrado.edu.br, neste ato representado por Flavia Dias Gomes, assistente administrativo.</p>
                </section>

                <section>
                    <h5>Concedente do Estágio:</h5>
                    <table>
                        <tbody>
                            <tr>
                                <th><b>Razão social:</b></th>
                                <th>${company.name}</th>
                            </tr>
                            <tr>
                                <th><b>Endereço:</b></th>
                                <th>${company.address.street}</th>
                                <th><b>Bairro:</b></th>
                                <th>${company.address.district}</th>
                            </tr>
                            <tr>
                                <th><b>CEP:</b></th>
                                <th>${company.address.cep}</th>
                                <th><b>Fone:</b></th>
                                <th>${company.phone}</th>
                            </tr>
                            <tr>
                                <th><b>CNPJ:</b></th>
                                <th>${company.cnpj}</th>
                                <th>Cidade/UF:</th>
                                <th>${company.address.city}</th>
                            </tr>
                            <tr>
                                <th><b>Representado por</b></th>
                                <th>${company.representativeName}</th>
                                <th><b>Cargo:</b></th>
                                <th>${company.representativeOffice}</th>
                            </tr>
                            <tr>
                                <th><b>Representante pelo estágio na empresa (Supervisor local):</b></th>
                                <th>${company.supervisorName}</th>
                                <th><b>Cargo:</b></th>
                                <th>${company.supervisorOffice}</th>
                            </tr>
                            <tr>
                                <th><b>E-mail:</b></th>
                                <th>${company.email}</th>
                            </tr>
                        </tbody>
                    </table>
                </section>

                <section>
                    <h5>Estágio(a):</h5>
                    <table>
                        <tbody>
                            <tr>
                                <th><b>Nome:</b></th>
                                <th>${student.name}</th>
                            </tr>
                            <tr>
                                <th><b>Endereço:</b></th>
                                <th>${student.address.street}</th>
                                <th><b>Cidade:</b></th>
                                <th>${student.address.city}</th>
                            <tr>
                                <th><b>Fone:</b></th>
                                <th>${student.phone}</th>
                            </tr>
                            <c:if test="${formType.equals('0')}">
                                <tr>
                                    <th><b>Curso:</b></th>
                                    <th>${student.course}</th>
                                </tr>
                                <tr>
                                    <th><b>Estágio</b></th>
                                    <th>${student.subject}</th>
                                </tr>
                            </c:if>
                        </tbody>
                    </table>
                </section>

                <section>
                    <p>Celebram entre si este TERMO DE COMPROMISSO DE ESTÁGIO OBRIGATÓRIO, convencionando as cláusulas e condições seguintes:</p>

                    <p><b>CLÁUSULA 1ª –</b>Este instrumento tem por objetivo formalizar as condições básicas para a realização de estágio de estudante, com interveniência e assinatura da INSTITUIÇÃO DE ENSINO e particularizar a relação jurídica especial
                        existente entre o(a) ESTUDANTE e a CONCEDENTE, caracterizando a não vinculação empregatícia, nos termos da legislação vigente.</p>
    
                    <p><b>CLÁUSULA 2ª –</b>O referido <b>estágio obrigatório</b> é de interesse curricular e pedagogicamente útil, entendido o estágio como uma atividade de aprendizagem social, profissional e cultural, compatíveis com o contexto básico da
                        profissão, ao qual seu curso se refere e integra o Processo de Ensino Aprendizagem, nos termos da Lei 11.788/08 e da Lei nº. 9.394/96 (Diretrizes e Bases da Educação Nacional) e sua regulamentação.</p>
    
                    <p><b>CLÁUSULA 3ª –</b>Ficam compromissadas entre as partes as seguintes condições para a realização do Estágio: a) As atividades de estágio a serem cumpridas pelo(a) estagiário(a) serão desenvolvidas pelo período de:${internship.internshipStart} até ${internship.internshipEnd}
                        , podendo ser prorrogada dentro do semestre, nos termos da Cláusula 10ª do presente termo. b) Dias da semana: ${internship.daysSelection}. Horário: ${internship.entryHours} as ${internship.quitHours}, totalizando ${internship.workload} semanais, de forma compatível com o horário escolar do(a) estagiário(a).
                        c) Fica sob o encargo da INSTITUIÇÃO DE ENSINO, nos termos do art. 9º., IV e parágrafo único da Lei 11.788/08, a efetivação de contrato de seguro para acidentes pessoais ao(a) estagiário(a), conforme Apólice de Seguro nº: 2000683-
                        Seguradora/Corretora: Delcossa Acidentes Pessoais. d) Atividades do estágio: em anexo.</p>
                    <p><b>CLÁUSULA 4ª –</b> Durante a realização do presente <b>estágio obrigatório </b>não haverá qualquer tipo de contraprestação pecuniária concedida pela UNIDADE CONCEDENTE ao supracitado ESTAGIÁRIO(A), nos moldes do art. 12 da Lei 11.788/08.</p>
    
                    <p><b>CLÁUSULA 5ª –</b>Na vigência do presente Termo, o(a) ESTAGIÁRIO(A) está incluído(a) na cobertura do Seguro contra Acidentes Pessoais, nos termos da alínea “c” da Cláusula 3ª do presente pacto.</p>
    
                    <p><b>CLÁUSULA 6ª –</b>Cabe à INSTITUIÇÃO DE ENSINO, nos termos do artigo 7º da Lei 11.788/08:</p>
                    <p>a) Avaliar as instalações da parte concedente do estágio e sua adequação à formação cultural e profissional do educando; </p>
                    <p>b) Indicar professor(a) orientador(a), da área a ser desenvolvida no estágio, como responsável pelo acompanhamento e avaliação das atividades do(a) ESTAGIÁRIO(A); </p>
                    <p>c) Acompanhar, orientar e avaliar o estágio, visando à complementação do ensino e da aprendizagem; </p>
                    <p>d) Elaborar normas complementares e instrumentos de avaliação dos estágios de seus educandos; </p>
                    <p>e) Exigir do educando a apresentação periódica, em prazo não superior a seis (06) meses, de relatório das atividades; </p>
                    
    
                    <p><b>CLÁUSULA 7ª –</b> Cabe à CONCEDENTE:</p>
                    <p>a) Proporcionar ao(a) ESTAGIÁRIO(A) atividades de aprendizagem social, profissional e cultural, compatível com o Curso;</p>
                    <p>b) Proporcionar à instituição de ensino, sempre que solicitado, subsídios que possibilitem o acompanhamento, a supervisão e avaliação do estágio;</p>
                    <p>c) Enviar relatório de atividades à instituição de ensino com vista obrigatória ao(a) ESTAGIÁRIO(A), com periodicidade mínima de 6 (seis) meses, bem como na conclusão do estágio, ou, se for o caso, na rescisão antecipada do presente
                        Termo de Compromisso de Estágio;</p>
                    <p>d) Indicar funcionário de seu quadro de pessoal, com formação ou experiência profissional na área de conhecimento desenvolvida no curso do estagiário, para orientar e supervisionar o estudante;</p>
                    <p>e) Solicitar ao(a) ESTAGIÁRIO(A), a qualquer tempo, documentos comprobatórios da regularidade da situação escolar, uma vez que o abandono, a desistência, a transferência do curso ou o trancamento da matrícula constituem motivos de
                        imediata rescisão.</p>
    
                    <p><b>CLÁUSULA 8ª – </b>Cabe ao(a) ESTAGIÁRIO(A):</p>
                    <p>a) Cumprir, com todo empenho e interesse, toda programação estabelecida para seu estágio;</p>
                    <p>b) Observar e obedecer às normas internas da CONCEDENTE;</p>
                    <p>c) Apresentar documentos comprobatórios da regularidade da sua situação escolar, sempre que solicitado pelas partes;</p>
                    <p>d) Manter rigorosamente atualizado seus dados cadastrais e escolares, junto à INSTITUIÇÃO DE ENSINO e CONCEDENTE;</p>
                    <p>e) Informar de imediato, qualquer alteração na sua situação escolar, tais como o abandono, a desistência, a transferência do curso ou o trancamento da matrícula à CONCEDENTE do estágio;</p>
                    <p>f) Encaminhar, obrigatoriamente, à INSTITUIÇÃO DE ENSINO e à CONCEDENTE, uma via do presente instrumento, devidamente assinado pelas partes;</p>
                    <p>g) Preencher, obrigatoriamente, o Relatório de Acompanhamento do Estágio, referente às suas atividades, entregando-o à CONCEDENTE e à INSTITUIÇÃO DE ENSINO até o prazo final para a inserção das notas no Diário de Classe Online</p>
                    <p>h) Se compromete o(a) aluno(a)-estagiário(a) a comparecer no respectivo local de estágio sob suas próprias expensas;</p>
                    <p>i) Responder civil e/ou criminalmente pelos danos por ele(a) causado nas dependências da CONCEDENTE.</p>
    
                    <p><b>CLÁUSULA 9ª –</b>Os Supervisores da INSTITUIÇÃO DE ENSINO e da CONCEDENTE possuem a atribuição de organizar, supervisionar, acompanhar, aprovar e viabilizar a realização do objeto do presente convênio, de forma que, em campo, os
                        estágios e o aprimoramento do(a) aluno(a) alcancem o melhor desempenho possível.</p>
    
                    <p><b>CLÁUSULA 10ª –</b> O presente instrumento terá duração de, no máximo, um (01) semestre letivo, não podendo ser prorrogado pela natureza do estágio.</p>
                    <p><b>Parágrafo Primeiro -</b>O estudante poderá cumprir jornada de, no máximo, seis (06) horas diárias e trinta (30) semanais.</p>
                    <p><b>Parágrafo Segundo –</b>O não cumprimento de quaisquer cláusulas presentes no TERMO DE COMPROMISSO DE ESTÁGIO constitui motivos de imediata rescisão.</p>
    
                    <p><b>CLÁUSULA 11ª –</b>Havendo necessidade de rescisão contratual por qualquer das partes, deverá o(a) interessado(a) comunicar a intenção de fazê-lo previamente, por escrito, com pelo menos 10 (dez) dias de antecedência.</p>
    
                    <p><b>CLÁUSULA 12ª –</b>Os beneficiários de tal pacto não possuirão qualquer privilégio além dos previstos para os demais estudantes da INSTITUIÇÃO DE ENSINO.</p>
    
                    <p><b>CLÁUSULA 13ª – </b>Não será concedido gratuidade ou desconto por parte da INSTITUIÇÃO DE ENSINO em taxas acadêmicas e de biblioteca.</p>
    
                    <p><b>CLÁUSULA 14ª –</b>Só poderão participar do presente termo de compromisso de estágio o(a) estudante que esteja em situação regular perante à INSTITUIÇÃO DE ENSINO.</p>
    
                    <p><b>CLÁUSULA 15ª –</b>A eventual tolerância da INSTITUIÇÃO DE ENSINO não implicará novação, perdão, renúncia, alteração ou modificação do presente pacto, sendo o evento ou omissão considerados, para os fins de direito, como mera liberalidade
                        da INSTITUIÇÃO DE ENSINO, não implicando, na renúncia ou desistência de exigir o cumprimento das disposições aqui contidas ou do direito de requerer a total execução de cada uma das obrigações contidas neste contrato.</p>
    
                    <p><b>CLÁUSULA 16ª –</b> Fica eleito o Foro da Comarca de Bauru/SP, para dirimir qualquer questão resultante deste pacto.</p>
                </section>

                <section>
                    <p>E, por estarem de inteiro e comum acordo com as condições estabelecidas neste TERMO DE COMPROMISSO DE ESTÁGIO OBRIGATÓRIO, as partes o assinam em três (03) vias de igual teor.</p>

                    <p>Bauru,______ de _________ de ________.</p>

                    <div class="center">
                        <p>IASCJ - CENTRO UNIVERSITÁRIO SAGRADO CORAÇÃO - UNISAGRADO</p>
                        <p>FLÁVIA DIAS GOMES</p>
                        <p>ASSISTENTE ADMINISTRATIVO</p>

                        <div class="row">
                            <section class="col m6">
                                <p>${company.name}</p>
                            </section>
                            <section class="col m6">
                                <p>${company.representativeName}</p>
                                <p>cargo: ${company.supervisorOffice}</p>
                            </section>
                        </div>

                        <div class="row">
                            <section class="col m4">
                                <p>${student.name}</p>
                                <p>______________________________</p>
                            </section>
    
                            <section class="col m4">
                                <p>1ª Testemunha</p>
                                <p>CPF/MF: ________________________</p>
                            </section>
    
                            <section class="col m4">
                                <p>2ª Testemunha</p>
                                <p>CPF/MF: ________________________</p>
                            </section>
                        </div>
                    </div>
                </section>
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