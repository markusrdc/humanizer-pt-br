# humanizer-pt-br

Skill para Claude que reescreve textos em português do Brasil com cara de IA para que soem escritos por uma pessoa, sem mudar o sentido e sem inventar fatos.

Feita por [Markus Costa](https://markuscosta.com/skills/humanizer-pt-br). Licença MIT.

## O que faz

- **Reescreve** posts, e-mails, artigos, copy, roteiros e relatórios: tira as fórmulas ("vale ressaltar", "no cenário atual", "não é só X, é Y", fecho que repete tudo, ✅ em lista), troca o abstrato pelo concreto que já está no texto e ajusta o registro ao público.
- **Calibra a voz** por uma amostra sua: mande um ou dois textos que você escreveu sem IA, e a reescrita segue o seu ritmo, vocabulário e pontuação. Sem amostra, usa uma voz padrão direta e falada ([referencias/voz-markus.md](referencias/voz-markus.md)).
- **Confere os fatos** antes de entregar: todo número, nome, data e condição do original continua lá, e nada novo entra. Onde faltaria um detalhe concreto, ela marca `[detalhe: ...]` para você preencher, em vez de inventar.
- **Detecta sem reescrever**: peça "só o diagnóstico" e ela devolve uma tabela com os trechos, o padrão de cada um e a sugestão de troca.

Os padrões são de português, não traduzidos do inglês: inclui calques ("endereçar um problema", "no final do dia"), Title Case nos títulos, gerúndio de encadeamento, nominalização, e deixa de fora o que não é sinal em português (sujeito oculto, aspas curvas, travessão de diálogo). A pesquisa por trás está em [pesquisa/RELATORIO.md](pesquisa/RELATORIO.md).

## O que não faz

- **Não burla detector de IA.** Não é o objetivo e não há promessa disso. Detectores erram nos dois sentidos; a skill busca texto bom, não nota de detector.
- Não inventa experiência, número, cliente ou citação para "dar credibilidade".
- Não corrige fato errado do original (ela mantém o sentido; conferir o conteúdo é com você).
- Não é revisor gramatical completo: corrige o que encontra no caminho, mas o foco é estilo.

## Instalação

### Claude Code

Para todos os projetos:

```bash
git clone https://github.com/markusrdc/humanizer-pt-br ~/.claude/skills/humanizer-pt-br
```

Só num projeto: clone dentro de `.claude/skills/` na raiz do projeto. Depois é só pedir ("humaniza esse texto") ou chamar `/humanizer-pt-br`.

### Claude.ai e Claude Desktop

1. Baixe `humanizer-pt-br.zip` na [página de releases](https://github.com/markusrdc/humanizer-pt-br/releases/latest).
2. No Claude, abra **Configurações**, vá em **Capacidades** e ative **Skills**.
3. Envie o ZIP na mesma tela.

O ZIP tem só o que a skill usa (`SKILL.md`, `referencias/`, `LICENSE`, `NOTICE.md`). Para gerá-lo a partir do código: `scripts/empacotar.sh`.

### npx skills

```bash
npx skills add markusrdc/humanizer-pt-br
```

## Como usar

Reescrever:

> Humaniza esse texto: [cole o texto]

Com a sua voz:

> Reescreve esse post com a minha voz. Exemplos de como eu escrevo: [cole 1 ou 2 textos seus]

Só diagnóstico:

> Só detecta os vícios de IA desse e-mail, não reescreve: [cole o texto]

## Exemplo

Abertura de uma newsletter gerada por IA (teste 08) e a saída da skill, sem edição.

Antes:

> Mais um mês se passa e o mundo da inteligência artificial não para de nos surpreender. Se você sente que é impossível acompanhar tudo o que está acontecendo, fique tranquilo: é para isso que esta newsletter existe.
>
> Neste mês, o destaque ficou por conta dos agentes de IA, que ganharam novos recursos e estão cada vez mais capazes de executar tarefas complexas com autonomia. Grandes empresas de tecnologia anunciaram atualizações importantes em seus modelos, trazendo respostas mais precisas, janelas de contexto maiores e custos menores de uso.
>
> Pegue seu café e vamos juntos! Boa leitura.

Depois:

> Se você sente que é impossível acompanhar tudo o que acontece em inteligência artificial, esta newsletter existe para isso.
>
> Neste mês, o destaque foram os agentes de IA. Eles ganharam recursos novos e estão cada vez mais capazes de executar tarefas complexas sozinhos. Grandes empresas de tecnologia atualizaram seus modelos: as respostas ficaram mais precisas, as janelas de contexto maiores e o custo de uso menor.
>
> Pegue seu café e boa leitura.

Os outros nove textos, de e-mail corporativo a roteiro de Reels, e as reescritas de cada rodada estão em [testes/](testes/), com a comparação contra a blader/humanizer em [testes/AVALIACAO.md](testes/AVALIACAO.md).

## Créditos

A estrutura parte de ideias da [blader/humanizer](https://github.com/blader/humanizer) (MIT, Siqi Chen) e da [avoid-ai-writing](https://github.com/conorbronsdon/avoid-ai-writing) (MIT, Conor Bronsdon), com inspiração na skill "humanizar" de [Fabrício Telles](https://gitlab.com/fabriciotelles/skills) e no guia [Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) da Wikipedia. O texto é original. Detalhes e licenças em [NOTICE.md](NOTICE.md).

## Licença

MIT. Veja [LICENSE](LICENSE).
