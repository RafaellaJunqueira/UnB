# <center> Padrão de projeto

<div align="justify">
<p>Um padrão de projeto é uma solução boa, testada e aprovada para um problema recorrente. É tipo um interruptor, virou um padrão que ele é usado pra acender a luz, toda vez que você estiver em um lugar escuro e tiver um interruptor, você sabe que ele vai servir pra acender a luz.</p>
<p>O mesmo vale pra software, um padrão de projeto é uma série de princípios e soluções usados durante a criação do software. É a codificação em um formato estruturado, descrevendo o problema e a respectiva solução adotada.</p>


## Padrão GRASP
O *General Responsability Assignment Software Patterns* um conjunto de ferramentas mentais, um auxílio de aprendizagem para ajudar no projeto de software orientado a objetos. Consiste em diretrizes para atribuir responsabilidade a classes e objetos em projeto orientado a objetos.

O termo **responsabilidade** deve ser entendido como as obrigações que um objeto possui quando se leva em conta o seu papel dentro de um determinado contexto. A implementação de soluções OO considerando os conceitos de responsabilidade, papéis e colaborações fazem parte de uma abordagem conhecida como Responsibility-Driven Design ou, simplesmente, RDD.

Todos esses padrões servem para a resolução de problemas comuns e bastante típicos de desenvolvimento de software orientado a objeto. Portanto, tais técnicas apenas documentam e normatizam as práticas já consolidadas, testadas e conhecidas no mercado.

Existem alguns tipos de padrões que são GRASP, são eles:

| Padrões básicos| Padrões avançados |
|--|--|
| Criador | Polimorfismo |
| Especialista | Invenção Pura |
| Controller (Controladora) |  Indireção | 
| Alta coesão | Variações protegidas |
| Baixo acoplamento | 

### GRASP Criador
> Quem deve ser responsável por criar uma nova instância de uma classe?

Esse padrão se refere a descobrir qual classe é responsável por criar objetos (criar instâncias). Quando se descobre "quem cria quem" e quem só existe se o outro existir, você encontrou o padrão de criador. É uma das atividades mais comuns em um sistema de orientação a objetos. Atribui qual classe é responsável por criar os objetos.


Quando se tem uma relação de composição entre classes (não agregação) essa relação de TODO-PARTE, o padrão criador diz para atribuir a responsabilidade de criação de instâncias *parte* para a classe *todo*.

Em geral, uma classe **B** deve ser responsável por criar instâncias de classe **A** se uma (de preferência, mais de uma) das seguintes afirmações se aplicarem:

<ul>
    <li>Instâncias de B contêm ou agregam instâncias de A;</li>
    <li>Instâncias de B gravam instâncias de A;</li>
    <li>Instâncias de B utilizam de perto instâncias de A;</li>
    <li>Instâncias de B têm as informações de iniciação das instâncias de A e passam isso na criação.</li>
</ul>

### GRASP Especialista
> Qual é o princípio geral para a atribuição de responsabilidades aos objetos?

Especialista na informação é um princípio utilizado para determinar **ONDE** delegar as responsabilidades. É conhecido por ser o princípio fundamental para atribuir responsabilidade. Essas responsabilidades incluem métodos, campos computados, e assim por diante. Uma abordagem geral para atribuir responsabilidades é olhar para uma determinada responsabilidade, determinar a informação necessária para cumpri-la e depois determinar **onde essa informação está armazenada**.

Atribua a responsabilidade ao especialista: a classe que tem as informações necessárias para assumir a responsabilidade

Esse grasp especialista colocará a responsabilidade na classe com a maioria das informações necessárias para cumpri-la. Ele sempre é aquele que questiona "essa é mesmo a melhor classe pra fazer essa coisa?". O criador faz isso mas só pros criadores de instâncias, mas o especialista olha mais a fundo o que cada coisa cria e se está adequado, não apenas a criação de intãncias.

É uma abordagem genérica que visa atribuir a responsabilidade de fazer ou conhecer algo ao "especialista na informação", ou seja, a classe que possui a informação necessária para cumprir tal responsabilidade. Delegar responsabilidades específicas para cada classe, facilitando a manutanção. 

**Obrigações de fazer algo**
- Fazer algo a si mesmo
- Iniciar ações em outros objetos
- Controlar ou coordenar atividades em outros objetos
**Obrigações de conhecer algo**
- Conhecer dados encapsulados
- Conhecer objetos relacionados
- Conhecer coisas que se pode calcular

### GRASP Controller
> Quem deve ser o responsável por lidar com um evento de uma interface de entrada?

O padrão controlador atribui a responsabilidade de lidar com os eventos do sistema para uma classe que representa um cenário de caso de uso do sistema global. Um objeto controlador é um objeto de interface não-usuário, responsável por receber ou manipular um evento do sistema. 

Um caso de uso controlador deve ser usado para lidar com todos os eventos de casos de uso e pode ser usado para mais de um caso de uso (por exemplo, para casos de uso como Criar usuário e Excluir usuário, pode ter um único UserController, em vez de dois casos de uso controllers separados).

