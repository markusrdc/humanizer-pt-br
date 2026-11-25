# Avaliação: humanizer-pt-br contra blader/humanizer

Resumo: nos 10 textos de teste, a humanizer-pt-br ganhou da blader/humanizer na grande maioria das comparações cegas (19 de 20 votos na última rodada completa). Perde com frequência num caso, o post de LinkedIn (teste 01): o juiz Opus prefere a reescrita mais livre da blader, embora dê à nossa nota maior de fidelidade. As limitações do método estão no fim; leia antes de citar os números.

## Como foi feito

1. **Textos.** Um agente (Claude Sonnet), sem nenhuma instrução de estilo, escreveu 10 textos em português nos gêneros pedidos: post de LinkedIn, e-mail corporativo, artigo técnico, copy de curso, roteiro de Reels, descrição de produto, resposta de suporte, newsletter, bio de palestrante e resumo executivo. Estão em [originais/](originais/).
2. **Reescrita.** Para cada versão da skill, um agente novo (Claude Opus) leu só o `SKILL.md` e o perfil de voz e reescreveu os 10 textos como se o usuário tivesse colado o texto e pedido "humaniza esse texto", sem amostra de voz. A blader/humanizer (v4.0.0, MIT, Siqi Chen) foi rodada do mesmo jeito, uma vez, com o mesmo modelo; dela usamos a "versão final" que a própria skill entrega.
3. **Julgamento cego.** Para cada texto, as duas reescritas foram rotuladas A e B em ordem sorteada (o mapa de cada rodada está em `mapa-cego.json`). Dois juízes independentes, Claude Opus e Claude Sonnet, receberam só o original e o par, deram notas de 1 a 5 em fidelidade, naturalidade, adequação ao gênero e português, e escolheram um vencedor.

## Placar por rodada

| Rodada | Versão | Mudança principal | Juiz Opus | Juiz Sonnet | Total |
|---|---|---|---|---|---|
| 1 | 1.0 | primeira versão | 9 a 1 (perdeu 01) | 10 a 0 | 19/20 |
| 2 | 1.1 | manter peças do gênero, mesma certeza, lista longa, `[detalhe]` | 10 a 0 | 10 a 0 | 20/20 |
| 3 | 1.2 | regras para conflitos entre regras | 9 a 1 (perdeu 09) | 10 a 0 | 19/20 |
| 4 | 1.3 | clichê avaliativo vira linguagem simples | 8 a 2 (perdeu 01 e 09) | 10 a 0 | 18/20 |
| 5 | 1.4 | lista explícita de clichês de bio e marketing (C1b) | 9 a 1 (perdeu 01) | 10 a 0 | 19/20 |
| 6 | 1.5 | só o teste 01, duas execuções | 0 a 2 | não rodado | 0/2 |

A versão publicada é a **1.5.1**: a 1.5 mais um ajuste no registro ("pra" só quando o original ou a amostra já usam), feito por causa da rodada 6 e **não retestado**.

## O que os juízes apontaram e o que mudou

- **Peças do gênero (rodada 1, corrigido na 1.1).** Os juízes notaram que a blader apagou títulos, nome do curso e chamada para ação em vários testes (03, 04, 06, 08, 10) e inventou detalhes ("em cima da hora", "casos que viveu com clientes"). A nossa 1.0 também trocou "Prezado" por "Olá" e fez uma enumeração mecânica no 01. A 1.1 passou a manter título, nome do produto, seções, saudação e assinatura.
- **Clichê de bio (rodadas 3 e 4, corrigido na 1.4).** Uma regra da 1.2 ("'é apaixonado por' não vira 'gosta de'") fez a skill manter clichês na bio do palestrante. A regra abstrata da 1.3 não bastou; a lista explícita da 1.4 (C1b) resolveu: o 09 venceu nos dois juízes na rodada 5.
- **Post de LinkedIn (rodadas 1, 4, 5 e 6, não resolvido).** É uma troca real, não um bug. A blader reescreve mais livremente e soa mais natural para o juiz Opus, mas acrescenta coisas ("inclusive fora do horário comercial", "trabalho que ainda precisa de uma pessoa") e usa contrastes em molde de IA. A nossa mantém os fatos e a força das afirmações, e por isso guarda mais da estrutura do original. Converter a lista de benefícios em frases (1.0 e 1.5) foi julgado mecânico; manter a lista (1.1 a 1.4) foi julgado "folheto". Uma execução da 1.5 também enfraqueceu "sempre" para "quase sempre", o que é violação da própria regra de certeza.

## Limitações

- **Juízes da mesma família do reescritor.** Os dois juízes e os dois reescritores são modelos Claude. Pode haver viés que nenhum dos dois juízes enxerga.
- **O juiz Sonnet escolheu a nossa skill em 50 de 50 comparações.** Isso sugere que ele discrimina pouco; o juiz Opus é o número mais informativo.
- **A blader rodou uma vez; a nossa, cinco.** A saída da blader foi fixada na rodada 1 e comparada com cada nova versão nossa. Com várias tentativas, a nossa teve mais chances de produzir uma boa saída. A rodada 6 mostrou que o mesmo texto varia entre execuções.
- **A blader foi feita para inglês.** Ela recebeu texto em português com instruções em inglês; não é o uso para o qual foi escrita. A comparação mede o que acontece quando alguém usa a skill em inglês num texto em português, que é a situação real que a humanizer-pt-br quer resolver.
- **Marcadores podem revelar a origem.** Só a nossa skill usa `[detalhe: ...]`; os juízes foram instruídos a tratá-los como neutros, mas o marcador quebra o cego em alguns pares.
- **Amostra pequena e sintética.** Dez textos, todos gerados por um único modelo, sem revisão humana. Nenhum leitor humano julgou as reescritas.
- **Na rodada 4, o prompt dos juízes citou exemplos de clichê de bio** ("apaixonado por", "resultados reais"), o que pode ter favorecido a versão que os corta. As outras rodadas usaram o prompt neutro.

## Como repetir

Os textos, as reescritas de cada rodada, os mapas do sorteio e os vereditos completos estão em `rodada-1/` a `rodada-6/`. Para uma rodada nova: rode a skill nos 10 originais com um agente que leia só o `SKILL.md`, sorteie A e B por texto, guarde o mapa e passe os pares a dois juízes que leiam só o original e o par.
