# <center>Fundamentos e Arquitetura de Computadores

Oi amigos! Como eu estou fazendo esse tópico já em 2021, atrasadíssima, eu vou escrever com as minhas palavras o que for lembrando de mais importante e mais legal! Fonte: vozes da minha cabeça (mas pode confiar).

Então, a primeira coisa que você **PRECISA** saber é o seguinte: o MARS não é obrigatório. Parece bobo mas eu mesma não sabia e foi a glória da minha vida não ter que usar por motivos de: acho feio d.e.m.a.i.s, seria tristíssimo usar aquilo.

## IDE's
<p align='center'>
<img src='_media/fac/mars.png' width=300 hight='300'>     <img src='_media/mars.png' width=300 hight='300'>

O MARS é uma IDE como qualquer outra, poderíamos compará-lo com o CodeBlocks, Netbeans... cada uma dessas é focada em uma linguagem, né? Com o MARS não é diferente, ele é uma IDE para linguagem assembly.

Mas como assim, Rafa, se não usar o MARS, como que faz? Agora sim chegou o pulo do gato, my friend! Você pode usar o editor de texto que te for mais agradável. Eu uso VSCode porque além de colorido lindo, tem extensões para spim (calma que logo abaixo vou falar sobre) e tem a puta vantagem que é o terminal integrado nele né, então tudo pode ser codado e montado ali, sem precisar abrir um terminal separado. É tudoh. Mas pode-se usar Sublime, Atom... qualquer um que te faça feliz!

Como mencionado ali em cima, .spim é a extensão do seu arquivo assembly. Assim como a gente coda em C o arquivo é **.c**, em Python é **.py**, C++ é **.cpp**, e assim por diante, em assembly usa-se o **.spim** ou **.s** também funfa.

Caso você use o MARS, ele já possui um botãozinho que ele monta o que você codou (sim, a gente diz montar e não compilar, pois o assembly é uma linguagem de montagem. O Tiago vai pegar no seu pé com o tal do fetch - decode - execute, não esquecerá). O fato é que no MARS ele já monta e te mostra num terminal bem pouco intuitivo que ele tem, mas para quem for usar um editor de texto comum, é preciso rodar a seguinte linha de comando para executar o código:

```terminal
spim -f <nome-do-seu-codigo.spim>
```

É preciso instalar o spim pra esse comando rodar, só fazer pelo método padrão que a gente ama e partir pro abraço.
```terminal
sudo apt install spim
```

E por fim, a dica mais importante do dia: leia tudo do site [Embarcados](https://www.embarcados.com.br/arquitetura-de-conjunto-de-instrucoes-mips/), é o site mais perfeito do mundo e tem absolutamente quase tudo que você vai precisar.

Aproveite a vida neste semestre, beijos de luz!