O controlador deve delegar o trabalho que precisa ser feito para outros objetos; ele coordena ou controla a atividade. Ele não deve fazer muito trabalho por si próprio

### GRASP Alta coesão
> Como manter a complexidade sob controle?

É um padrão avaliativo que tenta manter os objetos adequadamente focado, gerenciado e compreensível. A alta coesão é geralmente utilizada em suporte de baixo acoplamento. A alta coesão significa que as responsabilidades de um determinado elemento estão fortemente relacionadas e **altamente focadas**. A BAIXA coesão é uma situação em que um determinado elemento tem muitas responsabilidades distintas, não relacionadas.

### GRASP Baixo acoplamento 
> Como prover baixa dependência entre classes, reduzir o impacto de mudanças e obter alta reutilização?

É um padrão de avaliação, que determina como atribuir responsabilidades para apoiar. O acoplamento é uma medida de quão forte um elemento está conectado, tem conhecimento ou depende de outros elementos. O baixo acoplamento é um padrão de avaliação que determina como atribuir responsabilidades de suporte:
- menor dependência entre as classes;
- mudança em uma classe com menor impacto em outras;
- maior potencial de reutilização.

### GRASP Polimorfismo
> Como tratar alternativas baseadas no tipo? Como criar componentes de software “plugáveis”?

É aquele padrão já aprendido em Orientação a Objetos para fatorar os níveis e evitar repetição de código. Aqui que entra aquela coisa de ter classes abstratas. O polimorfismo permite que referências de tipos de classes mais abstratas representem o comportamento das classes concretas que referenciam.

De acordo com o princípio do polimorfismo, a responsabilidade de definir a variação dos comportamentos com base no tipo desse comportamento é atribuída ao tipo para o qual essa variação ocorre.

### GRASP invenção pura
>Quando não se quer violar “Alta Coesão”e “Baixo Acoplamento” e o “Expert”não oferece soluções apropriadas, qual objeto deve ter responsabilidade?

É uma classe que não representa um conceito no domínio do problema deve atender as seguintes características : baixo acoplamento e potencial de reutilização dos mesmos derivados. Essa é a classe que a gente mesmo inventa e tem a ver com coisas intrínsecas de software, como autorização e autenticação quando se fala em login. 

Ou seja, não necessariamente tem a ver com o domínio da aplicação, com os requisitos que o cliente pediu, mas com o funcionamento da aplicação e coisas que precisam ser feitas para que outras possam funcionar. Por isso está bastante ligada aos requisitos não funcionais. 


### GRASP indireção
>Como evitar acoplamento direto entre duas ou mais classes? Como evitar baixo acoplamento e manter alta possibilidade de reuso através do desacoplamento de objetos?

O padrão de indireção suporta baixo acoplamento (e potencial de reutilização) entre dois elementos, atribuindo a objeto intermediário a responsabilidade de ser o mediador entre eles. Um exemplo é a introdução do componente controlador para mediação entre dados (modelo) e sua representação (visualização) no padrão MVC.

O MVC é um padrão focado no reuso de código e a separação de conceitos em três camadas interconectadas, onde a apresentação dos dados e interação dos usuários (front-end) são separados dos métodos que interagem com o banco de dados (back-end).

Será atribuída a responsabilidade a um objeto intermediário que faz mediação entre componentes e serviços de modo que esses não sejam diretamente acoplados.

### GRASP Variações protegidas
> Como projetar objetos,subsistemas e sistemas, de modo que, as variações ou instabilidades nesses elementos não sejam responsáveis por impactos indesejáveis em outros elementos?

É um princípio básico na motivação de grande parte dos mecanismos e padrões na programação e no projeto, para fornecer flexibilidade e proteção contra variações. O padrão variações protegidas protege elementos das variações em outros elementos (objetos, sistemas, subsistemas), ou seja, se você mexer em uma coisa não vai estragar outra. O foco desse padrão é a instabilidade na interface, então faz ligação com o polimorfismo mas para criar várias implementações de interfaces.

## 📌 Referencias

DEVMEDIA, **Desenvolvimento com qualidade com GRASP** Disponível em [https://www.devmedia.com.br/desenvolvimento-com-qualidade-com-grasp/28704](https://www.devmedia.com.br/desenvolvimento-com-qualidade-com-grasp/28704)

Wikipedia, **Padrões de projeto: vantagens de cada padrão** Disponível em [https://pt.wikipedia.org/wiki/Padr%C3%A3o_de_projeto_de_software#Tipos_de_Padr%C3%B5es_Grasp](https://pt.wikipedia.org/wiki/Padr%C3%A3o_de_projeto_de_software#Tipos_de_Padr%C3%B5es_Grasp)

Wikipedia, **GRASP (padrão orientado a objetos)** [https://pt.wikipedia.org/wiki/GRASP_(padr%C3%A3o_orientado_a_objetos)#Indirection](https://pt.wikipedia.org/wiki/GRASP_(padr%C3%A3o_orientado_a_objetos)#Indirection)