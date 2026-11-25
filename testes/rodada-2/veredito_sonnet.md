# Veredito cego (juiz Sonnet) - fid/nat/gen/pt

| Teste | A fid/nat/gen/pt | B fid/nat/gen/pt | Vencedor | Justificativa |
|---|---|---|---|---|
| 01-linkedin-ia | 5/4/4/5 | 3/4/3/5 | A | B acrescenta contraste inexistente ("Um chatbot comum responde perguntas") e funde os 4 benefícios em prosa; A mantém tudo, só troca emoji por lista simples. |
| 02-email-reuniao | 4/4/5/5 | 3/4/4/5 | A | B inventa "mudança em cima da hora" e rebaixa o pedido de documentos para "Se puder, envie"; A preserva o pedido e só omite o agradecimento final. |
| 03-artigo-backup | 4/4/5/5 | 3/4/2/5 | A | B perde o título e a seção Introdução, inventa "não exige equipamento caro" e corta "por especialistas"; A mantém a estrutura do artigo. |
| 04-copy-curso | 4/4/5/5 | 2/3/2/5 | A | B apaga o nome do curso e o título da página de venda, invents "o tempo... volta para a sua semana" e encurta o CTA para "Garanta a sua vaga."; A mantém título, subtítulo e CTA. |
| 05-roteiro-reels | 3/4/5/4 | 5/5/5/5 | B | A perde "a pergunta, o comando ou o pedido" e muda "entregue" para "como isso tem que chegar"; B mantém o conteúdo e fala de forma consistente ("pra", "Viu?"). |
| 06-descricao-produto | 4/4/4/5 | 3/3/2/5 | A | B some com o nome do produto e o título, perde durabilidade, design e hidratação; A mantém título e fecho de venda. |
| 07-resposta-suporte | 5/4/5/5 | 3/4/4/5 | A | B troca "Caso o problema persista" por "Se não aparecer" e suaviza com "costumam fazer", mudando condição e certeza; A é fiel. |
| 08-newsletter | 5/4/5/5 | 2/3/2/4 | A | B apaga o título "Radar de IA | Novembro", troca "sente que é impossível" por "desistiu" e restringe "todos os tamanhos" a "empresa brasileira pequena"; A é fiel. |
| 09-bio-palestrante | 5/4/5/5 | 2/3/4/4 | A | B inventa "sem projetos caros ou complicados" e "casos que viveu com clientes", e "pôr em uso" soa torto; A mantém os fatos. |
| 10-relatorio-executivo | 5/4/5/5 | 3/4/3/5 | A | B remove o título com o nome da clínica, inventa "para saber o que precisa ser corrigido primeiro" e desloca a LGPD para o objetivo; A preserva tudo. |

## Defeitos concretos (versão pior em naturalidade ou fidelidade)

- 01 (B): "Um chatbot comum responde perguntas." (contraste novo, o original não diz isso); "o trabalho que ainda precisa de uma pessoa" (invenção); perde a lista de benefícios e "supervisão mínima". (A, naturalidade: "É aí que um agente de IA ajuda" é muleta, e "Para uma pequena empresa, isso significa:" é fórmula.)
- 02 (B): "Desculpe a mudança em cima da hora" (fato inventado); "Se puder, envie" (o original solicita); "para chegarmos à reunião já conhecendo o ambiente" (motivo inventado); perde "agradecemos a compreensão" por troca. (A: perde o agradecimento pela compreensão e "Prezado/Pedimos desculpas por qualquer inconveniente" fica reduzido.)
- 03 (B): sem título H1 nem "Introdução"; "não exige equipamento caro" (invenção); perde "recomendada por especialistas" e "Em seguida/Por fim" na estrutura; "um disco que queima" e "uma enchente" trocam as ameaças genéricas por exemplos novos. (A: perde "por especialistas"; "Abaixo, como ela funciona" é elíptico.)
- 04 (B): sem título "Seu primeiro agente com Claude" e sem nome do curso ("Neste curso"); "o tempo que você gastava nisso volta para a sua semana" (reescreve "economiza horas"); "Garanta a sua vaga." sem "4 encontros"; "Para quem é" reduz três públicos a uma frase e some com "empreendedores". (A: perde "Pare de apenas conversar com a IA".)
- 05 (A): "aquilo que você escreve pedindo alguma coisa" (perde "a pergunta, o comando ou o pedido"); "E como isso tem que chegar?" (muda "entregue" e fica estranho); mistura "você" com "responde" sem "pra".
- 06 (B): sem título "Garrafa Térmica de Inox 1 L"; some "durável", "design moderno", "ajuda a manter a hidratação" e o chamado final; "com ela você compra menos garrafas plásticas" (sentido ligeiramente diferente de "reduz o consumo"). (A: "vai com você para o trabalho" ok; perde "Adquira".)
- 07 (B): "Se não aparecer" (troca a condição "Caso o problema persista"); "Estes passos costumam fazer o envio de dados voltar" (hedge novo); perde "queremos resolver isso o quanto antes".
- 08 (B): sem título "Radar de IA | Novembro"; "Olá!" sem "leitor"; "Se você desistiu de acompanhar" (muda "sente que é impossível"); "que só grandes corporações conseguiam pagar" (causa inventada); "cabem no orçamento de uma empresa brasileira pequena" (restringe "todos os tamanhos"); "o preço de uso caiu" (de "custos menores").
- 09 (B): "sem projetos caros ou complicados" (invenção); "casos que viveu com clientes" (invenção); perde "aprendizados" e "futuro do trabalho"; "pôr em uso tecnologias novas" é estranho; "pelos quais já passaram centenas" é pesado.
- 10 (B): sem título "Diagnóstico de TI: Clínica Odontológica Sorriso Saudável"; "para saber o que precisa ser corrigido primeiro" (invenção); "conformidade com a LGPD dos sistemas de TI" (reatribui a LGPD ao objetivo); "Backup e separação da rede vêm primeiro" (cortado, sem sujeito). (A: "As duas ações podem ser concluídas" ok.)
