# Vícios de estilo de texto gerado por IA em português brasileiro (e da prosa burocrática/corporativa que a IA amplifica)

Pesquisa feita em 2026-11-25, com cerca de 17 chamadas de busca e leitura. Legenda de força de evidência usada em todo o documento:

- **[IA-doc]**: há fonte que aponta o padrão como marca de texto de IA. Diz-se se a fonte é PT-BR, PT-PT ou se os dados são do inglês.
- **[prosa-doc]**: há fonte (manual, gramático, revisor) que o condena como prosa ruim em geral, sem ligá-lo à IA.
- **[sem-fonte]**: é plausível, mas não achei fonte nesta rodada. Para a skill, conta só como heurística.

Aviso geral: quase todas as medições quantitativas de marcas de IA (Economist 2026, Graphite 2026, listas da Pangram e da PlusAI) foram feitas sobre textos em **inglês**. A própria Fast Company Brasil adverte que essas frequências "não podem ser aplicadas automaticamente ao português". Não encontrei nenhum estudo de corpus revisado por pares que meça marcas de estilo de LLM em PT-BR. O que existe em PT-BR é jornalismo de divulgação, newsletters de educadores e blogs comerciais.

## 1. Que palavras e estruturas são apontadas como típicas de texto de LLM em PT-BR?

### Takeaway
Fontes brasileiras confirmam um grupo pequeno de marcas: "vale ressaltar", "é importante notar", "em suma/em resumo/em conclusão", "além disso" em todo parágrafo, "não só… como também", "não é X, é Y", regra de três, adjetivos genéricos inflados ("inovador", "transformador", "fascinante"), "crucial/fundamental", "mergulhar" (de *delve*), negrito, emojis e conclusão padronizada. Os sinais estruturais mais confiáveis em 2026 são prolixidade, frases longas ligadas por "e", pouca pontuação interna, comprimento de frase uniforme e nominalização. O travessão **deixou de ser sinal confiável**: os modelos de 2026 quase não o usam. Os anglicismos e calques ("endereçar", "fazer sentido", "no final do dia") e o gerundismo têm apoio como prosa ruim, mas **não achei fonte que os ligue à IA**.

### Cited Findings

