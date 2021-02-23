# <center>Gerência de Configuração e Evolução de Software
<div align="justify">

**Visão Geral:** As configurações de um software são os "assets" desse software, os elementos que o compõem. A ideia dessa matéria é gerenciar esses elementos. Gerenciar essa configurações é, por exemplo, faazer controle de versão, automação de deploy, automação de build, etc. Esse controle é feito em camadas e cada uma delas possui uma ferramenta (ou a mais comum neh) específica pra isso.

A gestão das configuração são todas as ferramentas e práticas pra gerenciar cada etapa do desenvolvimento do software.

## Conceitos básicos

**DevOps**<br>
O DevOps é um conjunto de práticas que une a parte de desenvolvimento com a parte de operações (quem escreve os códigos com a galera que opera o TI, ou seja, testa e lança as aplicações). Algumas pessoas acabam atribuindo o gerenciamento dessas tarefas a uma pessoa que tenha essas habilidades, e daí surge o papel de DevOps, mas, na realidade, DevOps é mais do que um papel, é toda uma cultura e um conjunto de práticas.

**Baselines  vs.  Pipeline**<br>
Um Baseline é a linha base, os pontos de referência para o desenvolvimento. São versões dos softwares, mesmo que não forem entregáveis, mas sempre são versões estáveis. É um conjunto de features que descreve uma versão de um produto. Quando existe uma versão 1 de um produto e você vai acrescentar coisas, essa lista de mudanças a serem feitas (features) são a baseline da versão 2. Digamos que é uma visão mais macro que vai dizer o que tinha na versão 1 (X, Y, Z features) e o que terá na próxima versão (X, Y, Z, W, S features).

Já o Pipeline é uma série de fases que vão "assegurar" que aquele bloco de código não vai quebrar nada do seu código quando ele for integrado, é tipo uma receita de bolo que sempre verifica cada adição das coisas. Isso vai impedir que bugs sejam inseridos e garante (não 100% mas deu pra entender) que a integração, integra e deploy contínuo continuem funcionando.

Essas atividades contínuas são práticas feitas durante o desenvolvimento e que muitas vezes são confundidos entre si mas são etapas diferentes:

| Tipo | Descrição
| -------| -- |
| **Integração contínua**| integrar as mudanças dos desenvolvedores ao código base. Ou seja, dar merge entre as branches paralelas com a principal. Pode ser manual ou automatizada.
| **Entrega contínua** |a base de código tem estar entregável a qualquer momento. O servidor roda processos automatizados de build e fica conferindo pra que aquele código ali esteja pronto pra ser entregue a qualquer momento que necessitar.
| **Deploy contínuo** | além de ter o código entregável, ele já faz o deploy, então o produto fica ali prontinho não só pra ser entregue mas pra ser usado a qualquer momento também

Em meio a tudo isso, tem o super importante controle de versão é muito importante pra todo o DevOps e para o gerenciamento dessas baselines. Geralmente está atrelado a código mas ele é importante para todo e qualquer documento realizado em um projeto. 

Então, no meu entendimento, o pipeline é executado diariamente durante o desenvolvimento das coisas previstas na baseline. Como o pipeline é tão frequente, a prática é automatizar esse processo usando softwares como o Travis.

**Workflow**<br>
Esse controle de versão é preciso ter um planejamento a ser feito, uma gestão desse versionamento. Para que a gente entenda o que se precisa versionar, deve-se olhar o workflow do projeto (todas as etapas necessárias desde o entendimento do problema até o monitoramento da solução já em produção). Esse fluxo de produção auxilia muito a visualização sobre o quem faz as coisas e quais artefatos serão gerados.

Existe um método que é bem conhecido de workflow que é o Gitflow. Ele tem uma visão de separar o desenvolvimento em branches e tals, mas tem um custo de manutenção por ser um fluxo que fica com muitas branches em uso e todas devem estar sempre atualizadas. Em contrapartida, uma outra ideia de fazer esse fluxo é utilizar o Trunk Based

Após entendido o workflow do projeto, é preciso listar quais são os itens de configuração (o que preciso configurar, quais são os arquivos, o que preciso documentar, etc)

| Itens de configuração | Config. de Software | Baselines |
| --| -- | --| 
| Arquivos<br>Documentação<br>Bibliotecas<br>Unidade unitária | Estados dos itens<br>Estados dos Softwares | Ponto de referência<br>Macro |

**Boas práticas**<br>
* Os commits devem ser separados se tiverem objetivos diferentes. Mesmo que sejam pequenos, commitar uma só coisa auxilia na revisão, integração e a reverter caso necessário.
* Não commitar blocos separados de trabalho. Faça tudo e compile já completo, não commite algo iniciado e depois sua finalização. Só fazer o commit com o trabalho todo completo.
* Combinar com seu time a forma de commitar as coisas, porque isso facilita a comunicação entre o time.