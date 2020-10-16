# <center>Fundamentos

<div align="justify">

A Engenharia de Requisitos, também chamada apenas como "fase de requisitos" durante um projeto, funciona como uma espécie de ponte entre o cliente e a equipe de desenvolvimento. O resultado dessa fase durante o desenvolvimento de um produto é uma lista de requisitos, ou seja, especificações que o software deve ter ou atender para que o produto final seja entregue conforme o desejado pelo cliente. Esses requisitos possuem níveis: nível de negócio, nível de usuário e nível de produto; e são classificados em requisitos **funcionais** e **não-funcionais**.

## Classificação dos requisitos 

🔸**Requisitos Funcionais (RF)**: são aqueles requisitos que indicam as funcionalidades e serviços do software, ou seja, suas funções, o que o usuário poderá utilizar. Por exemplo, se imaginarmos um produto hospitalar, um requisito funcional poderia ser que o sistema deve ser capaz de emitir relatório de pacientes, ou permitir o cadastro de médicos e pacientes, etc.

🔸**Requisitos Não-funcionais (RNF)**: já os requisitos não-funcionais, como o nome já indica, são aqueles que não estão relacionados às funcionalidades, ao que o produto deve fazer, mas, sim, às características e restrições do sistema como tempo de execução, espaço alocado, versões do compilador, sistema operacional suportado, etc. Essas propriedades dão suporte para que os requisitos funcionais sejam executados da forma esperada e, geralmente, podem ser medidas, conforme algumas métricas:

|<center> Propriedade  | <center>Métrica |
|----------------|-----------------|
| Velocidade     | Transações processadas por segundo. Tempo de resposta ao usuário/evento. Tempo de atualização da tela |
| Tamanho        | Kbytes. Número de chips de memória RAM |
| Facilidade de uso | Tempo de treinamento. Número de telas de ajuda |
| Confiabilidade | Tempo médio para falhar. Probabilidade de indisponibilidade. Taxa de ocorrência de falhas. Disponibilidade |
| Robustez       | Tempo de reinício após falha. Porcentagem de eventos que causam falhas. Probabilidade de que os dados sejam corrompidos por falhas |
| Portabilidade  | Porcentagem de declarações dependentes de sistema-alvo. Número de sistemas-alvo |

Os requisitos não-funcionais ainda são classificados em três tipos: Requisitos do **Produto Final**, Requisitos **Organizacionais** e Requisitos **Externos**. Requisitos do Produto Final referem-se a como o produto deve se comportar, ou seja, a sua velocidade de execução, confiabilidade, etc. Requisitos Organizacionais referem-se à consequência de políticas e procedimentos organizacionais que devem ser seguidos. E os Requisitos Externos referem-se aos fatores externos ao sistema e ao processo de desenvolvimento como a legislação. Além desses três tipos, os requisitos não funcionais ainda se dividem em outros diversos tipos:

<div align="center">

![RNF](../_media/requisitos/RNF.png)

</div>

## Qualidade dos requisitos 

Um produto bem construído exige requisitos com qualidade e bem elicitados, pois um requisito mal descrito pode dar margem para diferença de entendimento do cliente e da equipe desenvolvedora a respeito de uma mesma característica do sistema. Além de poder gerar um produto que não resolva o problema correto, ou um grande retrabalho para a equipe, que gastará tempo e dinheito refazendo um produto que estava bom mas não fazia o que realmente precisava fazer. 

Para "garantir" essa qualidade, existe uma lista de características que um requisito deve atender para ser considerado um bom requisito. Essa lista pode funcionar como um *checklist* no momento da elicitação e, assim, reduzir as chances de ter um projeto com requisitos equivocados. Essas características são:

|<center> Característica  | <center>Descrição |
|-------------------------|-------------------|
| Verificável (testável)  | Existe algum processo efetivo que demonstre que o produto de software atende ao requisito? Ex.: quantidade de usuários que o sistema deve ser capaz de suportar, tempo máximo de resposta, etc. |
| Rastreável              | É preciso saber a origem determinada daquele requisito. A partir de qual necessidade ele surgiu, qual característica visa atender e onde está documentado |
| Inteligível             | Ser descrito com lingajar de fácil leitura e compreensão |
| Correto                 | Conter toda a informação necessária de acordo com as necessidades do cliente | 
| Completo                | A especificação (casos de uso e especificação suplementares) deve conter todos os requisitos significativos e necessários, tais como funcionalidade, performance, restrições, etc|
| Consistente             | A especificação deve estar coerente com os documentos de mais alto nível, como o documento de visão. Além de não |
| Não ambíguo             | Possibilitar uma única interpretação, tanto para a equipe de desenvolvimento quanto para o cliente |

## Onde documentar os requisitos?
Geralmente os requisitos **funcionais** são registrados no modelo de Casos de Uso e na Lista de características (que consta de um Documento Visão ou semelhante). Já os requisitos **não-funcionais**, na maior parte das vezes, são registrados nas Especificações Suplementares.

</div> 

### 📌 Boas referências
- [Classificação de requisitos](https://www.devmedia.com.br/introducao-a-requisitos-de-software/29580#:~:text=Existem%20dois%20tipos%20de%20classifica%C3%A7%C3%A3o,seja%2C%20suas%20fun%C3%A7%C3%B5es%20e%20informa%C3%A7%C3%B5es.)
- [Requisitos de usuário e de sistema](https://homepages.dcc.ufmg.br/~figueiredo/disciplinas/aulas/req-usuario-sistema_v01.pdf)
- [Qualidade de software](https://www.devmedia.com.br/qualidade-de-software-engenharia-de-software-29/18209)