# <center>Fundamentos

<div align="justify">

### Metodologias
Para desenvolver um poduto de software e, assim, solucionar algum problema, é preciso adotar uma metodologia para trabalhar. Dentro da metodologia escolhida, existem modelos disponíveis para uso que seguirão o modo de pensar da metodologia que o abarca. Cada modelo especificará como será o processo e quais os procedimentos, métodos e ferramentas que devem ser utilizados. 

Esses conceitos se relacionam da seguinte forma: 

![Conceitos](../_media/requisitos/conceitos.png)

As metodologias sao divididas em **tradicionais** e **ágeis**.

A metodologia **tradicional** é aquela que possui uma base muito forte em documentação, o software é todo planejado e documentado antes de ser implementado. Na época em que foi criada, o custo de fazer alterações e correções em um produto era muito alto, uma vez que o acesso aos computadores era limitado e não existiam ferramentas de apoio ao desenvolvimento do software. Por isso os métodos tradicionais são pouco adaptáveis às mudanças, são métodos mais "engessados".

Já a metodologia **ágil** é aquela que preza muito mais pela comunicação em tempo real, cara a cara, em detrimento dos documentos escritos. Ela carrega esse nome, ágil, não por possuir processos rápidos, mas porque seu surgimento foi justamente em contrapartida aos métodos tradicionais, que também eram conhecidos como métodos "pesados". Nos métodos ágeis, o cliente é incorporado com parte da equipe, auxiliando nas tomadas de decisão e acompanhando ativamente todo o desenvolvimento do produto. Os métodos ágeis são super adaptados às mudanças, seus ciclos são menores e iterativos. 

> Alguns valores da metodologia ágil são:
> - Indivíduos e iterações mais que processos e ferramentas;
> - Software funcional mais que documentação abrangente;
> - Colaboração do cliente mais que negociação de contratos;
> - Responder a mudanças mais que seguir um plano.

O **ciclo de vida** é a estrutura contendo processos, atividades e tarefas envolvidas no desenvolvimento, operação e manutenção de um produto de software, abrangendo a vida toda do produto, desde a definição de seus requisitos até o término de seu uso. O modelo de ciclo de vida é a primeira escolha a ser feita no processo de software. A partir desta escolha, serão definidas desde a maneira mais adequada de obter as necessidades do cliente, até quando e como o cliente receberá sua primeira versão do sistema.

### Ciclos de vida - Tradicionais

**Cascata**: esse é o modelo mais antigo, talvez até o primeiro modelo, e tem esse nome por ser um modelo sequencial, uma fase depende da outra (o fim de uma fase marca o início da outra). O principal aqui são as análises e projeto do sistema antes de começar a implementação. Esse modelo pode ser bom para um projeto pequeno e bem definido desde o início, algo que provavelmente não terá mudanças.

<div align="center">

![Cascata](../_media/requisitos/cascata.png)

</div>
<!-- 
| <center>Vantagens | <center>Desvantagens |
|------------------|---------------------|
| Modelo de fácil entendimento para o cliente | Não prevê nenhuma revisão das fases | 
| Início e fim bem claros e definidos | Não permite mudanças de requisitos |
| Estimativa de custo precisa logo no início do projeto | Pouquíssima comunicação com o cliente, então, dá incerteza tanto para desenvolvedores quanto para o cliente |
| Facilita o controle gerencial pois produz um artefato ao final de cada fase | | -->


**Modelo em V**: é, basicamente, um cascata colocado em forma de V, a diferença é que esse modelo prevê verificação e validação (V&V) das fases. O cliente continua recebendo a primeira versão do produto ao final do ciclo, mas esse ciclo reduz os riscos porque planeja testes nas fases de análise e projetos. 
<div align="center">

![V](../_media/requisitos/modelo_V.png)

</div>

**Espiral**: esse nome se dá pelo fato de que a cada “volta” ou iteração são geradas versões mais evoluídas do sistema. Nesse modelo, as falhas não são "toleráveis" (pelo menos é o que se espera) e, pra isso, a cada iteração há uma atividade dedicada à análise de riscos e apoiada através de geração de protótipos, que podem ser de baixa fidelidade, desde que ele permita um envolvimento constante do cliente nas decisões. Cada volta é uma fase do ciclo de vida do projeto.
<div align="center">

![Espiral](../_media/requisitos/espiral.png)

</div>

**Incremental**: neste modelo, os requisitos do cliente são obtidos e agrupados em módulos de acordo com a funcionalidade. Após este agrupamento, a equipe, junto ao cliente, define a prioridade em que cada módulo será desenvolvido, e essa escolha é baseada na importância daquela funcionalidade ao negócio do cliente. Cada módulo passa por todas as fases do cascata, então, o cliente recebrá uma versão do produto final em menos tempo.
<div align="center">

![Incremental](../_media/requisitos/incremental.png)

</div>

**Evolutivo**: neste modelo, os requisitos são levantados em paralelo ao desenvolvimento porque pressupõe-se que o cliente não irá expor todos os requisitos desde o início do processo, ou os requisitos não são tão bem conhecidos, ou ainda estão sofrendo mudanças. Assim, a análise é feita em cima dos requisitos conseguidos até então, e a primeira versão é entregue ao cliente, que vai gerar feedbacks. Esses feedbacks geram nova análise, projeto e desenvolvimento, e uma segunda versão do software é entregue ao cliente que, novamente, retorna com mais feedbacks. Assim, o software vai evoluindo, se tornando mais completo, até atender todas as necessidades do cliente dentro do escopo estabelecido. 

<div align="center">

![Evolutivo](../_media/requisitos/evolutivo.png)

</div>

**RAD (*Rapid Application Development*)**: este modelo é como uma evolução da “prototipagem rápida" e é um ciclo extremamente curto, chegando a ter exemplos de ciclos que duraram de 60 a 90 dias. A diferença principal deste ciclo para o espiral é o forte paralelismo das atividades, onde os módulos são mais independentes e os incrementos são desenvolvidos ao mesmo tempo, por equipes diferentes.

<div align="center">

![RAD](../_media/requisitos/rad.png)

</div>

### Ciclos de vida - Ágeis

**Scrum**: os projetos aqui são divididos em ciclos chamados de Sprints. O **Sprint** representa um período onde um conjunto de atividades deve ser executado. 

**XP (*Extreme Programming*)**: 






</div>

### 📌 Boas referências
* [Metodologias tradicionais](https://www.semeru.com.br/blog/as-metodologias-tradicionais-de-desenvolvimento-de-software/)
* [Metodologias Ágeis](https://www.semeru.com.br/blog/as-metodologias-tradicionais-de-desenvolvimento-de-software/)