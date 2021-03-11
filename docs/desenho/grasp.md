# <center> Padrão de projeto

<div align="justify">
<p>Um padrão de projeto é uma solução boa, testada e aprovada para um problema recorrente. É tipo um interruptor, virou um padrão que ele é usado pra acender a luz, toda vez que você estiver em um lugar escuro e tiver um interruptor, você sabe que ele vai servir pra acender a luz.</p>
<p>O mesmo vale pra software, um padrão de projeto é uma série de princípios e soluções usados durante a criação do software. É a codificação em um formato estruturado, descrevendo o problema e a respectiva solução adotada.</p>


## Padrão GRASP
O *General Responsability Assignment Software Patterns* um conjunto de ferramentas mentais, um auxílio de aprendizagem para ajudar no projeto de software orientado a objetos. Consiste em diretrizes para atribuir responsabilidade a classes e objetos em projeto orientado a objetos.

O termo **responsabilidade** deve ser entendido como as obrigações que um objeto possui quando se leva em conta o seu papel dentro de um determinado contexto. A implementação de soluções OO considerando os conceitos de responsabilidade, papéis e colaborações fazem parte de uma abordagem conhecida como Responsibility-Driven Design ou, simplesmente, RDD.

Existem alguns tipos de padrões que são GRASP, são eles:

| | | |
|--|--|--|
| [Criador]() | Polimorfismo |  Variações protegidas|
| Especialista | Invenção Pura ou Fabricação Própria | Indireção | 
| Controller (Controladora) |Alta coesão | Baixo acoplamento 

### GRASP Criador
Esse padrão se refere a descobrir qual classe é responsável por criar objetos. Quando se descobre "quem cria quem" e quem só existe se o outro existir, você encontrou o padrão de criador. 

Em geral, uma classe **B** deve ser responsável por criar instâncias de classe **A** se uma (de preferência, mais de uma) das seguintes afirmações se aplicarem:

<ul>
    <li>Instâncias de B contêm ou agregam instâncias de A;</li>
    <li>Instâncias de B gravam instâncias de A;</li>
    <li>Instâncias de B utilizam de perto instâncias de A;</li>
    <li>Instâncias de B têm as informações de iniciação das instâncias de A e passam isso na criação.</li>
</ul>

### GRASP Especialista
Especialista na informação é um princípio utilizado para determinar **ONDE** delegar as responsabilidades. Essas responsabilidades incluem métodos, campos computados, e assim por diante. Uma abordagem geral para atribuir responsabilidades é olhar para uma determinada responsabilidade, determinar a informação necessária para cumpri-la e depois determinar **onde essa informação está armazenada**.

Esse grasp especialista colocará a responsabilidade na classe com a maioria das informações necessárias para cumpri-la. 


## 📌 Referencias

DEVMEDIA, **Desenvolvimento com qualidade com GRASP** DIsponível em [https://www.devmedia.com.br/desenvolvimento-com-qualidade-com-grasp/28704](https://www.devmedia.com.br/desenvolvimento-com-qualidade-com-grasp/28704)

