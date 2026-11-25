# Construir o humanizer-pt-br exige catálogo próprio

Nenhuma skill existente serve de base direta para o humanizer-pt-br: a mais popular em PT-BR (mackswendhell, 80 estrelas) é uma tradução do blader/humanizer sem o crédito que a licença MIT exige [Provável], a mais sofisticada (Fabrício Telles, Apache-2.0) é pesada e traz obrigações de licença, e a "nem-parece-ia" aponta para uma licença com Commons Clause que proíbe cobrar por consultoria derivada dela [Certo]. O caminho mais limpo é escrever o catálogo e os exemplos do zero, em português, aproveitando como ideias (que não têm proteção autoral) a arquitetura das duas skills em inglês: a ordem por força do sinal e a passada final de "o que sobreviveu" do blader, e os modos rewrite/detect/edit com severidade P0 a P2 do avoid-ai-writing [Provável]. A evidência sobre o que denuncia IA em português é fina: há um único estudo com números para PT-BR, com corpus de um conto por condição, e o resto vem de jornalismo de divulgação que repassa estudos em inglês e de observação de educadores [Certo]. Por isso a skill precisa tratar a maior parte dos padrões como prosa ruim a corrigir, e não como prova de autoria, que é exatamente a postura do guia da Wikipedia e das skills mais cuidadosas [Provável]. Três decisões de projeto saem desta pesquisa: proibir a invenção de detalhes (o blader passou a permitir na v4.0.0, o avoid-ai-writing proíbe), reescrever do zero as regras tipográficas (travessão, Title Case, aspas, vírgula de Oxford), que em português funcionam de outro jeito, e incluir um modo só de diagnóstico, que nenhuma skill PT-BR oferece com esse nome [Provável].

## O blader dita a estrutura e o avoid-ai-writing dita os modos

