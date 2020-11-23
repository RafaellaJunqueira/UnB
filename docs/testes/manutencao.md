# <center> Manutenção de software

<div align="justify">

Podem ser classificadas em corretivas, adaptativas ou perfectivas (as evolutivas estão englobadas por este último grupo).
- **Corretivas:** corrigir falhas ou bugs no software ou hardware. São as modificações realizadas depois que o software é entregue e são descobertos problemas;
- **Adaptativas:** manutenção feita para que o software continue sendo utilizável em um ambiente alterado. Por exemplo, se o sistema operacional é atualizado, o software deve ser também.
- **Perfectivas:** essas são as modificações para melhorar a performance, facilidade de manutenção ou outros atributos. Elas oferecem melhorias para o usuário, para a documentação performance do sofware, e serve para detectar falhas antes que elas se manifestem, efetivamente, como falhas. As manutenções **evolutivas** são aquelas que vão incluir, alterar ou excluir alguma coisa de acordo com a requisição do usuário!

Os teste de regressão citados no documento de [testes dinâmicos](testes/testes-dinamicos.md) são utilizados dentro deste momento, das manutenções.

**Estratégia de teste x Plano de teste x Roteiro de teste**
- O plano de teste surge A PARTIR da estratégia de teste adotada. Essa estratégia é fundamentada nos níveis e nos tipos de testes que devem ser feitos. Definidos os niveis e tipos, pra completar a estratégia, é preciso identificar os casos de testes que serão executados depois;
- O roteiro é o agrupamento dos casos de teste de acordo com seus níveis e tipos;
- O roteiro será incorporado ao plano de testes, responsável por indicar em quais momentos do projeto serão executados os testes, baseado no ciclo de vida adotado pelo projeto.

## Processo de teste
1. **Planejar:** definir objetivos e o escopo. Pra isso é necessário ter: lista de requisitos funcionais e não funcionais, especificação de cenários, documentos de arquitetura e de integração, e cronograma do projeto;
2. **Estabelecer o ambiente:** é preciso estabelecer a infra estrutura necessária, a massa de dados (por script, por cópia e o uso do sistema) e definir o script de testes, que podem ser automatizados ou não. A definição do ambiente DEVE conter informações sobre:
    - infraestutura de hardware e software;
    - características arquiteturais;
    - restauração e recuperação do ambiente;
    - softwares de apoio e sistema operacional;
    - ferramentas de automatização.
3. **Executar os testes:** pra realizar um testes é preciso ter o roteiro dos testes, o script (o que define para cada caso de teste o que ele deve fazer) e o próprio software. Após executados os testes, são coletadas as evidências dos defeitos, que podem ser por capturas de telas, dados de entrada ou condições de operação. 
4. **Analisar resultados:** A partir dessas evidêncais, os resultados serão passados para o analista de sistema que vai identificar os problemas internos e problemas de processo, e então realizar o gerenciamento ativo do software.

## Resumão da galera
A **estratégia** de teste é composta por um conjunto de requisitos funcionais e não funcionais de um sistema executável, e deve avaliar quais aspectos serão testados. Com esses pré-requisitos em mãos e identificados os aspectos em foco, deve-se preparar um conjunto de casos de teste que, em termos de testes dinâmicos, precisa considerar/ identificar:
- **Níveis** de teste em questão (unitário, integração, sistema, aceitação);
- **Tipos** de teste que serão realizados, de acordo com o foco de qualidade desejado (ISO 9126);
- **Técnica** (caixa branca, caixa preta, intervalo de equivalência e valor limite) dependendo das características do software;
- Elaborar o **roteiro** a ser seguido;
- Identificar toda a **infraestrutura** necessária para os testes, como hardware, software, equipe, dados necessaŕios e ambiente de teste requerido;
- Elaborar **plano de teste**, incluindo o plano de medição desses testes;
- **Executar** o plano registrando as evidências e consolidando os resultados;
- Solicitar e corrigir reparos (são os **status** dos testes);
- Registrar todos os materiais em gestão de configuração (código, documento, planos e resultados);
- Redigir conclusões, recomendações e lições aprendidas;
- Encerrar os testes antes de encerrar o projeto. FIM.
<div style = text-align:center>

    ![Gif](https://media.giphy.com/media/LD8TdEcyuJxu0/giphy.gif)

</did>
    
<!-- ## Ferramentas de gerência de testes -->

<!-- 
TDD, 
exploratórios, 
perfis operacionais, 
mutantes, 
BDD, 
testes de alta maturidade, 
testes estáticos. Esse é o roteirão da parada... -->


</div>