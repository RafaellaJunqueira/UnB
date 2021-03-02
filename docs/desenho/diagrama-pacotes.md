# <center>Diagrama de Pacotes

<div align="justify">

Um Diagrama de Pacotes é um complemento do Diagrama de Classes que trata-se de um diagrama estático que permite organizar o sistema como se representasse uma visão em módulos.

#### Steriotype
As linhas entre os pacotes usam a nomenclatura para indicar qual é o tipo de dependência entre cada pacote.
- **<< use >>:** é a dependência típica, se você não colocar nada nos tracejados da linha, já vai indicar que é uma relação de uso entre um e outro;
- **<< import >>:** envolve a importação de um pacote pra outro. Se só escreve *import* indica que é uma visibilidade, um escopo, públicos;
- **<< access >>:** a mesma coisa do import, envolve a importação de pacotes, mas para um escopo privado (*private*);
- **<< >>:** 

É possível representar cada um dos pacotes ou modelar também utilizando o tipo de arquitetura de uma aplicação web, como Model-View-Controller. Quando vai representar assim, a ordem é importante de acordo com o nível daquela camada, ou seja, mais alto nível (como a view) aparece na parte superior da página e a de banco de dados mais pra baixo. E por aí vai.