**Estudos e reportagens sobre marcas de IA (com escopo e data)**
- A *The Economist* (30/07/2026) comparou 55.940 frases e 1,2 milhão de palavras de textos humanos com textos de ChatGPT, Claude, Gemini e Grok. Os sinais mais confiáveis foram "textos muito prolixos, com pouca pontuação e frases longas". Os LLMs usam menos vírgula, ponto e vírgula e parênteses que humanos. Preferem frases longas encadeadas por "e" ("e" é o termo mais usado em excesso), vocabulário raro e técnico, nominalização, a construção "não é X, é Y", a regra de três e frases de tamanho parecido. O travessão "deixou de ser um indicador confiável". Só o Claude o usa mais que humanos, e o ChatGPT hoje o usa menos que escritores humanos. Os dados são em inglês. — [Fast Company Brasil, Jude Cramer, 07/08/2026](https://fastcompanybrasil.com/ia/esqueca-o-travessao-esses-sinais-entregam-se-um-texto-foi-feito-por-ia/)
- A pesquisa da Graphite sobre o Opus 5.5 (10 mil textos de IA contra 10 mil humanos, em inglês) achou excesso de "matters" (13×), "clearer" (14×), "dependable" (23×), "quietly" (11×) e "practical" (11×). Achou também "this matters because" e "taken together these", fechamentos padronizados e textos mais longos. O travessão caiu 99% e ficou abaixo de 1% da taxa humana. A prosa floreada e as metáforas no lugar de afirmação direta ainda aparecem 1,6× mais que em humanos. O artigo alerta que as frequências não se transferem automaticamente para o português. — [Fast Company Brasil, Jude Cramer, 12/10/2026](https://fastcompanybrasil.com/ia/evite-essas-tres-frases-se-voce-nao-quer-escrever-como-ia/)
- O guia da Wikipédia em inglês "Signs of AI writing", na versão da Fast Company Brasil, lista: simbolismo exagerado ("representa algo maior"); adjetivos inflados ("deslumbrante", "majestoso", "diverso", "fascinante"); conectores em excesso ("no geral", "em resumo"); "não só… como também…"; conclusões que começam com "em conclusão"/"em resumo"; regra de três ("criativa, inteligente e divertida"); polimento excessivo que esconde a falta de conteúdo; negrito, emojis e certa pontuação para dar ênfase; e travessão em excesso, que já não é confiável porque os geradores passaram a evitá-lo. — [Fast Company Brasil, Thomas Smith, 29/08/2025](https://fastcompanybrasil.com/ia/como-saber-se-foi-a-ia-que-escreveu-wikipedia-faz-a-curadoria-dos-cliches/)
- Fonte PT-BR de educador: Marcelo Sabbatini lista "É importante notar que…" e "Vale ressaltar que…"; "crucial", "fundamental", "insight" e "mergulhar" (tradução de *delve into*); os adjetivos genéricos dinâmico, inovador, eficiente, transformador, envolvente, fascinante, disruptivo, poderoso e meticuloso; advérbios em excesso e com pouco sentido; texto longo e repetitivo, sem exemplo concreto, com parágrafos genéricos e coesão fraca; maiúsculas frequentes; vírgula antes do "e" em enumerações (vírgula de Oxford); e fórmulas como "Espero que esta mensagem o encontre bem". O autor avisa que algumas listas exageram, porque essas palavras são vocabulário comum do português. — [IAEdPraxis (Substack), Marcelo Sabbatini, 10/12/2024](https://iaedpraxis101.substack.com/p/texto-chocho-como-identificar-a-escrita)
- A Fast Company Brasil cita "além disso", "em suma" e "vale ressaltar" como conectivos que aparecem "em praticamente todos os parágrafos". O texto também aponta "sentenças curtas", "estrutura uniformizada" e "Não é X. É Y.". Li isso apenas no resumo da busca, não no artigo completo. — [Fast Company Brasil, "5 formas de identificar…"](https://fastcompanybrasil.com/ia/5-formas-identificar-texto-criado-inteligencia-artificial/)
- A Pangram (empresa de detecção) tem uma página em português, na variante **europeia** ("consoante", "vivamente", "estás a abordar"). Ela lista "tapeçaria complexa", "uma narrativa cativante", "fascinante e complexo", "tornar-se um ponto de referência", "tornar-se uma parte essencial", "esbater a fronteira entre", "testemunho da humanidade", "ligação profunda entre" e "É uma excelente pergunta". No texto aparecem ainda "no mundo acelerado de hoje", "mergulhar", "navegar pela tapeçaria de" e "o panorama em constante evolução". A empresa não diz se as frases vêm de corpus em português ou se foram traduzidas do inglês, os dados não têm revisão por pares, e a própria página diz que nenhum sinal isolado prova autoria. — [Pangram PT, atualizado em nov/2026](https://www.pangram.com/pt/resources/most-common-ai-phrases)
- Um blog comercial de "remoção de marca d'água" põe "potencializar", "alavancar", "viabilizar" e "fomentar" entre as palavras típicas de IA em PT. O mesmo blog admite que os detectores olham mais o ritmo e a estrutura das frases do que o vocabulário. É uma fonte fraca e interessada. — [gpt-watermark-remover.com (PT-BR)](https://gpt-watermark-remover.com/pt-br/blog/palavras-tipicas-ia-evitar)
- Um artigo PT-BR diz que o ChatGPT no "modo inspirado" recorre a vocabulário etéreo: "tênue", "sutil", "fugidia". Li só o resumo da busca. — [DIO](https://www.dio.me/articles/como-reconhecer-um-texto-do-chatgpt-quando-ele-entra-no-modo-inspirado-4739ff875147)
- O travessão é pouco comum em textos formais do português do Brasil, e o modelo não tem essa noção. Também é resumo de busca, e a Pangram cita um estudo segundo o qual a IA usa travessão longo 10× mais que humanos. Esse dado é anterior a 2026 e foi contrariado pela Economist e pela Graphite em 2026 (ver acima). — [Pangram PT, sinais de escrita por IA](https://www.pangram.com/pt/signs-of-ai-writing)
- Há uma ressalva contra o travessão como prova: associar travessão a IA é simplista, e escritores brasileiros (Clarice Freire, Natércia Pontes) relatam autocensura. Dois-pontos simples também passaram a ser "rapidamente associados à IA". — [O POVO+, Jansen Lucas, 26/05/2026](https://mais.opovo.com.br/reportagens-especiais/2026/05/26/o-travessao-nao-pertence-ao-chatgpt-nem-qualquer-outro-recurso-da-lingua-portuguesa.html)
- Palavras típicas de LLM já migram para a fala humana: um estudo, feito em inglês, registrou alta de cerca de 51% de "delve" e similares. Isso enfraquece o vocabulário isolado como sinal. — [Na Prática](https://napratica.org.br/ia-jeito-de-falar/); [Olhar Digital, 27/08/2025](https://olhardigital.com.br/2025/08/27/pro/chatbots-de-ia-ja-estao-mudando-a-forma-como-falamos/)

**Gerundismo, anglicismos e calques (prosa ruim; ligação com IA não documentada)**
- Eduardo Martins, autor do Manual de Redação e Estilo do *Estadão*, condena o gerundismo como "influência maldigerida do inglês em frases como *I will be sending* ('vou mandar' e não 'vou estar mandando')". É citação secundária, colhida em resumo de busca. — [UFMG, monografia](https://repositorio.ufmg.br/bitstream/1843/45811/1/MONOGRAFIA%20-%20ARQUIVO%20.pdf); [Exame](https://exame.com/carreira/como-usar-e-evitar-o-gerundio/)
- Contraponto linguístico: "ir + estar + gerúndio" pode marcar futuro com duração ("vou estar morando"), então a construção nem sempre é erro. — [Linguasagem/UFSCar](https://linguasagem.ufscar.br/index.php/linguasagem/article/download/541/304/1475)
- "Endereçar" no sentido de "abordar" (de *to address*) e "aplicar" no lugar de "candidatar-se" aparecem como calques semânticos do inglês. Li só o resumo da busca, porque o PDF não abriu como texto. — [Anais SIIEPE/UFPel 2025](https://anais-siiepe.ufpel.edu.br/2025/LA_04675.pdf)
- Dad Squarisi (Correio Braziliense) recomenda trocar anglicismos crus pelo equivalente em português ("estartar" → "começar", "deadline" → "prazo"). O texto não trata de calques de frase. — [Blog da Dad, 06/02/2023](https://blogs.correiobraziliense.com.br/dad/anglicismos-chamam-a-atencao-na-lingua-portuguesa/)
- "Fazer sentido": os dicionários bilíngues o registram como equivalente normal de *make sense*, e não achei fonte que o classifique como anglicismo condenável. — [WordReference](https://jann.wordreference.com/enpt/sense); [fórum Practice Portuguese](https://forum.practiceportuguese.com/t/faz-sentido-vs-tem-sentido/4205)

### Catálogo consolidado (para a skill)

Os exemplos de antes e depois foram escritos por mim para ilustrar e não saíram das fontes. A coluna "Evidência" segue a legenda do topo.

| # | Padrão | Antes (IA/burocratês) | Depois (humano) | Evidência |
|---|---|---|---|---|
| 1 | Muletas de ênfase vazias: "vale ressaltar", "é importante destacar/notar/salientar" | "Vale ressaltar que o prazo termina dia 10." | "O prazo termina dia 10." | [IA-doc] PT-BR (Sabbatini; Fast Company BR) |
| 2 | Conectivo em todo parágrafo ("além disso", "nesse sentido", "neste contexto") | "Além disso, o sistema… Nesse sentido, a equipe…" | Ligue as ideias pela ordem e pelo conteúdo e corte o conectivo quando a relação for óbvia. | [IA-doc] para "além disso" (Fast Company BR); [sem-fonte] para "neste contexto" |
| 3 | Fecho-resumo: "em suma", "em resumo", "em conclusão", "no geral" | "Em suma, a ferramenta é eficiente, segura e acessível." | Termine na última informação nova, ou numa consequência concreta. | [IA-doc] (Wikipedia via Fast Company BR; Pangram) |
| 4 | Abertura com cenário genérico: "no cenário atual", "no mundo atual/acelerado de hoje", "em constante evolução" | "No cenário atual, em constante evolução, as empresas…" | Comece pelo fato: "Em 2025, 40% das empresas…" | [IA-doc] fraco, PT-PT (Pangram: "no mundo acelerado de hoje", "panorama em constante evolução"); [sem-fonte] em PT-BR |
| 5 | "Desempenha um papel fundamental/crucial" e "crucial/fundamental" soltos | "A comunicação desempenha um papel fundamental no projeto." | "Sem a reunião semanal, o projeto atrasava." | [IA-doc] para "crucial/fundamental" (Sabbatini); [sem-fonte] para a locução inteira |
| 6 | "Mergulhar" (de *delve*), "navegar", "tapeçaria", "jornada" | "Vamos mergulhar nos detalhes dessa jornada." | "Os detalhes:" ou entre direto no assunto. | [IA-doc] para "mergulhar" (Sabbatini; Pangram) e "tapeçaria" (Pangram, PT-PT); [sem-fonte] para "jornada" |
| 7 | Verbos de consultoria: "potencializar", "alavancar", "otimizar", "viabilizar", "fomentar" | "Para alavancar e potencializar resultados…" | "Para vender mais…" | [IA-doc] fraco (blog comercial); [sem-fonte] para "otimizar" e "robusto" |
| 8 | Adjetivos genéricos inflados: inovador, transformador, robusto, dinâmico, fascinante, disruptivo, poderoso | "Uma solução inovadora, robusta e transformadora." | Diga o que a solução faz: "Gera a nota fiscal em 3 segundos." | [IA-doc] PT-BR (Sabbatini); Wikipedia via Fast Company BR |
| 9 | Paralelismo "não apenas X, mas também Y" / "não só… como também" | "Não apenas reduz custos, mas também melhora a qualidade." | "Reduz custos e melhora a qualidade." | [IA-doc] (Wikipedia via Fast Company BR; Economist) |
| 10 | Antítese "não é X, é Y" | "Não é sobre tecnologia. É sobre pessoas." | Afirme só o que importa, com evidência. | [IA-doc] (Economist 2026; Fast Company BR) |
| 11 | Regra de três (tríades de adjetivos ou itens) | "Ágil, eficiente e escalável." | Um atributo, provado. | [IA-doc] (Economist 2026; Wikipedia) |
| 12 | Advérbios em -mente em excesso | "É extremamente importante e fundamentalmente necessário…" | "É necessário…" | [IA-doc] PT-BR (Sabbatini: "advérbios em excesso"); [prosa-doc]: o MRPR pede concisão (ver seção 2) |
| 13 | Prolixidade, frases longas encadeadas por "e", pouca pontuação interna, frases de tamanho uniforme | Bloco de frases de 30 palavras, todas parecidas, emendadas com "e". | Varie o tamanho, quebre a frase, use vírgula, ponto e vírgula e parênteses quando servirem. | [IA-doc] **é o sinal mais confiável em 2026** (Economist, dados em inglês) |
| 14 | Nominalização: "realizar a implementação", "efetuar o pagamento" | "Será realizada a implementação do sistema." | "Vamos implantar o sistema." | [IA-doc] (Economist: "nominalização"); [prosa-doc] (manuais de concisão, ver seção 2) |
| 15 | Voz passiva analítica inflada: "foi realizada uma análise" | "Foi realizada uma análise dos dados." | "Analisamos os dados." | [prosa-doc] (princípio de concisão e clareza do MRPR); [sem-fonte] como marca de IA em PT |
| 16 | Gerundismo: "vou estar enviando" | "Vou estar enviando o relatório." | "Envio o relatório amanhã." | [prosa-doc] (Eduardo Martins/Estadão, secundário); [sem-fonte] como marca de IA. LLMs raramente produzem isso por escrito: é vício de telemarketing. [Chute] |
| 17 | Calques semânticos: "endereçar um problema", "aplicar para uma vaga", "suportar" (= *support*), "eventualmente" (= *eventually*) | "Precisamos endereçar esse problema." | "Precisamos resolver/tratar esse problema." | [prosa-doc] para "endereçar" e "aplicar" (UFPel 2025, resumo); [sem-fonte] para "suportar" e "eventualmente" nesta rodada |
| 18 | "No final do dia" (*at the end of the day*), "faz sentido" | "No final do dia, o que importa é…" | "No fim das contas…" ou corte. | [sem-fonte] para "no final do dia". Para "fazer sentido" a evidência é **contrária**: o uso é dicionarizado e normal, então **não deve entrar como vício** |
| 19 | Possessivo excessivo calcado do inglês ("seu/sua"), artigo indefinido excessivo ("um/uma") | "Abra o seu navegador e digite a sua senha." | "Abra o navegador e digite a senha." | [sem-fonte] nesta rodada |
| 20 | Title Case em títulos ("Como Melhorar Sua Produtividade") | "Como Melhorar Sua Produtividade No Trabalho" | "Como melhorar a produtividade no trabalho" | [prosa-doc]: pelo Acordo, Base XIX, as palavras após a primeira podem ir em minúscula (ver seção 4); [sem-fonte] como marca de IA em PT |
| 21 | Travessão em excesso | "O resultado — surpreendente — veio rápido." | Use vírgula ou parênteses quando bastar. | [IA-doc] **desatualizado**: fontes de 2026 dizem que já não é sinal. Tratar só como questão de estilo PT-BR. |
| 22 | Dois-pontos, listas com marcador e **negrito** em texto corrido; emojis | "**Benefícios:** ✅ rapidez ✅ economia" | Prosa corrida, ou lista sem negrito e sem emoji quando o gênero pedir. | [IA-doc] (Wikipedia via Fast Company BR; O POVO sobre dois-pontos) |
| 23 | Pergunta retórica de abertura | "Você já se perguntou por que…?" | Comece pela resposta. | [sem-fonte] nesta rodada |
| 24 | Simbolismo e metáfora no lugar de afirmação ("representa algo maior", "testemunho de") | "O prédio é um testemunho da resiliência da cidade." | "O prédio resistiu a duas enchentes." | [IA-doc] (Wikipedia via Fast Company BR; Graphite: 1,6× mais; Pangram "testemunho da humanidade") |
| 25 | Fórmulas de cortesia e de assistente: "Espero que esta mensagem o encontre bem", "Ótima pergunta!", "Claro! Aqui está" | "Ótima pergunta! Claro, aqui está…" | Responda direto. | [IA-doc] (Sabbatini; Pangram: "É uma excelente pergunta", "Claro! Aqui está" com 70×) |
| 26 | Falta de exemplo concreto, nome próprio e número | "Diversos estudos mostram benefícios significativos." | "Um estudo da USP com 300 alunos…" | [IA-doc] PT-BR (Sabbatini) |
| 27 | Vírgula de Oxford ("A, B, e C") | "rápido, barato, e seguro" | "rápido, barato e seguro" | [IA-doc] PT-BR (Sabbatini); a norma do português dispensa vírgula antes do "e" aditivo em enumeração [Provável, sem fonte normativa colhida] |
| 28 | "Ajuda a entender", "isso importa porque", "o artigo explica" (metadiscurso) | "Isso importa porque ajuda a entender…" | Diga a consequência. | [IA-doc] (Graphite 2026, dados em inglês, para o Opus 5.5) |

### Inferences
- [Provável] Para a skill, a estrutura (prolixidade, ritmo uniforme, fecho-resumo, tríades, antíteses, ausência de concretude) pesa mais que listas de palavras. As medições de 2026 apontam isso, e os próprios blogs comerciais admitem que o vocabulário isolado é sinal fraco.
- [Provável] As marcas mudam com cada versão de modelo: o travessão foi sinal em 2024–2025 e deixou de ser em 2026. A skill deve corrigir o padrão porque ele é prosa ruim, não porque "parece IA".
- [Chute] Em PT-BR, parte do "sotaque de IA" vem de calques do inglês: possessivo excessivo, "mergulhar", "jornada", "não apenas… mas também", Title Case. Isso é coerente com modelos treinados majoritariamente em inglês, mas não achei estudo que o comprove para o português.
- [Provável] Gerundismo e "vou estar enviando" são vícios humanos de atendimento, não marcas de LLM. Vale manter na skill como prosa ruim, sem rotulá-los como marca de IA.

### Gaps
- Não achei estudo de corpus (SciELO, arXiv, ACL) que meça frequência de expressões de LLM em **PT-BR**. A busca na SciELO trouxe apenas estudos de densidade lexical, ambiguidade e LSF, sem estilometria.
- Não confirmei com fonte "no final do dia", "suportar" (= *support*), "eventualmente" (= *eventually*), "baseado em", possessivo e artigo indefinido excessivos, pergunta retórica de abertura, "jornada", "robusto", "otimizar", "neste contexto" e "desempenha um papel".
- Não li a matéria original da Economist (paywall). Os números vêm da versão da Fast Company Brasil.
- Não achei posts de revisores brasileiros no LinkedIn ou no Medium com listas de "palavras de ChatGPT" que sejam verificáveis.

## 2. O que dizem os manuais brasileiros (Folha, Estadão, Presidência) sobre esses vícios?

### Takeaway
Nesta rodada não consegui ler o texto dos manuais diretamente: as fontes sobre eles são secundárias. O que ficou documentado: o Manual de Redação da Presidência da República (3ª ed., 2018) tem como atributos clareza, precisão, objetividade, concisão, coesão, impessoalidade e norma padrão, e há material de treinamento que trata jargão, clichê e chavão como problemas distintos. O Manual da Folha condena metáforas gastas por perderem força expressiva. Eduardo Martins, do Estadão, condena o gerundismo como influência do inglês.

### Cited Findings
- O MRPR (3ª ed., 2018) define como atributos da redação oficial: clareza e precisão, objetividade, concisão, coesão e coerência, impessoalidade, formalidade e padronização, e uso da norma padrão. Recomenda usar as palavras no sentido comum, mesmo em assunto técnico. — [MRPR 3ª ed. (PDF, UFGD)](https://files.ufgd.edu.br/arquivos/arquivos/78/PROTOCOLO/Normas%20Internas/Manual%20de%20Reda%C3%A7%C3%A3o%20da%20Presid%C3%AAncia%20da%20Rep%C3%BAblica%20-%203%C2%AA%20edi%C3%A7%C3%A3o,%20revista,%20atualizada%20e%20ampliada.pdf); [gov.br](https://www.gov.br/pt-br/servicos/consultar-o-manual-de-redacao-da-presidencia-da-republica)
- Material didático de redação oficial do Ministério da Agricultura trata "Jargão fora do contexto", "Clichê" e "Chavão" como tópicos separados, e o guia de linguagem simples da Unicamp tem uma seção sobre chavões. Li só o resumo da busca. — [Enagro/MAPA](https://enagro.agricultura.gov.br/cursos-e-capacitacao/material-didatico-pasta/arquivos/redacao-oficial.pdf); [Unicamp, Guia de Redação Oficial](https://linguagemsimples.unicamp.br/arquivo/uploads/guia-de-redacao-oficial)
- Um artigo acadêmico reproduz trecho do Manual da Redação da Folha (2001) segundo o qual metáforas gastas perdem força expressiva. — [Revista Argumento/Anchieta](https://revistas.anchieta.br/index.php/revistaargumento/article/download/576/494)
- Uma lista **secundária**, não confirmada no manual, atribui à Folha a recomendação de evitar "abrir com chave de ouro", "antes de mais nada", "familiares inconsoláveis", "ataque fulminante" e "fazer por merecer". — [Recanto das Letras](https://www.recantodasletras.com.br/dicas/2798958)
- Eduardo Martins (Manual de Redação e Estilo do Estadão) sobre gerundismo: ver a seção 1. — [UFMG](https://repositorio.ufmg.br/bitstream/1843/45811/1/MONOGRAFIA%20-%20ARQUIVO%20.pdf)
- Dad Squarisi (Correio Braziliense) recomenda preferir o equivalente vernáculo a anglicismos crus. — [Blog da Dad](https://blogs.correiobraziliense.com.br/dad/anglicismos-chamam-a-atencao-na-lingua-portuguesa/)

### Inferences
- [Provável] A concisão, a clareza e a rejeição de chavões no MRPR servem de autoridade para cortar os itens 1–5, 12, 14 e 15 do catálogo. Cite o princípio, não um trecho literal, até a confirmação no PDF.
- [Chute] O manual da Folha deve ter verbetes sobre gerúndio, clichês e "voz passiva", mas não verifiquei.

### Gaps
- Não acessei o texto atual do Manual da Redação da Folha (edição de 2018 ou posterior) nem o do Estadão. Fica por confirmar se eles tratam explicitamente de "vale ressaltar", nominalização, queísmo ou passiva.
- Não li o texto literal do MRPR sobre jargão e chavões, que está no PDF citado e precisa de leitura dirigida.
- Não achei verbetes do Ciberdúvidas sobre "fazer sentido" ou "no final do dia". O Ciberdúvidas é de PT-PT e, de qualquer forma, precisaria da ressalva de variante.

## 3. Há artigos acadêmicos ou jornalísticos brasileiros que analisem o português do ChatGPT?

### Takeaway
No jornalismo há bastante divulgação (Fast Company Brasil, O POVO+, Forbes Brasil, Canaltech, Olhar Digital), quase sempre repassando estudos feitos em inglês. Na academia, não achei estudo de estilometria de LLM em PT-BR. Os trabalhos encontrados tratam de densidade lexical, ambiguidade e LSF.

### Cited Findings
- Estudo na SciELO (*Trabalhos em Linguística Aplicada*) sobre densidade lexical de tarefas geradas pelo ChatGPT em cinco línguas, entre elas o português. — [SciELO TLA](https://www.scielo.br/j/tl/a/crx3yywCw3LSxtjtdv44mDC/?lang=pt)
- Estudo sobre ambiguidade em LLMs (ChatGPT 3.5 e Gemini) com 120 frases em português. — [Texto Livre/UFMG, 2025](https://periodicos.ufmg.br/index.php/textolivre/article/view/53181)
- Estudo sobre provérbios brasileiros no ChatGPT, feito com linguística de corpus no AntConc. — [Confluência, 2025](https://revistaconfluencia.org.br/rc/article/download/1436/1159/4016)
- Reportagem sobre o debate do travessão com escritores brasileiros. — [O POVO+, 26/05/2026](https://mais.opovo.com.br/reportagens-especiais/2026/05/26/o-travessao-nao-pertence-ao-chatgpt-nem-qualquer-outro-recurso-da-lingua-portuguesa.html)
- Na época da busca, a Turnitin detectava escrita por IA apenas em inglês, segundo material da UFC. Li só o resumo da busca. — [UFC, PRPPG](https://prppg.ufc.br/wp-content/uploads/2025/02/turnitin-dicas-ia-em-portugues.pdf)

### Inferences
- [Provável] A skill não deve anunciar seus padrões como "comprovados para PT-BR". Eles se apoiam em transferência de estudos em inglês, em observação de educadores e em normas de boa prosa.

### Gaps
- Não achei artigos de Folha, Estadão, Nexo, Piauí, Revista Pesquisa FAPESP ou The Conversation Brasil especificamente sobre o estilo do ChatGPT em português. Não fiz busca dirigida a esses domínios.
- Não achei papers no arXiv sobre detecção ou estilo de texto de LLM em português.

## 4. Regras tipográficas relevantes (travessão, maiúsculas em títulos, aspas)

### Takeaway
A tradição brasileira de títulos e cabeçalhos é maiúscula só na primeira palavra e nos nomes próprios. O Acordo Ortográfico, Base XIX, permite minúscula nas demais palavras, então Title Case em português soa importado. O travessão é recurso legítimo e tradicional do português, mas é pouco usado em texto formal brasileiro. Não achei fonte normativa sobre aspas e ponto final.

### Cited Findings
- Base XIX, item 1c (resumo): "Após a primeira letra, de uso maiúscula, as demais palavras podem ser escritas com minúscula, salvo os nomes próprios", com os exemplos *O senhor do paço de Ninães*, *Menino de engenho* e *Árvore e tambor*. Títulos de periódicos levam maiúscula (*O Estado de São Paulo*). — [InfoEscola, Base XIX](https://www.infoescola.com/acordo-ortografico/base-xix-minuscula-e-maiuscula); texto oficial: [Acordo Ortográfico (Senado)](https://www2.senado.leg.br/bdsf/bitstream/handle/id/182955/Acordo_Ortografico_da_Lingua_Portuguesa.pdf?sequence=8)
- Outras fontes dizem que a maiúscula nas demais palavras do título é **facultativa**: o que se exige é distinguir o título do resto do texto. — [Jurisway](https://jurisway.org.br/cursos/1275-uso-das-letras-maiusculas-e-minusculas-no-novo/24); [TJSC, dicas de português](https://www.tjsc.jus.br/web/servidor/dicas-de-portugues/-/asset_publisher/0rjJEBzj2Oes/content/letras-maiusculas-e-minusculas-quando-usar-)
- O travessão é pontuação tradicional da literatura, da crônica e do jornalismo em português, e o uso não é marca de IA. — [O POVO+](https://mais.opovo.com.br/reportagens-especiais/2026/05/26/o-travessao-nao-pertence-ao-chatgpt-nem-qualquer-outro-recurso-da-lingua-portuguesa.html)
- O travessão é pouco comum em ambiente formal do português do Brasil. Li só o resumo da busca, sem norma citada. — [Pangram PT](https://www.pangram.com/pt/signs-of-ai-writing)
- Sabbatini aponta como marca de IA o ponto final dentro da citação direta, o que sugere que a convenção brasileira usual é outra. — [IAEdPraxis](https://iaedpraxis101.substack.com/p/texto-chocho-como-identificar-a-escrita)

### Inferences
- [Provável] Regra prática para a skill: em títulos, use maiúscula só na primeira palavra e nos nomes próprios. É legal pelo Acordo e é o padrão editorial brasileiro mais comum (manuais de jornal), mas não confirmei os manuais.
- [Provável] Travessão: não elimine por princípio. Corte quando houver vários por parágrafo ou quando vírgula ou parênteses bastarem. Em PT, o travessão também introduz fala em diálogo, uso que não existe em inglês.

### Gaps
- Não colhi a regra normativa sobre a posição do ponto final em relação às aspas em PT-BR (ABNT/Bechara/Cegalla), nem sobre aspas curvas ou retas.
- Não confirmei nos manuais da Folha e do Estadão a regra de caixa alta e baixa em títulos.
- Não colhi fonte sobre a diferença de uso do travessão entre PT e EN (espaçamento, travessão contra meia-risca).