O **blader/humanizer** é a referência de todo o ecossistema: **73.518 estrelas**, licença MIT com a linha `Copyright (c) 2025 Siqi Chen`, último commit em **19/11/2026** (a32f244) ([GitHub](https://github.com/blader/humanizer)) [Certo]. A v4.0.0 cabe num único SKILL.md com **26 padrões em seis grupos (A a F), ordenados do mais forte para o mais fraco**: os cinco primeiros (antítese "not X but Y", fechos de uma linha, frases que soam profundas, preâmbulo encenado, discutir com ninguém) justificam edição em uma única ocorrência, enquanto os marcados como *weak alone* precisam de outro sinal por perto ([SKILL.md](https://github.com/blader/humanizer/blob/main/SKILL.md)) [Certo]. O processo tem quatro passos, e o terceiro confere se algum fato, nome, número, data ou citação se perdeu e relê os padrões que mais sobrevivem à primeira reescrita. A saída padrão entrega a primeira reescrita, a lista do que sobreviveu e a versão final. A calibração de voz usa uma amostra colada pelo usuário, que **prevalece sobre as regras**, inclusive a de travessão. Não há modo só de detecção [Certo]. A mudança mais relevante para nós está no CHANGELOG: desde a 4.0.0 a skill permite acrescentar "um detalhe específico que você sabe ser verdadeiro", revertendo a proibição de invenção da 2.9.0 ([CHANGELOG](https://github.com/blader/humanizer/blob/main/CHANGELOG.md)) [Certo]. O README diz que a skill edita para leitores humanos, que não tenta passar em detectores e que os detectores ainda sinalizam a maior parte da saída dela [Certo].

O **conorbronsdon/avoid-ai-writing** vai para o lado oposto em tamanho: **6.303 estrelas**, MIT com `Copyright (c) 2026 Conor Bronsdon`, último commit em **24/11/2026** (v3.39.1) ([GitHub](https://github.com/conorbronsdon/avoid-ai-writing)) [Certo]. O SKILL.md é fino e obriga a carregar um `references/patterns.md` de 125 KB com **74 categorias de padrão e uma tabela de 112 palavras em três níveis**, além de um detector em JavaScript, um validador de preservação e um normalizador de aspas ([patterns.md](https://github.com/conorbronsdon/avoid-ai-writing/blob/main/references/patterns.md)) [Certo]. Tem três modos com gatilhos explícitos: `rewrite` (padrão), `detect` (acionado por "flag only", "audit only", "scan") e `edit` (arquivo no lugar). O modo `detect` devolve só "Issues found" agrupado por severidade P0, P1 e P2 e uma avaliação que separa problema claro de questão de gosto, e precisa dizer se o detector rodou ou se a auditoria foi só do modelo ([SKILL.md](https://github.com/conorbronsdon/avoid-ai-writing/blob/main/SKILL.md)) [Certo]. Perfis de contexto (linkedin, blog, docs, casual) e de voz (casual, professional, technical, warm, blunt) são eixos independentes, e a amostra do autor, quando existe, substitui o perfil. A lista "Never inject these" proíbe perspectiva inventada, sinceridade encenada, conversão em frases picotadas e **detalhes inventados** ("um específico fabricado é pior que a frase vaga que ele substituiu"), motivada por um teste que achou na saída do blader "uma nova impressão digital, não a ausência de uma" [Certo]. A própria skill avisa que suas regras são **calibradas para o inglês** e que aplicá-las a outra língua "exige regras e evidência específicas da língua" [Certo].

Para o projeto, isso significa copiar ideias de arquitetura dos dois e nenhuma lista de palavras [Provável]. O catálogo de 125 KB é pesado demais para uma skill que se quer enxuta, e o próprio README avisa que a versão em arquivo único estoura alguns campos de instrução [Provável].

## As skills em PT-BR repetem o blader e poucas acrescentam algo

O **mackswendhell/humanizer-pt-br** tem **80 estrelas e 527 instalações** no skills.sh, mas apenas dois commits, ambos de **10/05/2026** ([GitHub](https://github.com/mackswendhell/humanizer-pt-br); [skills.sh](https://skills.sh/mackswendhell/humanizer-pt-br/humanizer-pt-br)) [Certo]. É um arquivo só, com 25 padrões em quatro grupos, rubrica de 50 pontos, sem amostra de voz, sem modo de detecção e sem trava contra invenção: a seção "Personalidade e Voz" manda "ter opinião" e "usar eu" sem limite ([SKILL.md](https://github.com/mackswendhell/humanizer-pt-br/blob/main/SKILL.md)) [Certo]. A licença é MIT com `Copyright (c) 2026 mackswendhell`, e o texto credita só a Wikipedia. O exemplo dos "3 milhões de linhas de código, geradas enquanto os humanos presumivelmente dormiam" é a tradução de um exemplo do blader v2.5.1, publicado nove dias antes, e a ordem dos grupos segue a do blader v2.x ([blader v2.5.1](https://github.com/blader/humanizer/blob/564b7aa13856cad583c203ef62569f4e5a4bfce3/SKILL.md)) [Provável]. Outro autor chama o repo de "port" do blader ([eurafaeldecarvalho](https://github.com/eurafaeldecarvalho/humanizer-pt-br)) [Certo]. O que o mack tem de próprio é pouco: a lista de vocabulário PT-BR e os pares de enchimento como "devido ao fato de" → "porque" [Provável].

A **"humanizar" de Fabrício Telles** é a skill PT-BR mais completa. O repositório existe em duas grafias: `fabriciotelles/skills` no GitLab (0 estrelas) e `fabricioctelles/skills` no GitHub (**146 estrelas**, endereço que a própria skill cita) ([GitHub](https://github.com/fabricioctelles/skills)) [Certo]. O último commit do repo é de **20/11/2026**, e o último que mexe na humanizar é de **10/10/2026** (v1.7.0) ([commits](https://gitlab.com/fabriciotelles/skills/-/commits/main/skills/humanizar)) [Certo]. O SKILL.md tem cerca de 60 KB e dez arquivos de referência, entre eles um `padroes-exclusivos-pt-br.md` de 36 KB. Traz **trava factual** (a candidata que perde fato é descartada), triagem que recusa bula, texto médico, contrato e lei, quatro modos (`modo_completo`, `modo_direto`, `modo_revisão`, `modo_criacao`), doze perfis de voz, amostra do autor com prioridade explícita (perfil pedido > amostra > perfil detectado > voz neutra), guarda contra falso positivo e auditoria nos dois sentidos, da fonte para a candidata e da candidata para a fonte ([SKILL.md](https://gitlab.com/fabriciotelles/skills/-/blob/main/skills/humanizar/SKILL.md)) [Certo]. Não há modo só de detecção com esse nome; o `modo_revisão` entrega diagnóstico e relatório. A posição sobre detectores é a mais clara do ecossistema: nenhuma reescrita garante que uma ferramenta classifique o texto como humano, e os detectores penalizam mais neurodivergentes e não nativos [Certo]. A licença é Apache-2.0, com a linha `Copyright 2025 ft.ia.br` no apêndice do LICENSE, sem NOTICE na raiz e com um NOTICE em `plugins/deslop-writing/` que credita blader/humanizer, brandonwise/humanizer, Wikipedia e tropes.fyi ([NOTICE](https://gitlab.com/fabriciotelles/skills/-/blob/main/plugins/deslop-writing/NOTICE)) [Certo]. Um ponto de atenção: Telles afirma que LLMs produzem gerundismo ("vou estar enviando"), mas nenhuma fonte encontrada sustenta isso, e o mais provável é que seja vício humano de atendimento [Chute].

A **"nem-parece-ia"**, de Marcel Serrano (MSCREATIVE.SYSTEMS), tem **0 estrelas** no repo vitrine `1marcelserrano/nem-parece-ia` (push em 16/11/2026) e 1 estrela no `mscreative-skills` (último commit em 24/11/2026) ([GitHub](https://github.com/1marcelserrano/nem-parece-ia)) [Certo]. Declara ser adaptação do hardikpandya/stop-slop e acrescenta ideias próprias: "hermetismo" (jargão inventado sem explicação), teste de permissão para metáforas, uma dimensão "Vida" na rubrica de 60 pontos e uma auto-auditoria final ("o que ainda denuncia origem artificial aqui?"). Calibra por registro (social, e-mail, institucional, técnico, acadêmico, comercial, criativo), sem amostra do autor, e entrega diagnóstico, revisão e tabela antes/depois/motivo, sem modo só de diagnóstico [Certo]. O problema é a licença, tratado adiante.

Entre os outros quinze repositórios PT-BR encontrados, quase todos traduzem o blader ou o stop-slop e têm de 0 a 13 estrelas [Provável]. Três se destacam pelo método. O **eurafaeldecarvalho/humanizer-pt-br** escreveu o catálogo do zero, publica uma checagem de n-gramas contra os SKILL.md do blader, do Humanizer-zh e do mack, e mede falso positivo das próprias regex comparando 30 textos de IA com 30 parágrafos de Machado, Aluísio Azevedo, Lima Barreto e Raul Pompeia ([GitHub](https://github.com/eurafaeldecarvalho/humanizer-pt-br)) [Certo]. O **alexccastilho/humanizer-pt-br** tem evals com juiz e CI ([GitHub](https://github.com/alexccastilho/humanizer-pt-br)) [Certo]. O **geovani-ariel/humanizer-pt-br** tem testes de regressão com baselines ([GitHub](https://github.com/geovani-ariel/humanizer-pt-br)) [Certo]. O AndreAlmeidaDC/humanizador tem 13 estrelas, mas **não tem arquivo LICENSE**, embora o README diga MIT ([GitHub](https://github.com/AndreAlmeidaDC/humanizador)) [Certo].

### Tabela comparativa

| Skill | Padrões | Estrutura | Calibração de voz | Modos (detect-only?) | Licença e linha de copyright literal | Último commit | Estrelas | O que derivar |
|---|---|---|---|---|---|---|---|---|
| blader/humanizer | 26 em 6 grupos, do mais forte ao mais fraco, com gating *weak alone* | 1 SKILL.md (v4.0.0), sem references | Amostra colada prevalece sobre as regras; sem amostra, ajusta ao tipo de texto | Texto colado, arquivo, embutido. **Sem detect-only** | MIT, `Copyright (c) 2025 Siqi Chen` | 19/11/2026 | 73.518 | Ordem por força, gating, passada "o que sobreviveu", modo arquivo que protege código. Texto só com aviso MIT; exemplos vindos da Wikipedia não |
| conorbronsdon/avoid-ai-writing | 74 categorias + 112 palavras em 3 níveis, severidade P0/P1/P2 | SKILL.md fino + patterns.md (125 KB) + detector JS + validador | Perfis de contexto × perfis de voz; amostra substitui o perfil; lista "Never inject" | rewrite, **detect**, edit; até 2 passadas | MIT, `Copyright (c) 2026 Conor Bronsdon` (NOTICE credita Mamdouh Aboammar pelo empacotamento) | 24/11/2026 | 6.303 | Modos e gatilhos, severidade, bloco de verificação, lista "Never inject". Listas de palavras não servem para PT |
| mackswendhell/humanizer-pt-br | 25 em 4 grupos | 1 SKILL.md, rubrica /50 | Não pede amostra; "Personalidade e Voz" genérica, sem trava | Só reescrita. **Sem detect-only** | MIT, `Copyright (c) 2026 mackswendhell` (sem o aviso do blader) | 10/05/2026 | 80 | Nada que não esteja melhor no blader. Se copiar, atribuição dupla |
| fabriciotelles "humanizar" | 55+ (10+ exclusivos PT-BR: gerundismo, oficialês, ENEM-ismo, ênclise forçada, purismo) | SKILL.md ~60 KB + 10 references + JSON de perguntas | 12 perfis + amostra com ordem de prioridade; texto-fonte como amostra | completo, direto, revisão, criação. **Sem detect-only** com esse nome (revisão faz diagnóstico) | Apache-2.0, `Copyright 2025 ft.ia.br` | 20/11/2026 (repo); 10/10/2026 (skill) | 146 (GitHub), 0 (GitLab) | Ideias: trava factual, triagem, auditoria nos dois sentidos, guarda de falso positivo. Texto só cumprindo a Apache-2.0 |
| nem-parece-ia (Marcel Serrano) | ~20 estruturas + frases, metáforas, hermetismo, formatação | SKILL.md 7,7 KB + 10 references sob demanda | Por registro (8 tipos), sem amostra | Diagnóstico + revisão. **Sem detect-only** | Vitrine: MIT, `Copyright (c) 2026 MSCREATIVE.SYSTEMS™ and contributors`; NOTICE aponta para MIT + **Commons Clause** | 16/11/2026 (vitrine); 24/11/2026 (mscreative-skills) | 0 / 1 | Nenhum texto. Ideias só reescritas do zero |
| eurafaeldecarvalho/humanizer-pt-br | Catálogo próprio | SKILL + eval + `detector.py` + CI | Não verificado | Não verificado | MIT, `Copyright (c) 2026 Rafael de Carvalho` | criado em 29/10/2026 | 0 | Método de eval com controle humano em domínio público |
| alexccastilho/humanizer-pt-br | Não verificado | Plugin Claude + evals com juiz + CI | Não verificado | Não verificado | MIT, `Copyright (c) 2026 Alex Camacho Castilho` | 25/11/2026 | 0 | Estrutura de evals |
| geovani-ariel/humanizer-pt-br | Adaptado do blader 3.1.0 | SKILL + references + testes de regressão | Não verificado | Não verificado | MIT, `Copyright (c) 2025 Siqi Chen` | criado em 26/10/2026 | 1 | Ideia de baselines de regressão |
| AndreAlmeidaDC/humanizador | "Universal 4.0.0" (texto, slides, interface) | SKILL + auditor Unicode em script | Não verificado | Não verificado | **Sem LICENSE** | 18/11/2026 | 13 | Nada (todos os direitos reservados) |

As linhas marcadas "não verificado" refletem que só a árvore de arquivos, o README e o frontmatter desses repositórios foram lidos [Certo].

## O guia da Wikipedia descreve sinais e pede que não virem lista de correção

O "Wikipedia:Signs of AI writing" é uma página de conselho do WikiProject AI Cleanup, na revisão 1387041075 de **22/11/2026**, com 184 KB de wikitext e licença **CC BY-SA 4.0** ([página](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing)) [Certo]. Ela se apresenta como guia de campo para conteúdo da Wikipedia, avisa que parte dos sinais não vale fora desse contexto e diz que a lista é "descritiva, não prescritiva". Um trecho pesa diretamente sobre o nosso projeto: "não trate esses sinais simplesmente como os problemas a corrigir; isso só tornaria a detecção mais difícil" [Certo]. A resposta honesta a essa objeção é posicionar o humanizer-pt-br como editor de prosa para leitores humanos, que corrige o padrão porque ele é prosa ruim, e não como ferramenta de disfarce. É a mesma postura que blader, Telles, nem-parece-ia e alexccastilho declaram [Provável].

As seções do guia, na ordem do wikitext, são: Conteúdo (ênfase indevida em importância e legado, em notabilidade e cobertura de mídia, análises superficiais com particípio em -ing, associação vaga, atribuição vaga, conclusões formulaicas sobre "desafios e perspectivas"); Linguagem e gramática (densidade de "vocabulário de IA", com listas por era de modelo, evitação da cópula, paralelismos negativos, regra de três); Estilo (Title Case, negrito, listas com rótulo, emojis, aspas curvas); Comunicação dirigida ao usuário (frases de assistente, ressalvas sobre fontes, placeholders); Markup (Markdown em wikitext, `contentReference[oaicite:1]`, que a página chama de "indicador inequívoco"); Citações (DOIs inválidos, `utm_source=`); indicadores em comentários e resumos de edição; Diversos; Sinais de escrita humana; Indicadores ineficazes; e Indicadores históricos ([wikitext](https://en.wikipedia.org/w/index.php?title=Wikipedia:Signs_of_AI_writing&action=raw)) [Certo].

Quatro pontos do guia mudam o desenho da skill. Primeiro, em outubro de 2026 os sinais mais comuns em texto novo eram **Markdown, resumos de edição gerados por IA, ressalvas sobre disponibilidade de fontes, associação vaga e ênfase em identificação por fontes primárias** [Certo]. Segundo, o **uso excessivo de travessão foi rebaixado a "indicador histórico" (2022 a setembro de 2026)**, porque os modelos mais novos foram ajustados para não usá-lo; a página acrescenta, sem fonte, que o excesso de vírgulas e pontos virou sinal próprio [Certo]. Terceiro, a lista de indicadores ineficazes inclui gramática perfeita, mistura de registros, prosa "robótica", prosa formal e palavras de transição isoladas, e lembra que acusações falsas afastam editores novos [Certo]. Quarto, o guia avisa que humanos são ruins em distinguir texto humano de texto de LLM, que detectores como GPTZero e Pangram têm taxas de erro não triviais e que texto datado de antes de 30/11/2022 não é de IA [Certo]. A página também observa que uma palavra sobreusada pela IA não implica que seus sinônimos também sejam ([seção de vocabulário](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing#High_density_of_%22AI_vocabulary%22_words)), o que invalida a ideia de traduzir listas de palavras do inglês [Provável].

Há uma consequência de licença escondida: vários exemplos do SKILL.md do blader ("Alamata Raya Kobo", "Gallery 825", "Haolai River", o texto sobre a culinária somali) saíram literalmente da Wikipedia, portanto são material CC BY-SA dentro de um arquivo rotulado MIT [Provável]. Traduzi-los para o português continua sendo obra derivada [Provável].

## O sinal mais forte em português é estrutural e quase nada está medido

A pesquisa achou **um único estudo com números para PT-BR**: Resende e Castilho (StyGenAI 2026) compararam GPT-4o e humanos em inglês, português e espanhol e concluíram que o travessão é "o traço mais discriminante do conjunto". Em originais em PT-BR, o modelo usou **9,5 travessões por mil tokens contra 0,0 dos humanos**, e 27,3 em tradução para o português; o GPT-4o também usou vocabulário mais raro (Zipf médio 3,51 contra 3,70) e **frases mais curtas que as humanas** ([ACL Anthology](https://aclanthology.org/2026.stygenai-1.5.pdf)) [Certo quanto aos números]. O corpus é de um conto por condição, cerca de 1.250 a 2.000 palavras, sem estatística inferencial, e os autores admitem isso [Certo]. Em sentido contrário, a análise da The Economist (55.940 frases, dados em inglês, modelos de 2026) diz que o travessão **deixou de ser indicador confiável**, com uma exceção: **só o Claude o usa mais que humanos**. Os sinais mais confiáveis passaram a ser prolixidade, frases longas emendadas por "e", pouca pontuação interna, nominalização, "não é X, é Y", regra de três e frases de tamanho parecido ([Fast Company Brasil](https://fastcompanybrasil.com/ia/esqueca-o-travessao-esses-sinais-entregam-se-um-texto-foi-feito-por-ia/)) [Provável, porque é matéria secundária]. A contradição sobre o comprimento das frases (longas na Economist, curtas no estudo de PT-BR, "8 a 20 palavras" na entrada GPT-6 da Wikipedia) sugere que o sinal útil é a **uniformidade**, e não o comprimento [Chute].

Dois achados têm consequência prática para quem vai rodar a skill no Claude. A Economist diz que o Claude usa travessão acima da taxa humana, e a pesquisa da Graphite sobre o próprio Opus 5.5 achou excesso de "matters", "clearer", "quietly" e "practical", de "this matters because" e de metáforas no lugar de afirmação direta (1,6 vez mais que humanos), também com dados em inglês ([Fast Company Brasil](https://fastcompanybrasil.com/ia/evite-essas-tres-frases-se-voce-nao-quer-escrever-como-ia/)) [Provável]. O reescritor tem tiques próprios, e a skill precisa de uma lista do que nunca injetar e de uma passada final que procure esses tiques na própria saída [Provável].

As fontes brasileiras de observação convergem num grupo pequeno de marcas. O educador Marcelo Sabbatini lista "é importante notar que", "vale ressaltar que", "crucial", "fundamental", "insight", "mergulhar" (de *delve into*), adjetivos genéricos (inovador, transformador, disruptivo, fascinante, poderoso), advérbios em excesso, falta de exemplo concreto, maiúsculas frequentes e vírgula antes do "e" em enumeração, e avisa que algumas listas exageram porque essas palavras são vocabulário comum ([IAEdPraxis](https://iaedpraxis101.substack.com/p/texto-chocho-como-identificar-a-escrita)) [Provável]. O Gran Cursos aponta **"crucial" como principal marcador de questões de concurso geradas por ChatGPT**, com contagem anual de 2020 a 2024 e menções a "é importante destacar" e "mas também" ([Gran Cursos](https://blog.grancursosonline.com.br/o-uso-do-chatgpt-pelos-examinadores-na-elaboracao-de-questoes-de-concurso/)) [Provável, porque a amostragem não é descrita]. A página em português da Pangram está em variante europeia e não diz se as frases vieram de corpus em português ([Pangram](https://www.pangram.com/pt/resources/most-common-ai-phrases)) [Certo].

Gerundismo, calques semânticos ("endereçar", "aplicar para vaga"), oficialês e ênclise forçada aparecem em manuais e trabalhos acadêmicos como **prosa ruim**, sem ligação documentada com IA [Certo]. "Fazer sentido" tem evidência contrária: é equivalente dicionarizado de *make sense* e **não deve entrar como vício** ([WordReference](https://jann.wordreference.com/enpt/sense)) [Provável].

### Lista consolidada de padrões PT-BR

Os exemplos foram escritos para este relatório e não saíram das skills nem da Wikipedia. Cada "depois" mantém o conteúdo do "antes" e não acrescenta fato. Os números entre parênteses remetem à lista de fontes. As três classificações são: **documentado como sinal de IA**, **documentado como prosa ruim em geral** e **sem fonte** (quando nenhuma fonte independente das skills foi encontrada).

#### Grupo 1: sinais fortes (corrigir na primeira ocorrência)

1. **Marcação vazada e placeholders** (`[oaicite:2]`, `utm_source=chatgpt.com`, "[Seu nome]", "[inserir data]").
   Antes: "Conforme o relatório [oaicite:3], a obra terminou em março. Atenciosamente, [Seu nome]."
   Depois: "Conforme o relatório, a obra terminou em março." O placeholder volta para o autor preencher; a skill avisa e não inventa nome.
   Classificação: documentado como sinal de IA (26, 27), independente de língua [Certo].

2. **Resíduo de chatbot e bajulação** ("Ótima pergunta!", "Claro! Aqui está", "Espero ter ajudado", "Quer que eu detalhe?").
   Antes: "Ótima pergunta! Claro, aqui está o resumo: o contrato vale por 24 meses. Espero ter ajudado!"
   Depois: "O contrato vale por 24 meses."
   Classificação: documentado como sinal de IA, com fonte em PT (32, 34) e em inglês (26) [Certo].

3. **Ressalva de assistente sobre conhecimento ou fontes** ("até a data do meu último treinamento", "recomendo verificar antes de publicar").
   Antes: "Até a data do meu último treinamento, a loja abria aos domingos, mas recomendo confirmar essa informação."
   Depois: "A loja abria aos domingos." Com nota separada ao autor: confirmar se ainda abre.
   Classificação: documentado como sinal de IA (26); a ressalva sobre fontes está entre os sinais mais comuns de outubro de 2026, a de data de corte é histórica [Certo].

4. **Antítese encenada** ("não é X, é Y", "não se trata de X, mas de Y").
   Antes: "O atraso não foi culpa do fornecedor. Foi falta de planejamento nosso."
   Depois: "Atrasamos por falha no nosso planejamento." Se alguém de fato culpou o fornecedor, a negação fica, porque aí ela informa.
   Classificação: documentado como sinal de IA (29, 26), dados em inglês [Provável para PT].

5. **Paralelismo "não apenas X, mas também Y"** e "não só... como também".
   Antes: "O novo horário não apenas reduz a fila, mas também libera a equipe para o almoço."
   Depois: "Com o novo horário, a fila diminui e a equipe consegue almoçar."
   Classificação: documentado como sinal de IA (31, 33) [Provável].

6. **Muletas de ênfase vazias** ("vale ressaltar que", "é importante destacar/notar/salientar", "cabe mencionar").
   Antes: "Vale ressaltar que é importante destacar que a inscrição fecha na sexta."
   Depois: "A inscrição fecha na sexta."
   Classificação: documentado como sinal de IA, com fontes brasileiras (32, 33, 29) [Provável].

7. **Inflação de importância** ("desempenha um papel fundamental", "representa um marco", "um testemunho de", "deixa um legado").
   Antes: "Com 120 vagas, a inauguração da creche representa um marco histórico e um testemunho do compromisso com a infância."
   Depois: "A creche abriu com 120 vagas."
   Classificação: documentado como sinal de IA (26; "crucial" em 33 e 32) [Provável].

8. **Regra de três forçada** (tríade de adjetivos ou itens sem necessidade).
   Antes: "O curso é prático, acessível e transformador: todas as aulas têm exercícios."
   Depois: "Todas as aulas do curso têm exercícios."
   Classificação: documentado como sinal de IA (29, 26) [Provável].

9. **Formatação de chat em texto corrido** (Markdown, negrito decorativo, listas com rótulo em negrito, emojis em títulos e itens).
   Antes: "🚀 **Prazo:** sexta. ✅ **Responsável:** Carla. 💡 **Lembrete:** levar crachá."
   Depois: "O prazo é sexta, a responsável é a Carla, e quem for precisa levar crachá."
   Classificação: documentado como sinal de IA (26, 31); Markdown é o sinal mais comum de outubro de 2026 na Wikipedia [Certo].

#### Grupo 2: sinais médios (corrigir quando houver outro sinal por perto)

10. **Ritmo uniforme e pontuação pobre** (frases do mesmo tamanho, orações emendadas por "e", quase nenhuma vírgula, ponto e vírgula ou parêntese).
    Antes: "A empresa abriu a filial em Recife e contratou vinte pessoas e passou a atender a região toda e os resultados vieram no primeiro trimestre."
    Depois: "A empresa abriu a filial em Recife e contratou vinte pessoas. Passou a atender a região inteira, e os resultados vieram já no primeiro trimestre."
    Classificação: documentado como sinal de IA (29), dados em inglês; a direção do comprimento é contraditória entre fontes (28, 26) [Provável para uniformidade, Chute para comprimento].

11. **Gerúndio conclusivo de falsa análise** (", reforçando...", ", contribuindo para...", ", consolidando-se como...").
    Antes: "A cooperativa comprou dois caminhões, fortalecendo sua presença regional e reforçando o compromisso com os produtores."
    Depois: "A cooperativa comprou dois caminhões." Se existir um fato por trás do "fortalecendo", ele vira frase própria.
    Classificação: documentado como sinal de IA em inglês, na forma -ing (26, 2); sem fonte que meça o gerúndio em PT [Provável].

12. **Falta de concretude** (sem nome, número, lugar ou exemplo).
    Antes: "A ferramenta trouxe ganhos significativos de produtividade para diversas áreas."
    Depois, sem dado do autor: "A ferramenta acelerou o trabalho em algumas áreas." Com dado do autor: "O financeiro passou a fechar o mês em três dias, e não mais em cinco."
    Classificação: documentado como sinal de IA, com fonte brasileira (32) e explicação teórica na Wikipedia (26) [Provável].

13. **Atribuição vaga** ("especialistas apontam", "estudos mostram", "segundo o mercado").
    Antes: "Especialistas apontam que o trabalho remoto reduz a rotatividade."
    Depois: a skill pergunta qual é a fonte. Sem ela, a frase assume o grau real de certeza: "Há quem defenda que o trabalho remoto reduz a rotatividade."
    Classificação: documentado como sinal de IA (26) [Certo em inglês, Provável em PT].

14. **Simbolismo e metáfora no lugar de afirmação** ("um verdadeiro farol", "simboliza a força de", "uma jornada").
    Antes: "Aberta até as 20h, a biblioteca comunitária é um verdadeiro farol de esperança que simboliza a força do bairro."
    Depois: "A biblioteca comunitária fica aberta até as 20h."
    Classificação: documentado como sinal de IA (30, 31), dados em inglês; a Folha condena metáforas gastas como prosa ruim (48) [Provável].

15. **Fecho-resumo e conclusão otimista genérica** ("Em suma", "Em resumo", "Em conclusão", "o futuro é promissor").
    Antes: "Em suma, com planejamento e dedicação, o futuro da loja é promissor."
    Depois: cortar; o texto termina na última informação nova.
    Classificação: documentado como sinal de IA (31, 34, 26); a Wikipedia já classifica "In summary" como histórico [Provável].

16. **Metadiscurso** ("Neste artigo, vamos explorar", "Isso importa porque", "Como vimos acima").
    Antes: "Neste artigo, vamos explorar por que a manutenção preventiva importa. Isso importa porque evita paradas."
    Depois: "Manutenção preventiva evita paradas na linha."
    Classificação: documentado como sinal de IA em inglês (30); sem fonte em PT [Provável].

17. **Vocabulário inflado e verbos de consultoria** (crucial, fundamental, mergulhar, insight, robusto, inovador, disruptivo, alavancar, potencializar).
    Antes: "O sistema, que reúne cadastro, cobrança e estoque, é uma solução robusta e inovadora, crucial para alavancar resultados."
    Depois: "O sistema reúne cadastro, cobrança e estoque."
    Classificação: documentado como sinal de IA para "crucial", "fundamental", "mergulhar" e os adjetivos genéricos (32, 33); "alavancar" e "potencializar" só em fonte comercial fraca; fraco isolado, porque são palavras comuns do português [Provável].

18. **Abertura com cenário genérico** ("No cenário atual", "Em um mundo cada vez mais conectado", "Nos dias de hoje").
    Antes: "No cenário atual, em um mundo cada vez mais conectado, pequenas empresas precisam atender pelo WhatsApp."
    Depois: "Pequenas empresas precisam atender pelo WhatsApp."
    Classificação: documentado como sinal de IA só em fonte PT-PT comercial (34); sem fonte PT-BR [Chute].

19. **Preâmbulo encenado e pergunta retórica de abertura** ("Você já se perguntou...?", "Vamos lá:", "Vamos mergulhar nisso").
    Antes: "Você já se perguntou por que suas plantas morrem no inverno? Vamos lá: a resposta é o excesso de água."
    Depois: "No inverno, as plantas costumam morrer por excesso de água."
    Classificação: "mergulhar" documentado como sinal de IA (32, 34); a pergunta de abertura está sem fonte fora das skills [Chute].

20. **Fechos de efeito e fragmentos dramáticos** ("Resultado? O custo caiu. Simples assim.", "E isso muda tudo.").
    Antes: "Trocamos o fornecedor. Revisamos o contrato. Resultado? O custo caiu. Simples assim."
    Depois: "Trocamos o fornecedor, revisamos o contrato, e o custo caiu."
    Classificação: sem fonte independente em PT; a Fast Company Brasil menciona "sentenças curtas" e "Não é X. É Y." só em resumo de busca [Chute].

#### Grupo 3: sinais fracos e prosa ruim (corrigir por qualidade, nunca usar como prova)

21. **Conectivo mecânico em todo parágrafo** ("Além disso", "Nesse sentido", "Adicionalmente", "Neste contexto").
    Antes: "Além disso, o aplicativo envia lembretes. Nesse sentido, os pacientes faltam menos. Adicionalmente, a clínica economiza."
    Depois: "O aplicativo envia lembretes, os pacientes faltam menos, e isso reduz o custo da clínica."
    Classificação: documentado como sinal de IA para "além disso" (29); a Wikipedia lista transições isoladas entre os indicadores ineficazes (26); "adicionalmente" no início da frase é calque sem fonte [Provável].

22. **Nominalização e verbo-suporte** ("realizar a implementação", "efetuar o pagamento", "proceder à análise").
    Antes: "Após a realização da conferência, será efetuado o pagamento."
    Depois: "O pagamento sai depois da conferência."
    Classificação: documentado como sinal de IA (29, dados em inglês) e como prosa ruim pelo princípio de concisão do Manual de Redação da Presidência (38) [Provável].

23. **Advérbios e qualificadores empilhados** ("pode, de certa forma, potencialmente contribuir").
    Antes: "Essa medida pode, de certa forma, potencialmente contribuir para uma possível melhora."
    Depois: "Essa medida pode ajudar."
    Classificação: documentado como sinal de IA para "advérbios em excesso" (32); o empilhamento em si está sem fonte em PT [Provável].

24. **Cópula evitada** ("atua como", "se configura como", "conta com", "dispõe de" no lugar de "é" e "tem").
    Antes: "O galpão atua como centro de distribuição e conta com doze docas."
    Depois: "O galpão é o centro de distribuição e tem doze docas."
    Classificação: documentado como sinal de IA só em inglês (26); sem fonte em PT; "constitui" e "representa" são legítimos em texto jurídico e acadêmico [Chute].

25. **Travessão como conector universal** (vários por parágrafo em prosa expositiva).
    Antes: "O sistema caiu — de novo — e a equipe — já cansada — refez tudo — sem reclamar."
    Depois: "O sistema caiu de novo, e a equipe, já cansada, refez tudo sem reclamar." Travessão de diálogo ("— Vou sair — disse ela.") nunca é alterado.
    Classificação: sinal de IA com evidência contraditória (28 a favor para GPT-4o em PT-BR; 29 e 26 dizem que deixou de ser confiável); documentado como prosa ruim quando em excesso pelo Manual de Comunicação do Senado ("muitos travessões no mesmo parágrafo prejudicam a leitura") (35, 41) [Provável].

26. **Title Case em títulos e maiúscula em meses, dias, gentílicos e cargos.**
    Antes: "Como Organizar As Finanças Da Sua Empresa Em Janeiro"
    Depois: "Como organizar as finanças da empresa em janeiro"
    Classificação: documentado como prosa ruim pela convenção editorial brasileira e pela Base XIX do Acordo, que permite minúscula após a primeira palavra (36); "maiúsculas frequentes" aparece como sinal de IA em fonte brasileira fraca (32) [Certo quanto à norma, Provável quanto ao sinal].

27. **Vírgula de Oxford em enumeração simples.**
    Antes: "Trouxemos café, pão de queijo, e bolo."
    Depois: "Trouxemos café, pão de queijo e bolo." A vírgula antes de "e" continua certa com sujeitos diferentes, valor adversativo ou polissíndeto.
    Classificação: documentado como sinal de IA em fonte brasileira (32); a norma gramática não foi consultada diretamente [Provável].

28. **Calques semânticos e possessivo excessivo** ("endereçar um problema", "aplicar para a vaga", "através de" para meio, "sua mão" onde cabe artigo).
    Antes: "Ele levantou sua mão e disse que precisamos endereçar esse problema antes de aplicar para o edital."
    Depois: "Ele levantou a mão e disse que precisamos resolver esse problema antes de concorrer ao edital."
    Classificação: documentado como prosa ruim para "endereçar" e "aplicar" (40, resumo); sem fonte como sinal de IA e sem fonte para o possessivo [Chute como sinal de IA].

29. **Passiva analítica em excesso** ("foi realizada pela equipe uma revisão").
    Antes: "Foi realizada pela equipe uma revisão completa do código."
    Depois: "A equipe revisou todo o código." Sem agente explícito no original, a reescrita não inventa um.
    Classificação: documentado como prosa ruim pelo princípio de concisão (38); sem fonte como sinal de IA em PT [Provável como prosa ruim].

30. **Sujeito pronominal repetido** onde o português omitiria.
    Antes: "Ela chegou cedo. Ela abriu a loja. Ela conferiu o caixa."
    Depois: "Ela chegou cedo, abriu a loja e conferiu o caixa."
    Classificação: sem fonte; inferência a partir de o português ser língua de sujeito nulo [Provável quanto à língua, Chute quanto à frequência em LLM].

31. **Registro deslocado: ênclise forçada, mesóclise e oficialês em texto informal** ("Faz-se necessário", "enviar-lhe-emos", "outrossim" num recado ao time).
    Antes, numa mensagem de WhatsApp: "Faz-se necessário que todos me enviem o relatório. Outrossim, solicito atenção ao prazo."
    Depois: "Pessoal, me mandem o relatório e fiquem de olho no prazo."
    Classificação: sem fonte independente (catalogado por Telles, 49) [Chute].

32. **Tratamento inconsistente** (você, o senhor e tu no mesmo texto).
    Antes: "O senhor receberá o cartão em casa. Caso você não esteja, tu podes retirá-lo na agência."
    Depois: "O senhor receberá o cartão em casa. Se não estiver, pode retirá-lo na agência."
    Classificação: sem fonte [Chute].

33. **Gerundismo** ("vou estar enviando").
    Antes: "Vou estar encaminhando a proposta até amanhã."
    Depois: "Encaminho a proposta até amanhã."
    Classificação: documentado como prosa ruim (Eduardo Martins, do Estadão, via 39); sem fonte como sinal de IA, e o uso de "ir + estar + gerúndio" para futuro com duração é legítimo (43) [Provável como prosa ruim, Chute como sinal de IA].

Duas proteções acompanham a lista. A primeira é **não "corrigir" o que é natural**: "fazer sentido", estrangeirismos que o mercado usa sem traduzir (feedback, deploy, sprint) e o travessão de diálogo ficam como estão; Telles chama o erro oposto de "purismo linguístico artificial" (49) [Provável]. A segunda é **não alterar texto anterior a 30/11/2022 nem citação literal**, regra herdada do blader e da Wikipedia [Certo].

## Metade dos padrões ingleses cai ou muda de sinal em português

Os padrões retóricos e de conteúdo atravessam a língua porque nascem do ajuste do modelo para agradar ao maior número de leitores, e não da gramática do inglês. O próprio blader diz que a fórmula "not X but Y" "aparece em todas as línguas" [Certo]. Os padrões presos à morfologia, ao léxico e à tipografia do inglês precisam ser cortados ou reescritos [Provável]. A tabela abaixo resume a decisão.

| Padrão em inglês | Decisão | Justificativa |
|---|---|---|
| Pares hifenizados (blader §10: "high-quality", "long-term") | Cortar | O hífen em português segue o Acordo Ortográfico; não existe o composto adjetival inglês, e "de alta qualidade" é português normal [Provável] |
| Aspas curvas (blader §21) | Cortar | Word e Google Docs em PT-BR geram aspas curvas por padrão; a presença delas não indica nada. O avoid-ai-writing já preserva a pontuação do idioma [Provável] |
| Listas de palavras (blader §12, tiers 1 a 3 do avoid, vocabulário da Wikipedia) | Cortar a lista, refazer por observação | Frequência lexical é própria de cada língua, e a Wikipedia diz que sinônimos de uma palavra sobreusada não herdam o sinal. "Aninhado", "ostenta", "intrincado" e "testemunho" não aparecem em nenhuma fonte PT consultada [Provável] |
| Frases de domínio cripto (tier 3 do avoid) e erros de categoria de adjetivo moral ("honest shape") | Cortar | Fenômenos idiomáticos do inglês, sem equivalente observado [Provável] |
| Sinais de escrita humana com pares ingleses (wrote/authored, died/passed away) | Adaptar com cautela | Os análogos ("usou/utilizou", "morreu/faleceu") não foram verificados [Chute] |
| Sujeito oculto e passiva (blader §11) | Inverter | Sujeito oculto é gramatical e natural em português; a regra inglesa dispararia falsos positivos. O alvo em PT é o sujeito pronominal repetido e a passiva analítica em excesso [Provável] |
| Aberturas repetidas (blader §7) | Adaptar | Em português o sinal é repetir o pronome sujeito, não o início igual em si [Provável] |
| Orações -ing rasas (blader §15) | Adaptar | Viram gerúndio conclusivo pós-oracional; não confundir com gerundismo [Provável] |
| Evitação de cópula (blader §18) | Adaptar | Viram "atua como", "se configura como", "conta com"; sem fonte PT, então peso baixo [Chute] |
| Travessão (blader §8, regra de zero travessão) | Reescrever | Em português o travessão abre fala em diálogo, isola intercalações e substitui dois-pontos, e o Manual do Senado o normatiza. A regra deve mirar densidade em prosa expositiva, proteger diálogo e citação, e corrigir com vírgula, dois-pontos, parênteses ou ponto. A Wikipedia já o trata como sinal histórico [Certo quanto à norma, Provável quanto à regra] |
| Title Case (blader §20) | Reforçar | Em português contraria a convenção editorial; a regra se estende a meses, dias, gentílicos e cargos [Provável] |
| Vírgula de Oxford (mecânica do avoid) | Inverter | Em inglês é estilo; em português, na enumeração simples, é desvio e indica calque [Provável] |
| Categorias específicas da Wikipedia (DOIs, AfC, resumos de edição, notabilidade, presença online) | Cortar | Não se aplicam a prosa geral. Ficam só as checagens mecânicas: `oaicite`, `utm_source`, placeholders [Provável] |
| Hashtags, "Meet X", minúsculas de falsa informalidade | Adaptar só com observação | Ligados à cultura de rede social anglófona; os equivalentes brasileiros ("LinkedIn-ês") precisam ser observados [Chute] |
| Permissão para acrescentar detalhe verdadeiro (blader 4.0.0) | Não adotar | O pedido do projeto é não mudar o sentido. Ficar com a regra do avoid-ai-writing e a trava factual de Telles: falta de dado vira pergunta ao autor ou frase mais simples [Provável] |

## Derivar texto só do blader e escrever o resto do zero

As licenças definem o que pode ser aproveitado, e a recomendação muda de fonte para fonte. Ideias, categorias de sinais e fatos não têm proteção autoral; o que a licença protege é a expressão, ou seja, o texto e os exemplos [Provável].

**blader/humanizer** (MIT, `Copyright (c) 2025 Siqi Chen`). Pode-se traduzir e adaptar estrutura e texto, desde que o aviso de copyright e o texto da licença MIT acompanhem "todas as cópias ou partes substanciais" ([LICENSE](https://github.com/blader/humanizer/blob/main/LICENSE)) [Certo]. Os exemplos tirados da Wikipedia são CC BY-SA e não devem ser reaproveitados nem traduzidos [Provável]. Recomendação: é a fonte mais segura para derivação direta; se algum trecho for traduzido, incluir o aviso MIT num NOTICE.

**conorbronsdon/avoid-ai-writing** (MIT, `Copyright (c) 2026 Conor Bronsdon`; o NOTICE credita Mamdouh Aboammar pelo empacotamento ChatGPT/Codex sob a mesma licença) ([NOTICE](https://github.com/conorbronsdon/avoid-ai-writing/blob/main/NOTICE.md)) [Certo]. Recomendação: usar a arquitetura de modos, severidade e verificação como ideia, com texto próprio; manter o aviso se algum trecho for copiado.

**mackswendhell/humanizer-pt-br** (MIT, `Copyright (c) 2026 mackswendhell`). A licença é válida, mas o conteúdo parece derivado do blader sem o aviso de Siqi Chen [Provável]. Recomendação: não derivar. Quem copiar herda o problema e precisaria creditar os dois autores.

**Fabrício Telles, "humanizar"** (Apache-2.0, `Copyright 2025 ft.ia.br`). Permite derivar com cópia da licença, aviso de modificação em cada arquivo alterado e preservação dos avisos de autoria; como não há NOTICE na raiz, a cláusula 4(d) não obriga a propagar NOTICE para conteúdo de `skills/humanizar`, mas o NOTICE de `plugins/deslop-writing/` precisa ser mantido se algo vier de lá ([LICENSE](https://gitlab.com/fabriciotelles/skills/-/blob/main/LICENSE)) [Certo]. Trecho Apache dentro de um projeto MIT continua sob Apache [Certo]. Recomendação: aproveitar as ideias (trava factual, triagem, prioridade da amostra, auditoria nos dois sentidos, guarda de falso positivo) com texto próprio, e creditar como inspiração.

**nem-parece-ia** (vitrine: MIT, `Copyright (c) 2026 MSCREATIVE.SYSTEMS™ and contributors`; o NOTICE da skill diz que ela "segue a licença do repositório mscreative-skills", que é **MIT + Commons Clause**) ([LICENSE do mscreative-skills](https://github.com/1marcelserrano/mscreative-skills/blob/main/LICENSE); [NOTICE](https://github.com/1marcelserrano/nem-parece-ia/blob/main/skills/nem-parece-ia/NOTICE.md)) [Certo]. A Commons Clause proíbe vender produto ou serviço "cujo valor derive substancialmente" do software, **incluindo consultoria e suporte**, o que bate de frente com o uso em treinamentos e consultoria da markuscosta [Certo]. A contradição entre o README ("fork it, modifique, rebatize") e o NOTICE só o autor resolve [Provável]. Recomendação: não copiar nem parafrasear de perto; ideias como "hermetismo" e auto-auditoria final só reescritas do zero. A fonte original, hardikpandya/stop-slop, é MIT e pode ser usada diretamente com atribuição ([port leolegends](https://github.com/leolegends/stop-slop-pt-br)) [Provável, porque o ano do copyright diverge entre ports: 2025 num, 2024 noutro].

**Wikipedia "Signs of AI writing"** (CC BY-SA 4.0). Traduzir prosa ou exemplos cria obra derivada que exige atribuição, link para a licença, indicação de mudança e a mesma licença no trecho adaptado [Certo]. Recomendação: citar o guia como fonte das categorias e escrever tudo em português original.

**Outros repositórios.** rpiochi, opaulomarcondes, eurafaeldecarvalho, alexccastilho e geovani-ariel são MIT com autor identificável e podem ser usados com aviso [Certo]. AndreAlmeidaDC, gabrielkashimarki e Jeeeff não têm LICENSE e ficam com todos os direitos reservados [Certo]. O pt-PT mariorabeloneto/evitar-escrita-ia aparece como NOASSERTION no GitHub e não foi inspecionado [Certo].

A recomendação consolidada: escrever SKILL.md, catálogo e exemplos do zero em PT-BR; publicar sob MIT; incluir um NOTICE que credite como inspiração blader/humanizer (Siqi Chen), avoid-ai-writing (Conor Bronsdon), a humanizar de Fabrício Telles e o guia da Wikipedia, mesmo sem obrigação legal; e, se algum trecho do blader for traduzido, incluir o aviso MIT completo dele [Provável]. Para provar a originalidade, vale repetir o que o eurafaeldecarvalho fez: uma checagem de n-gramas contra os SKILL.md públicos [Provável].

## Conclusão

O espaço PT-BR está cheio de traduções do blader, e ali a popularidade mede quem chegou primeiro. A diferença real que o humanizer-pt-br pode ter fica em três lugares que quase ninguém cobre juntos: catálogo próprio do português, trava factual com calibração por amostra do autor, e avaliação com controle humano em PT-BR, como a de prosa em domínio público do eurafaeldecarvalho. A arquitetura recomendada é um SKILL.md curto com os modos `reescrever`, `diagnosticar` (só aponta, agrupado por força do sinal) e `editar arquivo`, um arquivo de referência com os 33 padrões acima, uma lista do que o reescritor nunca injeta (detalhe inventado, opinião inventada, travessão, frases picotadas) e uma passada final que procura na saída os tiques do próprio Claude.

O achado que mais muda o projeto é que os sinais com melhor evidência em 2026 são estruturais (uniformidade de ritmo, pontuação pobre, antíteses, tríades, falta de concretude), e que o travessão, sinal-símbolo de 2024, virou evidência contraditória justamente quando o modelo que vai rodar a skill é o que ainda o usa acima da taxa humana. Antes de transformar os padrões marcados [Chute] em regra, o projeto deveria gerar um corpus pequeno próprio (mesmos pedidos em Claude, GPT, Gemini e Sabiá, contra textos humanos do mesmo gênero) e contar.

## Fontes

1. blader/humanizer, repositório: https://github.com/blader/humanizer
2. blader/humanizer, SKILL.md: https://github.com/blader/humanizer/blob/main/SKILL.md
3. blader/humanizer, CHANGELOG: https://github.com/blader/humanizer/blob/main/CHANGELOG.md
4. blader/humanizer, LICENSE: https://github.com/blader/humanizer/blob/main/LICENSE
5. blader/humanizer v2.5.1, SKILL.md: https://github.com/blader/humanizer/blob/564b7aa13856cad583c203ef62569f4e5a4bfce3/SKILL.md
6. conorbronsdon/avoid-ai-writing, repositório: https://github.com/conorbronsdon/avoid-ai-writing
7. avoid-ai-writing, SKILL.md: https://github.com/conorbronsdon/avoid-ai-writing/blob/main/SKILL.md
8. avoid-ai-writing, references/patterns.md: https://github.com/conorbronsdon/avoid-ai-writing/blob/main/references/patterns.md
9. avoid-ai-writing, NOTICE.md: https://github.com/conorbronsdon/avoid-ai-writing/blob/main/NOTICE.md
10. mackswendhell/humanizer-pt-br, repositório: https://github.com/mackswendhell/humanizer-pt-br
11. mackswendhell/humanizer-pt-br, SKILL.md: https://github.com/mackswendhell/humanizer-pt-br/blob/main/SKILL.md
12. skills.sh, página do humanizer-pt-br: https://skills.sh/mackswendhell/humanizer-pt-br/humanizer-pt-br
13. Fabrício Telles, humanizar, SKILL.md (GitLab): https://gitlab.com/fabriciotelles/skills/-/blob/main/skills/humanizar/SKILL.md
14. fabricioctelles/skills (GitHub): https://github.com/fabricioctelles/skills
15. Fabrício Telles, LICENSE: https://gitlab.com/fabriciotelles/skills/-/blob/main/LICENSE
16. Fabrício Telles, NOTICE do deslop-writing: https://gitlab.com/fabriciotelles/skills/-/blob/main/plugins/deslop-writing/NOTICE
17. Fabrício Telles, histórico de commits da humanizar: https://gitlab.com/fabriciotelles/skills/-/commits/main/skills/humanizar
18. 1marcelserrano/nem-parece-ia, repositório: https://github.com/1marcelserrano/nem-parece-ia
19. nem-parece-ia, LICENSE: https://github.com/1marcelserrano/nem-parece-ia/blob/main/LICENSE
20. nem-parece-ia, NOTICE.md: https://github.com/1marcelserrano/nem-parece-ia/blob/main/skills/nem-parece-ia/NOTICE.md
21. mscreative-skills, LICENSE (Commons Clause): https://github.com/1marcelserrano/mscreative-skills/blob/main/LICENSE
22. eurafaeldecarvalho/humanizer-pt-br: https://github.com/eurafaeldecarvalho/humanizer-pt-br
23. alexccastilho/humanizer-pt-br: https://github.com/alexccastilho/humanizer-pt-br
24. AndreAlmeidaDC/humanizador: https://github.com/AndreAlmeidaDC/humanizador
25. Blackspirits/humanizer-pt-pt, NOTICE: https://github.com/Blackspirits/humanizer-pt-pt/blob/main/NOTICE
26. Wikipedia, "Signs of AI writing": https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing
27. Wikipedia, wikitext da mesma página: https://en.wikipedia.org/w/index.php?title=Wikipedia:Signs_of_AI_writing&action=raw
28. Resende e Castilho, "The Style of Machines", StyGenAI 2026: https://aclanthology.org/2026.stygenai-1.5.pdf
29. Fast Company Brasil, sobre a análise da The Economist (07/08/2026): https://fastcompanybrasil.com/ia/esqueca-o-travessao-esses-sinais-entregam-se-um-texto-foi-feito-por-ia/
30. Fast Company Brasil, sobre a pesquisa da Graphite (12/10/2026): https://fastcompanybrasil.com/ia/evite-essas-tres-frases-se-voce-nao-quer-escrever-como-ia/
31. Fast Company Brasil, sobre o guia da Wikipedia (29/08/2025): https://fastcompanybrasil.com/ia/como-saber-se-foi-a-ia-que-escreveu-wikipedia-faz-a-curadoria-dos-cliches/
32. Marcelo Sabbatini, IAEdPraxis, "Texto chocho" (10/12/2024): https://iaedpraxis101.substack.com/p/texto-chocho-como-identificar-a-escrita
33. Gran Cursos, uso do ChatGPT em questões de concurso: https://blog.grancursosonline.com.br/o-uso-do-chatgpt-pelos-examinadores-na-elaboracao-de-questoes-de-concurso/
34. Pangram, frases comuns de IA (PT): https://www.pangram.com/pt/resources/most-common-ai-phrases
35. Senado Federal, Manual de Comunicação, travessão: https://www12.senado.leg.br/manualdecomunicacao/estilos/travessao
36. InfoEscola, Base XIX do Acordo Ortográfico: https://www.infoescola.com/acordo-ortografico/base-xix-minuscula-e-maiuscula
37. O POVO+, "O travessão não pertence ao ChatGPT" (26/05/2026): https://mais.opovo.com.br/reportagens-especiais/2026/05/26/o-travessao-nao-pertence-ao-chatgpt-nem-qualquer-outro-recurso-da-lingua-portuguesa.html
38. Manual de Redação da Presidência da República, 3ª ed.: https://files.ufgd.edu.br/arquivos/arquivos/78/PROTOCOLO/Normas%20Internas/Manual%20de%20Reda%C3%A7%C3%A3o%20da%20Presid%C3%AAncia%20da%20Rep%C3%BAblica%20-%203%C2%AA%20edi%C3%A7%C3%A3o,%20revista,%20atualizada%20e%20ampliada.pdf
39. UFMG, monografia citando Eduardo Martins sobre gerundismo: https://repositorio.ufmg.br/bitstream/1843/45811/1/MONOGRAFIA%20-%20ARQUIVO%20.pdf
40. Anais SIIEPE/UFPel 2025, calques semânticos: https://anais-siiepe.ufpel.edu.br/2025/LA_04675.pdf
41. Dad Squarisi, Correio Braziliense, travessão: https://blogs.correiobraziliense.com.br/dad/travessao-quando-usar/amp/
42. WordReference, "make sense": https://jann.wordreference.com/enpt/sense
43. Linguasagem/UFSCar, "ir + estar + gerúndio": https://linguasagem.ufscar.br/index.php/linguasagem/article/download/541/304/1475
44. rpiochi/humanizer-pt-br: https://github.com/rpiochi/humanizer-pt-br
45. profdorly/humanizador: https://github.com/profdorly/humanizador
46. geovani-ariel/humanizer-pt-br: https://github.com/geovani-ariel/humanizer-pt-br
47. leolegends/stop-slop-pt-br: https://github.com/leolegends/stop-slop-pt-br
48. Revista Argumento (Anchieta), trecho do Manual da Folha sobre metáforas gastas: https://revistas.anchieta.br/index.php/revistaargumento/article/download/576/494
49. Fabrício Telles, árvore da humanizar (inclui padroes-exclusivos-pt-br.md): https://gitlab.com/fabriciotelles/skills/-/tree/main/skills/humanizar
50. opaulomarcondes/humanizador-pt: https://github.com/opaulomarcondes/humanizador-pt

## Lacunas

1. Não existe estudo de corpus revisado por pares que meça vocabulário ou estruturas de LLM em PT-BR. O único estudo com números (fonte 28) usa um conto por condição e o GPT-4o, modelo anterior aos de 2026.
2. A análise da The Economist e a pesquisa da Graphite foram lidas pela versão da Fast Company Brasil; a metodologia original não foi vista e os dados são em inglês. Não está claro se a Economist incluiu português.
3. Não há medição de nenhum padrão no Claude escrevendo em português, embora seja o modelo que vai rodar a skill.
4. Os manuais da Folha e do Estadão não foram lidos diretamente; o que se atribui a eles vem de citação secundária. O texto literal do Manual da Presidência sobre jargão e chavão também não foi lido.
5. A regra normativa sobre vírgula antes do "e", posição do ponto em relação às aspas e gerúndio de posterioridade não foi conferida em gramática (Bechara, Cegalla).
6. Não se verificou se a pt.wikipedia tem página própria equivalente ao "Signs of AI writing", com exemplos lusófonos. A leitura de uma das rodadas da página inglesa foi truncada nos primeiros 100 mil caracteres, embora outra rodada tenha usado o wikitext completo.
7. O espelho do GitHub da skill de Telles foi presumido idêntico ao GitLab pela coincidência de datas, sem diff.
8. A derivação do mack a partir do blader é inferência a partir de um exemplo traduzido e da ordem dos padrões; não se procurou declaração do autor. A origem da rubrica /50 (possivelmente o Humanizer-zh) não foi confirmada.
9. A ambiguidade de licença da nem-parece-ia (MIT no repo vitrine, Commons Clause no NOTICE) só o autor pode resolver.
10. O "teste de estresse independente" do blader citado pelo avoid-ai-writing não foi localizado, e o teste cego "16 de 16" do blader (issue #229) não teve a metodologia lida.
11. Os SKILL.md completos dos repositórios PT-BR menores não foram lidos; as células "não verificado" da tabela refletem isso. O conteúdo e a licença do pt-PT mariorabeloneto/evitar-escrita-ia não foram inspecionados.
12. O skills.sh não informa se as 527 instalações do mack são totais ou semanais, e só deu contagem para mack e Telles.
13. A ausência de post de lançamento da nem-parece-ia e de declarações do mack é ausência de evidência, e não se buscou no LinkedIn.
14. A afirmação de que ideias e categorias não têm proteção autoral é inferência jurídica geral, sem parecer sobre a Lei 9.610/98 aplicada a este caso.
