# <center>Engenharia de Requisitos

<div align="justify">

A Engenharia de Requisitos é uma área de suma relevância para a Engenharia de Software.
Trata-se de uma área de mais alto nível de abstração, ou seja, um pouco mais distante de código.
Mas, ao realizar a Engenharia de Requisitos, deve-se ter pleno conhecimento de que tudo aquilo que está sendo "prometido" ao cliente deverá ser implementado. Caso contrário, não atenderá às expectativas dos clientes.

A estrutura principal da Engenharia de Requisitos, basicamente, envolve:
- Pré-rastreabilidade;
- Elicitação;
- Modelagem;
- Análise, e
- Pós-rastreabilidade.

Dentre as atividades, as três principais são:<br>

**Elicitação**: a preocupação desta atividade é com o levantamento dos requisitos do sistema, sendo uma tarefa a ser realizada junto aos interessados. Essa atividade envolve várias técnicas de elicitação, tais como: brainstorming, questionário, entrevista, introspecção, storytelling, storyboarding, etnografia, dentre outras. Cada técnica tem suas particularidades mas, independente da escolhida, os requisitos elicitados devem ser priorizados, também usando outras técnicas específicas. As mais comuns são: MOSCOW, First Things First e House of Quality (QFD).

**Modelagem**: aqui, a preocupação é modelar da melhor forma possível os requisitos que estão sendo elicitados. Existem várias técnicas de modelagem, a mais tradicional usa a notação UML, modelando os chamados Casos de Uso. Existem as técnicas e os modelos indicados pelas metodologias ágeis, como Backlog do Produto e Backlogs da Sprint.

**Análise**: aqui, a preocupação é avaliar se os requisitos que estão sendo elicitados e modelados estão: de acordo com as notações e níveis de especificação, e com as expectativas dos interessados. Para isso, existem duas subatividades de grande relevância: Verificação e Validação, ambas em alto nível de abstração, ou seja, em Requisitos e não em código.

Todo esse processo precisa ser rastreado, versionado e gerenciado. Por isso eixtsem as atividades de pré e pós rastreabilidade, versionamento e gerência.

**Pré-rastreabilidade**<br>
Trata-se de manter os rastros da linha-base (baseline) de requisitos para o Universo de Informação. Em resumo, o Universo de Informação envolve todas as fontes investigadas na elicitação de requisitos bem como todos os interessados consultados nessa atividade também. Dessa forma, deve-se manter (via modelos ou outras formas de rastros) a ligação dos requisitos com essas fontes e interessados. Normalmente, utilizam-se dois modelos para cumprir essa tarefa de pré-rastreabilidade:
- Rich Picture - ou Figura Rica: esse é um modelo mais informal, ou seja, um desenho feito à mão;
- ACE Framework - ou Grafo de Argumentação: esse é um modelo bem mais formal, onde temos um grafo com todos os argumentos sendo trocados ao longo dos debates e discussões de grupo realizados no processo de elicitação de requisitos.

**Pós-rastreabilidade**<br>
A pós-rastreabilidade serve para manter os rastros da linha-base (baseline) de requisitos até o código. Normalmente, utiliza-se a chamada Matriz de Rastreabilidade - Forward From. Uma forma mais concreta de visualizar essa matriz seria pensar no Backlog do Produto organizado em vários níveis de granularidade: Tema, Épico, Feature, História, Tarefa e Critério/Teste de Aceitação. Ao construir o Backlog do Produto dessa forma, é possível ir de um nível de abstração bem genérico (Tema e Épico, ainda no escopo de requisitos) até um nível de abstração bem concreto (Tarefa e Teste de Aceitação, próximo do código). Além disso, é possível manter elos, links de rastreabilidade, entre esses níveis de abstração, assim, é possível mostrar para o cliente, por exemplo, que um grupo de tarefas foi implementado.

</div>

### 📌 Referências
- [Técnicas de elicitação](http://www.engr.sjsu.edu/fayad/current.courses/cmpe131-spring08/docs/lecture4/Tech-Req-Elicitation-Paper.pdf)
- [Casos de Uso](https://www.uml-diagrams.org/use-case-diagrams.html)
- [Product Backlog](https://www.desenvolvimentoagil.com.br/scrum/product_backlog)
- [Rich Picture](https://www.ics.uci.edu/~wscacchi/Software-Process/Readings/RichPicture.pdf)
- [ACE Framework](https://bdm.unb.br/bitstream/10483/9267/1/2014_AndreCruzAlvesCavalcante.pdf)
<!-- Matriz de Rastreabilidade - Backward From (https://requisitos-2017-2-nubank.github.io/Nubank/siki/rast-back.html). -->
- [Rastreabilidade](http://www.dbd.puc-rio.br/depto_informatica/05_20_sayao.pdf)
- [Priorização de requisitos - Técnica First Thing First](https://www.processimpact.com/articles/prioritizing.pdf)

- Priorização de requisitos - Técnica MoSCoW
<iframe width="560" height="315" src="https://www.youtube.com/embed/DzruAbBhY0Q" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>