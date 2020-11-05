<!-- 
Resumão do que será estudado:
- Depuração ou teste: isolar e identificar a causa do problema pra poder modifica-lo e corrigir.
- Missão do teste
- Erro, falha ou defeito
- Niveis de teste
- tipos de teste
- Estratégias de teste
- lista de ideias (?)
- Métricas -->
# <center> Testes dinâmicos

<div align="justify">

Lá em [visão geral](testes/visao-geral.md) de testes, no finalzinho, contém uma imagem falando sobre os níveis de teste, objetivos, técnicas e ambientes de testes. Vou fazer uma tabelinha para ficar mais conciso do que se trata cada coisa e abaixo explico melhor o que é cada um, mas cada uma das escolhas é feita nessa ordem: nível > objetivo > técnica > ambiente, uma decisão leva à outra.

| | <center>Nível | <center>Objetivo | <center>Técnica | <center>Ambiente |
|:------:|:------|:---------|:--------|:---------|
| **Dicas** | Quando fazer o teste "tal"? | Dado o nível, qual tipo de teste fazer? | Como fazer? | Onde fazer esse teste? |
| **Tipos** | Unitário;<br>Integração;<br>Funcionais<br>Sistema;<br>Aceitação;<br>Regressão. | Avaliação desempenho;<br>Usabilidade (Stress);<br>Integridade & Segurança;<br>Funções. | Análise de valor limite;<br>Particionamento de equivalência;<br>Caixa-preta;<br>Caixa-branca. | Mainframe;<br>Cliente-servidor;<br>Web;<br>Outros. | 

Dividir os testes em níveis ajuda a evitar redundâncias porque cada nível trata uma classe específica de defeitos e até qual nível você deve ir depende do software que está criando.

Geralmente softwares de empresas e coisas muito grandes vão até testes mais altos, como de sistema e de aceitação. Tudo começa com as características do sistema, elas que vão definir os níveis, técnicas e tipos de testes que serão realizados.<br>
- Teste unitário: se há um pedaço de código desenvolvido, vai testar esse pedaço isoladamente;<br>
- Teste de integração: se há vários pedaços de código, é preciso integrá-los para formar uma funcionalidade;<br> 
<!-- - Teste funcional:  -->
- Teste de sistema: se as funcionalidades existem por completo, testa o sistema como um todo;<br>
- Teste de aceitação: esse teste tem o objetivo de validar o sistema, verificar se todos os requisitos que o usuário queria estão lá.<br>
<!-- - Teste de regressão:  -->




</div>