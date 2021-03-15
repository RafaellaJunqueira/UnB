# <center> Notação UML - Modelagem Estática
<br>
<div align="justify">

Os diagramas citados aqui tenho um cunho mais organizacional, são diagramas "fixos", digamos assim. Os envolvidos nessa classificação são os diagramas de Pacote, de Classe, Dependência & Associação, Classe Concreta & Abstrata & Sobrescrita & Sobrecarga (complementa o de classes), Agregação & Composição, Herança & Realização e de Componentes, os quais conferem uma visão estática acerca dos módulos do projeto. 

## Diagrama de Classes


## Diagrama de Agregação e Composição 

O Diagrama de Agregação e Composição representa como as diferentes classes de um projeto de software se relacionam. Dessa forma, ele se parece com a representação de relacionamentos entre entidades de um banco de dados, por exemplo, por meio do diagrama de entidade-relacionamento. O foco não é mostrar com detalhes os métodos e os atributos de cada classe, mas sim deixar claro como elas se comunicam, como dependem umas das outras etc. Assim, ficam visíveis aspectos como modularidade, coesão e acoplamento.

## Diagrama de Componentes

Os diagramas de componentes são usados para visualizar a organização dos componentes do sistema e os relacionamentos de dependência entre eles. Os componentes podem ser componentes de software, como um banco de dados ou interface de usuário; um componente de hardware, como um circuito, microchip ou dispositivo; ou até uma unidade de negócios, como fornecedor, folha de pagamento ou envio.

Esse tipo de diagrama pode ser utilizado para mostrar a estrutura do código-fonte do sistema, para focar na relação entre componentes enquanto esconde detalhes de especificação, e também ajudar na comunicação e explicação das funções do sistema que está sendo construído. Esse diagrama enfatiza o comportamento do serviço quanto à interface.

## Diagrama de Pacotes

Um Diagrama de Pacotes atua como complemento do Diagrama de Classes, tratando-se de um diagrama estático que permite organizar o sistema como se representasse uma visão em módulos. Um diagrama de pacotes é composto de pacotes e relacionamentos entre pacotes, ou seja, é a representação de um grupo de classes ou outros elementos que se relacionam uns com os outros através de uma relação de dependência.

O pacote é um meio disponibilizado pela UML para organizar os diversos elementos ou modelos em grupos e nele podem ser incluídas classes, interfaces, componentes, diagramas ou até outros pacotes. Já a relação de dependência indica que um item depende da especificação de outro item. Essa relação entre pacotes pode ser classificada em cinco tipos de dependência:

* **Uso:** um pacote/elemento precisa de outro para ter sua definição e implementação completa;
* **Acesso:** um pacote necessita acessar as funções de outro pacote;
* **Importação**: funcionalidade importada de um pacote para outro;
* **Abstração**: relaciona dois elementos que representam a mesma ideia mas em níveis de abstração diferentes;
* **Disponibilização**: mostra a implementação de um artefato em um alvo de implementação.

Diagramas de pacotes são interessantes pois fornecem uma visão clara da estrutura hierárquica dos variados elementos UML dentro de um determinado sistema. Esses diagramas podem simplificar diagramas de classes complexos, criando elementos visuais organizados.

#### Steriotype
As linhas entre os pacotes usam a nomenclatura para indicar qual é o tipo de dependência entre cada pacote.
- **<< use >>:** é a dependência típica, se você não colocar nada nos tracejados da linha, já vai indicar que é uma relação de uso entre um e outro;
- **<< import >>:** envolve a importação de um pacote pra outro. Se só escreve *import* indica que é uma visibilidade, um escopo, públicos;
- **<< access >>:** a mesma coisa do import, envolve a importação de pacotes, mas para um escopo privado (*private*);

É possível representar cada um dos pacotes ou modelar também utilizando o tipo de arquitetura de uma aplicação web, como Model-View-Controller. Quando vai representar assim, a ordem é importante de acordo com o nível daquela camada, ou seja, mais alto nível (como a view) aparece na parte superior da página e a de banco de dados mais pra baixo. E por aí vai.

## Diagrama de Classe Abstrata

Uma classe abstrata é uma classe que serve de modelo para outras classes. Ou seja, ela sempre será uma superclasse genérica, e suas subclasses serão mais específicas.
Já a classe concreta é uma classe que possui atributos, métodos e pode ser instanciada, ou seja, permite a criação de novos objetos a partir dela. A classe concreta pode ser herdada por outras classes.

</div>

## 📌 Referências

**What is Class Diagram?** Disponível em [https://www.visual-paradigm.com/guide/uml-unified-modeling-language/what-is-class-diagram/](https://www.visual-paradigm.com/guide/uml-unified-modeling-language/what-is-class-diagram/)

Bóson Treinamentos. **Videoaula - Diagrama de Classes e Relacionamentos**. Disponível em [www.youtube.com/watch?v=IJtQWLnHvcQ&feature=youtu.be](www.youtube.com/watch?v=IJtQWLnHvcQ&feature=youtu.be)

Lucidchart. **Diagrama de componentes UML: o que é, como fazer e exemplos** Disponível em [https://www.lucidchart.com/pages/pt/diagrama-de-componentes-uml](https://www.lucidchart.com/pages/pt/diagrama-de-componentes-uml)

Creately, **O Guia Fácil de Diagramas de Componentes**. Disponível em [https://creately.com/blog/pt/diagrama/tutorial-de-diagrama-de-componentes-](https://creately.com/blog/pt/diagrama/tutorial-de-diagrama-de-componentes-)

RIBEIRO, A. **Diagrama de Componentes.** Disponível em [https://homepages.dcc.ufmg.br/~amendes/GlossarioUML/glossario/conteudo/componentes/diagrama_de_componentes.htm](https://homepages.dcc.ufmg.br/~amendes/GlossarioUML/glossario/conteudo/componentes/diagrama_de_componentes.htm)

RIBEIRO, Antônio. **Glossário UML - Diagrama de Pacotes, 2021.** Disponível em [https://homepages.dcc.ufmg.br/~amendes/GlossarioUML/glossario/conteudo/pacotes/diagrama_de_pacotes.html](https://homepages.dcc.ufmg.br/~amendes/GlossarioUML/glossario/conteudo/pacotes/diagrama_de_pacotes.html)

Lucidchart. **Tudo sobre diagramas de pacotes UML**. Disponível em [https://www.lucidchart.com/pages/pt/diagrama-de-pacotes-uml](https://www.lucidchart.com/pages/pt/diagrama-de-pacotes-uml)

**Conceitos de Orientação a Objetos/Classe Abstrata** Disponível em [https://pt.wikiversity.org/wiki/Conceitos_de_Orienta%C3%A7%C3%A3o_a_Objetos/Classe_Abstrata](https://pt.wikiversity.org/wiki/Conceitos_de_Orienta%C3%A7%C3%A3o_a_Objetos/Classe_Abstrata)