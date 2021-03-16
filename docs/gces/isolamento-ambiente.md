# <center> Isolamento de ambiente
<div align="justify">

Isolar um ambiente tem o objetivo de reduzir o acoplamento entre ambiente de desenvolvimento e ambiente de produção, além de padronizar o ambiente para todos os desenvolvedores, assim, não vai acontecer de funcionar no pc de uma pessoa e no de outra não. Existe ainda uma coisa chamada Infrastructure as Code (IaC) que é a capacidade de descrever em forma de código como aquele ambiente vai funcionar, incluindo todas as dependências e tudo que precisa pro ambiente funcionar. 

Essa prática ajuda também a pegar essa infraestrutura e colocar na nuvem, ou seja, fazer a nossa infraestrutura como serviço. Esse isolamento, basicamente, pode ser feito de dois modos: criando uma máquina virtual (virtuallização) ou criando um contêiner.

Uma máquina virtual precisa subir um sistema operacional inteiro pra você poder colocar sua camada de aplicação personalizada rodando dentro dela. Já o contêiner elimina a camada mais baixa da VM, não é preciso virtualizar o sistema operacional inteiro, ele só usa os recursos do host (SO que você quer) pra isolar somente a sua camada de aplicação.

| Contêiner | VM |
|:-- | :-- |
| Tamanho: MBs | Tamanho: GBs |
| Inicialização instantânea (milissegundos) | Inicialização lentas (segundos) |
| Armazenamento volátil | Armazenamento persistente |

## Contêiner
Não é uma VM rápida, é só o isolamento de uma única camada da sua aplicação, contendo todas as dependências necessárias pra rodar determinado processo. Dentro de um contêiner tem:
- Código do software a ser executado;
- Arquivos de configuração;
- Processos;
- Gerência de rede;
- Dependências (bibliotecas);
- Parte essencial do SO pra rodar a aplicação.
    - *Cgroups*: agrupa processos em espaços isolados;
    - *Namespaces*: gerenciador de redes internas;
    - *"Copy-on-write"*: a ideia de pegar a imagem de um contêiner e, dentro dela, colocar uma nova camada que modifica aquela camada, mas ambas coexistem. Então tu pode usar só a imagem base ou as camadas acima dela.

### Docker
É a ferramenta bem popular para isolar um ambiente, por isso a gente fala *dockerizar* uma aplicação.

<div align="center">
    <img src="_media/gces/docker-local.png">
    <br>
    <br>
    <br>
    <img src="_media/gces/docker-flow.png">
</div><br>

Para gravar mudanças em um docker, é preciso dar um *docker commit* pra ele gravar essas mudanças nessa nova camada de imagem. Caso contrário, depois de parar o docker, quando for rodar de novo, suas infos não estarão lá. Essa é ideia do *Copy-on-write*.
<br><br>
<div align="center">
    <img src="_media/gces/boas-praticas-docker.png">
</div><br>

## 📌 Referencias

iMASTERS. **Docker Compose: O que é? Para que serve? O que come?** [https://imasters.com.br/banco-de-dados/docker-compose-o-que-e-para-que-serve-o-que-come#:~:text=Docker%20Compose%20%C3%A9%20o%20orquestrador,mas%20os%20maestros%20somos%20n%C3%B3s!](https://imasters.com.br/banco-de-dados/docker-compose-o-que-e-para-que-serve-o-que-come#:~:text=Docker%20Compose%20%C3%A9%20o%20orquestrador,mas%20os%20maestros%20somos%20n%C3%B3s!)