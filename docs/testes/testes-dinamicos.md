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

## <center>Nível de teste
Geralmente softwares de empresas e coisas muito grandes vão até testes mais altos, como de sistema e de aceitação. Tudo começa com as características do sistema, elas que vão definir os níveis, técnicas e tipos de testes que serão realizados.<br>

**Teste unitário:** se há um pedaço de código desenvolvido, vai testar esse pedaço isoladamente;<br>
- Técnica mais usada: _White Box_;
- Foco: testar algoritmos e técnicas de programação;
- Propósitos: gerenciar os elementos de teste, começando pela menor unidade; facilitar o processo de depuração (localização do defeito); e permitir paralelismo de atividades. 
- Framework mais conhecido: JUNIT. Permite testar uma única classe ou criar uma suite de testes. Praticamente todas as linguagens tem seus frameworks pra testes.

**Teste de integração:** se há vários pedaços de código, é preciso integrá-los para formar uma funcionalidade;
- Técnica mais usada: abordagem _top-down_, _bottom up_ ou mista;
- Caso não tenha todos os componentes finalizados no momento do teste, pode-se criar componentes (drives e stubs, mais conhecidos como MOCKS) que simulam o funcionamento e a interface do produto testado;
- Um stub não implementam nenhuma lógica, eles só determinam um conjunto de valores (é só estímulo - resposta). Substitui temporariamente o componente que tem que participar do teste;
- O driver é a chamada do componente a ser testado, que pode não estar pronto também, então, ele é o simulador das chamadas dos componentes pros testes (tipo a main de um programa).

**Teste funcional:** servem pra validar as funções ou componentes do software;
- Podem ocorrer em nível de unidade, de integração, de sistema ou de aceitação;
- Às vezes chamados de testes de sistema.

**Teste de sistema:** se as funcionalidades existem por completo, testa o sistema como um todo;
- Verifica se os componentes operam conforme o especificado para realizar uma funcionalidade;
- Propósito: encontrar discrepâncias entre o software e as especificações de requisitos;
- Técnica mais usada: _black box_;

**Teste de aceitação:** esse teste tem o objetivo de validar o sistema, verificar se todos os requisitos que o usuário queria estão lá.
- Costumam ser voltados para os requisitos de contrato;
- Realizados pelos clientes e usuários finais;

**Teste de regressão:** são aqueles feitos DEPOIS que realizada alguma melhoria ou reparo no sistema, para verificar se as coisas continuam funcionando como estavam antes da mudança.
- São feitos pela reexecução de um conjunto de testes já realizados;
- Devem ser super planejados quando a execução (5W2H - O que, quem, como, quando, porque);

**Testes não-funcionais:** vai testar as características que fazem o sistema funcionar.
- teste de volume;
- teste de stress;
- teste de performance;
- teste de instalação, etc;

## <center>Técnicas de teste

**Caixa Branca:** testa a estrutura interna de um componente. Verifica se o código foi implementado como planejado.
- Execução de cada bloco pelo menos uma vez;
- Execução de cada ramo condicional;
- Execução de caminhos com valores dentro e fora dos limites;
- Verificação da estrutura de dados; 

**Caixa Preta:** vai observar a relação de entrada e saída, por isso é usada muito no testes de sistema, porque lá já tem componentes prontos. Não leva em conta a estrutura interna, ou seja, o caminho que o dado percorreu pra executar aquela função, esse teste se interessa apenas pelo conjunto de entradas e saídas.
- Valida a integridade funcional em relação ao estímulo externo;
- Valida todas as interfaces externas através de uma faixa de condições normais e anômalas;
- Valida a capacidade do sistema de se recuperar ou minimizar os efeitos de algo inesperado;
- Vailda a habilidade do sistema em condições de stress.

**Particionamento de equivalência:** serve para decompor entradas possíveis que façam o software mudar o comportamento, ou seja, definir um intervalo que deve ser testado. Ex.: o software se comporta se tal forma se a pessoa já for cadastrada no sistema, e se comporta de outra forma se a pessoa não for cadastrada.

Como fazer uma boa partição de equivalência:
- decompor o programa em funções;
- identificar as variáveis e os comportamentos dessas funções;
- particionar os valores dessas variáveis em classes de equivalência (quando terão os valore válidos e quando terão valores inválidos);
- pegar apenas uma condição de cada caso porque o software deve se comportar da mesma forma para condições da mesma partição;
- excluir casos impossíveis ou desinteressantes.

**Análise do valor limite:** essa técnica é bem o que o nome indica mesmo, testar aqueles valores limites. Os valores máximos e mínimos tendem a dar mais erros. Ex.: se o valor tem que ser aceito apenas se 5 <= x <= 10, deve-se testar os valores 4, 5, 10 e 11, pra saber se o sistema se comporta corretamente nos limites.




</div>