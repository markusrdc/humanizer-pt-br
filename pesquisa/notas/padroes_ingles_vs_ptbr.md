# Padrões de escrita de IA catalogados para inglês: o que transfere, o que adapta e o que cai em PT-BR

Data da pesquisa: 2026-11-25. Escala de evidência usada: [Certo] fonte primária/estudo; [Provável] inferência forte ou fonte secundária consistente; [Chute] preenchimento de lacuna sem fonte.

Aviso geral: existe pouquíssima evidência quantitativa sobre marcadores de IA em português. O único estudo com números para PT-BR encontrado (Resende e Castilho, 2026) tem corpus minúsculo (~2 mil palavras por condição, um texto por condição). Quase todo o resto sobre vocabulário PT-BR vem de blogs e observação. As decisões de "adaptar" para vocabulário são majoritariamente [Provável] ou [Chute].

## Q1. A lista-base em inglês (humanizer + Wikipedia) e a decisão padrão por padrão

### Takeaway
O SKILL.md atual do blader/humanizer tem 26 padrões; a Wikipedia agrupa os sinais em conteúdo, linguagem, comunicação, markup e "indicadores históricos". A maior parte dos padrões retóricos e de conteúdo (inflação de importância, atribuição vaga, paralelismo negativo, resíduo de chatbot) transfere para PT-BR com tradução das fórmulas; os padrões tipográficos (travessão, Title Case, aspas, vírgula de Oxford, hífens compostos) exigem reescrita completa ou inversão, porque a norma portuguesa é diferente.

### Cited Findings
- O SKILL.md atual do humanizer lista 26 seções: §1 "Not X but Y"; §2 fechos de uma linha/fragmentos dramáticos; §3 frases que soam profundas ("at its core", "the real question is"); §4 preâmbulo ("Let's dive in", "Here's the thing"); §5 discutir com ninguém ("To be clear", "I'm not saying"); §6 tríades forçadas; §7 aberturas repetidas; §8 travessões como conector universal; §9 qualificadores empilhados; §10 pares hifenizados ("high-quality", "long-term"); §11 voz passiva/sujeito oculto; §12 vocabulário de IA (actually, additionally, align with, bolstered, crucial, deep dive, delve, enduring, enhance, garner, gate, highlight, interplay, intricate, key, landscape, meticulous, pivotal, quietly, robust, showcase, tapestry, testament, underscore, valuable, vibrant); §13 importância inflada ("stands as a testament", "plays a key role", "setting the stage for"); §14 associação vaga; §15 orações -ing rasas ("highlighting", "ensuring", "fostering", "showcasing"); §16 linguagem de vendas ("nestled", "in the heart of", "breathtaking"); §17 autoridade emprestada; §18 evitar is/are/has ("serves as", "stands as", "boasts", "features"); §19 negrito decorativo; §20 títulos decorativos (Title Case, emojis, réguas); §21 aspas curvas; §22 resíduo de chatbot; §23 ressalvas de limite de conhecimento; §24 título repetido na primeira frase; §25 escrever sobre o documento; §26 reexplicar o que o leitor já sabe — [blader/humanizer SKILL.md](https://raw.githubusercontent.com/blader/humanizer/main/SKILL.md) [Certo]
- A Wikipedia (WikiProject AI Cleanup) lista: ênfase indevida em importância/legado, "análises superficiais" com particípio presente (-ing), atribuições vagas, conclusões formulaicas "Despite these challenges", vocabulário de IA (delve, tapestry, pivotal, underscore, showcase, crucial, enduring, Additionally, boasts, meticulous), evitação de cópula ("serves as", "features", "boasts"), paralelismos negativos, regra de três; e observa que as listas de palavras mudam por era (2023–2026) — [Wikipedia: Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) [Certo]
- Em novembro de 2026 a Wikipedia move o **uso excessivo de travessão para "indicadores históricos" (2022 a setembro de 2026)**, junto com linguagem promocional (2023–2025) e ressalvas de corte de conhecimento (2022–2023); Markdown passa a ser descrito como o sinal mais comum de texto novo gerado por IA (out./2026) — [Wikipedia: Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) [Certo]
- A página em inglês não trata de tradução nem de outras línguas; só tem interwikis (incluindo português) — [Wikipedia: Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) [Certo]. A imprensa brasileira descreve o guia como disponível só em inglês — [Fast Company Brasil](https://fastcompanybrasil.com/ia/como-saber-se-foi-a-ia-que-escreveu-wikipedia-faz-a-curadoria-dos-cliches/); [Olhar Digital](https://olhardigital.com.br/2025/11/21/pro/wikipedia-cria-guia-detalhado-para-identificar-textos-escritos-por-ia/) [Provável: não verifiquei se a pt.wikipedia tem página equivalente própria; o interwiki sugere que existe alguma]

### Tabela de decisão (síntese; justificativas nas seções seguintes)

| # humanizer | Padrão | Decisão | Equivalente/ajuste PT-BR | Evidência |
|---|---|---|---|---|
| §1 | Not X but Y | (a) aplica | "não é X, é Y"; "não só X, mas também Y"; "mais do que X, Y" | [Provável] (Economist/Fast Company; Gran Cursos cita "mas também") |
| §2 | Fechos/fragmentos dramáticos | (b) adaptar | "E isso muda tudo."; "Pense nisso."; "No fim das contas,..."; "Em suma," | [Chute] |
| §3 | Frases que soam profundas | (b) | "no cerne da questão", "a verdadeira questão é", "o que realmente importa" | [Chute] |
| §4 | Preâmbulo | (b) | "Vamos mergulhar", "Vamos lá", "Aqui está o que você precisa saber", "A questão é a seguinte" | [Provável] (Pangram PT lista "Mergulhe em") |
| §5 | Discutir com ninguém | (b) | "Não se trata de...", "Não me entenda mal", "Para deixar claro" | [Chute] |
| §6 | Tríades forçadas | (a) | idem | [Provável] |
| §7 | Aberturas repetidas | (a), mas PT tem sujeito nulo | em PT o tell é repetir o sujeito explícito ("Ele... Ele...") onde o nativo omitiria | [Provável] |
| §8 | Travessões | (b) reescrever | ver Q2 | [Certo] parcial |
| §9 | Qualificadores empilhados | (a) | "pode potencialmente", "de certa forma", "talvez possa" | [Chute] |
| §10 | Pares hifenizados pós-nome | (c) cortar | PT não forma compostos adjetivais com hífen como o inglês; o equivalente seria calque "de alta qualidade", "de longo prazo" — não é tell | [Provável] |
| §11 | Passiva/sujeito oculto | (b) | em PT o tell é passiva analítica e "se" apassivador em excesso; sujeito oculto é **gramatical e natural** em PT, não pode ser tell | [Provável] |
| §12 | Vocabulário | (b) | ver Q4 | [Provável]/[Chute] |
| §13 | Importância inflada | (b) | "um marco", "desempenha um papel fundamental/crucial", "um testemunho de", "deixa um legado duradouro", "abre caminho para", "um passo na direção certa" | [Provável] (Olhar Digital cita "um momento crucial") |
| §14 | Associação vaga | (a) | "associado a", "ligado a", "relacionado a" | [Chute] |
| §15 | -ing rasas | (b) | gerúndio de encadeamento ("destacando", "garantindo", "refletindo", "contribuindo para") | ver Q6 |
| §16 | Linguagem de vendas | (b) | "no coração de", "aninhado", "de tirar o fôlego", "imperdível", "deslumbrante", "rico" | [Chute] |
| §17 | Autoridade emprestada | (a) | "especialistas apontam", "estudos mostram", "segundo relatórios do setor" | [Chute] |
| §18 | Evitar cópula | (b) | ver Q5 | [Chute] |
| §19 | Negrito decorativo | (a) | idem | [Provável] |
| §20 | Títulos decorativos / Title Case | (b) invertido e reforçado | Title Case é erro de norma em PT, não só estilo; ver Q3 | [Certo] |
| §21 | Aspas curvas | (c) cortar ou inverter | ver Q3 | [Provável] |
| §22 | Resíduo de chatbot | (a) | "Espero ter ajudado", "Claro!", "Ótima pergunta!", "Você tem toda a razão", "Quer que eu...?", "Espero que esta mensagem o encontre bem" | [Provável] (Sabbatini cita a saudação) |
| §23 | Limite de conhecimento | (a) | "até a data do meu último treinamento", "informações específicas são limitadas" | [Chute] |
| §24–26 | Estruturais | (a) | idem | [Provável] |

### Inferences
- Padrões retóricos e de conteúdo são agnósticos de língua porque vêm de RLHF/estilo de assistente, não da gramática do inglês; os tipográficos e morfossintáticos dependem da norma de cada língua e não podem ser traduzidos literalmente. [Provável]
- A própria Wikipedia já despromoveu o travessão a "histórico"; um humanizer PT-BR de novembro de 2026 não deveria tratá-lo como sinal forte isolado. [Provável]

### Gaps
- Não li a pt.wikipedia equivalente (se existe "Wikipédia:Sinais de escrita por IA" própria, com exemplos lusófonos). Vale checar.
- A leitura da página da Wikipedia foi truncada (só os primeiros 100 mil de 252 mil caracteres); a seção sobre Title Case e aspas curvas pode existir na parte não lida.

## Q2. Travessão: ainda é tell em PT-BR e como formular a regra sem apagar travessões legítimos?

### Takeaway
Sim, há evidência de que o GPT-4o usa travessão muito mais que humanos também em PT-BR (27,3 por mil tokens em tradução e 9,5 em texto original, contra 0,0 nos textos humanos do corpus), mas o travessão é sinal legítimo e normatizado em português (diálogo, intercalação, aposto longo, ênfase, substituto de dois-pontos). A regra tem de mirar **densidade e função** (travessão como conector universal em prosa expositiva), nunca a presença do sinal, e deve proteger diálogo.

### Cited Findings
- Estudo estilométrico com ChatGPT-4o em EN, PT-BR e ES: "the em-dash is the single most discriminating feature in the dataset". Humanos: 0,0 travessões/1.000 tokens em todas as traduções; originais humanos 3,2 (EN), 0,0 (PT-BR), 0,0 (ES). GPT: traduções 10,1 (EN), **27,3 (PT)**, 25,3 (ES); originais 12,5 (EN), **9,5 (PT-BR)**, 2,9 (ES). Os autores concluem que não é empréstimo da língua-fonte, e sim preferência do modelo em zero-shot, suprimível por instrução — [Resende & Castilho, "The Style of Machines", StyGenAI 2026](https://aclanthology.org/2026.stygenai-1.5.pdf) [Certo quanto aos números; Provável quanto à generalização: corpus de um conto por condição, ~1.250–2.000 palavras, sem estatística inferencial, sem réplicas — os próprios autores admitem]
- Mesmo estudo: GPT-4o tem maior riqueza lexical (MTTR PT-BR +3%), maior densidade lexical (PT 0,540 vs. 0,485) e vocabulário mais raro (Zipf médio PT-BR 3,51 vs. 3,70) que o humano; frases dos originais GPT em PT-BR são mais curtas que as humanas — [Resende & Castilho 2026](https://aclanthology.org/2026.stygenai-1.5.pdf) [Certo, com a mesma ressalva de amostra]
- A Economist (jul./2026), via Fast Company Brasil, conclui que "o travessão deixou de ser um indicador confiável": só o Claude usou mais que humanos; o ChatGPT hoje usa bem menos que escritores. Sinais mais consistentes: pontuação escassa (menos vírgulas, ponto e vírgula, parênteses), excesso de "e", vocabulário rebuscado/nominalização, "não é X, é Y", regra de três, frases de tamanho uniforme, prolixidade — [Fast Company Brasil, 07/08/2026](https://fastcompanybrasil.com/ia/esqueca-o-travessao-esses-sinais-entregam-se-um-texto-foi-feito-por-ia/) [Provável: matéria secundária sobre relatório; não vi a metodologia da Economist; não está claro se a análise inclui português]
- Contradição: Resende & Castilho (GPT-4o) achou travessão como marcador quase categórico; Economist (modelos de 2026) diz que o ChatGPT atual subusa. Diferença provável de versão de modelo. — [Resende & Castilho](https://aclanthology.org/2026.stygenai-1.5.pdf); contradito por [Fast Company Brasil/Economist](https://fastcompanybrasil.com/ia/esqueca-o-travessao-esses-sinais-entregam-se-um-texto-foi-feito-por-ia/)
- Wikipedia classifica uso excessivo de travessão como indicador histórico (2022 a set./2026) — [Wikipedia](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) [Certo]
- Norma PT-BR (Manual de Comunicação do Senado): travessão (—) é maior que hífen (-) e meia-risca (–), e nenhum o substitui; abre e fecha falas em citação e diálogo; usado em pares para isolar trechos (como parênteses ou vírgulas), preferível à vírgula para apostos longos; travessão simples no fim do período; pode substituir dois-pontos ao introduzir explicação. Contra o excesso: "muitos travessões no mesmo parágrafo prejudicam a leitura" (trocar por vírgulas); não abrir dois parágrafos seguidos com travessão; em títulos, chamadas, legendas e olhos, trocar por vírgula — [Senado, Manual de Comunicação: Travessão](https://www12.senado.leg.br/manualdecomunicacao/estilos/travessao) [Certo]
- Em inglês os diálogos usam aspas; no PT-BR o mais frequente é o travessão (literatura pode preferir aspas) — [Quero Bolsa](https://querobolsa.com.br/enem/portugues/travessao) [Provável, fonte didática]. Dad Squarisi (Correio Braziliense) recomenda não abusar: "um por parágrafo é pra lá de suficiente" — [Blog da Dad](https://blogs.correiobraziliense.com.br/dad/travessao-quando-usar/amp/) [Provável]

### Inferences
- Formulação sugerida para a regra PT-BR: "Em prosa expositiva (não ficção, e-mail, artigo, post), mais de um travessão (ou par de travessões) por parágrafo, ou travessão usado para emendar uma conclusão/virada retórica no fim da frase ('— e isso muda tudo'), é sinal de IA. **Nunca** alterar: travessão de abertura de fala em diálogo, travessão que isola verbo dicendi ('— Talvez — disse ele —'), travessões em citações. Na correção, preferir vírgula, dois-pontos, parênteses ou ponto, nessa ordem, como o Manual do Senado recomenda." [Provável]
- O sinal mais confiável em PT-BR é o travessão **com espaços no meio de frase expositiva**, emendando orações que um redator brasileiro separaria com vírgula ou ponto. Em PT-BR culto o uso de travessão em intercalação existe, mas é bem menos frequente em jornalismo e redação corporativa do que no inglês norte-americano. [Chute: não achei contagem de corpus humano PT-BR por gênero]
- Também é tell tipográfico em PT o uso de hífen (-) ou meia-risca (–) no lugar do travessão, comum quando o modelo ou o usuário digita em teclado; isso, porém, aparece em humanos também (fraco). [Chute]

### Gaps
- Não encontrei corpus de referência humano PT-BR com taxa de travessão por gênero (jornalismo, blog, acadêmico, ficção). Sem isso, qualquer limiar numérico é chute.
- Não consegui o texto do Ciberdúvidas sobre travessão nem a norma de espaçamento (a apostila da USP sobre o tema existe mas não li: [USP, O travessão](https://edisciplinas.usp.br/pluginfile.php/4975410/mod_resource/content/1/O%20travess%C3%A3o.pdf)).

## Q3. Title Case, aspas curvas e vírgula de Oxford: tipografia que não transfere

### Takeaway
Title Case em títulos é norma do inglês e **contraria a convenção portuguesa** (só a primeira palavra e nomes próprios em maiúscula); em PT-BR é marca de tradução ou de IA, mais forte que em inglês. A vírgula de Oxford ("A, B, e C") não tem equivalente normativo em PT e, quando aparece, é tell de calque. Aspas curvas não são tell em PT (processadores de texto brasileiros as produzem por padrão) — cortar a regra.

### Cited Findings
- Acordo Ortográfico de 1990, Base XIX: nos títulos de obras, a primeira palavra leva maiúscula e as demais podem ir em minúscula, salvo nomes próprios ("O senhor do paço de Ninães", "Árvore e tambor"). A Base XIX também torna facultativa a maiúscula em domínios do saber (matemática/Matemática), em títulos/axiônimos (cardeal/Cardeal) e em categorizações — [InfoEscola, Base XIX](https://www.infoescola.com/acordo-ortografico/base-xix-minuscula-e-maiuscula); texto oficial em [Decreto 6.583/2008, Câmara dos Deputados](https://www2.camara.leg.br/legin/fed/decret/2008/decreto-6583-29-setembro-2008-581372-normaatualizada-pe.html) [Certo quanto à regra; não li o texto do decreto diretamente, só a fonte didática]
- Nota: o Acordo torna a maiúscula interna em títulos de obras **facultativa**, não proibida (títulos bibliográficos). Ainda assim, em títulos de seção, manchetes e intertítulos, a convenção de manuais e jornais brasileiros é caixa-baixa após a primeira palavra — [InfoEscola](https://www.infoescola.com/acordo-ortografico/base-xix-minuscula-e-maiuscula) [Provável para a parte de manuais de jornal: não verifiquei Folha/Estadão diretamente]
- Sabbatini (IAEdPraxis, dez./2024) lista como marcadores de IA em português: vírgula antes do "e" na enumeração ("Comprei maçãs, bananas, e laranjas"), ponto final dentro de citação direta e "uso frequente de iniciais maiúsculas" — [Texto "chocho": como identificar a escrita da IA?](https://iaedpraxis101.substack.com/p/texto-chocho-como-identificar-a-escrita) [Provável: observação de educador, sem corpus]
- O humanizer marca aspas curvas como sinal fraco "onde aspas retas são esperadas" — [blader/humanizer](https://raw.githubusercontent.com/blader/humanizer/main/SKILL.md) [Certo]

### Inferences
- Title Case: regra PT-BR forte — "Título/intertítulo com maiúscula em palavras que não são nome próprio ('Como Escolher O Melhor Plano De Saúde') é calque do inglês; reescrever em caixa-baixa: 'Como escolher o melhor plano de saúde'." Exceção: títulos de obras citadas, siglas, marcas e nomes oficiais de órgãos/leis ("Ministério da Saúde", "Lei Geral de Proteção de Dados"). [Certo quanto à norma; Provável quanto a ser tell — não há contagem]
- Extensão PT-específica da mesma raiz: maiúscula em meses, dias da semana, gentílicos, idiomas e cargos genéricos ("Janeiro", "Segunda-feira", "Brasileiro", "Inglês", "o Diretor") é calque do inglês; em PT vão em minúscula (Base XIX). [Provável]
- Vírgula de Oxford: decisão (b) adaptar — em PT a vírgula antes do "e" final de enumeração simples é desvio da norma; vira tell de calque. Cuidado: a vírgula antes de "e" é legítima quando os sujeitos são diferentes, quando "e" tem valor adversativo ou em polissíndeto ("e... e... e"). A regra deve mirar só enumeração simples A, B, e C. [Provável; a regra gramatical é de gramáticas normativas (Bechara, Cegalla), que não consultei nesta sessão]
- Aspas curvas: (c) cortar. Word e Google Docs em PT-BR convertem para aspas curvas por padrão, então presença de “ ” não indica nada. Se mantiver algo, seria o inverso: em PT europeu e em parte da tradição editorial usam-se aspas angulares « »; em PT-BR padrão, aspas duplas. Não é tell útil. [Provável]
- Ponto final dentro das aspas em citação curta (convenção americana) versus fora (convenção brasileira/ABNT mais comum) pode ser tell de calque, mas é fraco e há variação entre manuais. [Chute]

### Gaps
- Não consegui os manuais da Folha e do Estadão online para citar a regra de caixa-baixa em títulos jornalísticos.
- Nenhuma contagem de frequência de Title Case em saída de LLM em PT.

## Q4. Vocabulário: quais equivalentes PT-BR das "AI words" aparecem de fato?

### Takeaway
Não há estudo de corpus revisado por pares medindo vocabulário sobreusado por LLMs em PT-BR. As fontes disponíveis (blogs de educadores, guias comerciais, observação de concursos) convergem em: **"crucial"**, "fundamental", "mergulhar", "tapeçaria", "vibrante", "meticuloso", "é importante notar/destacar que", "vale ressaltar que", "insight", adjetivos genéricos ("dinâmico", "inovador", "transformador", "envolvente", "fascinante", "disruptivo", "poderoso"). "Crucial" é a mais bem documentada. "Aninhado", "ostenta", "testemunho" e "intrincado" não aparecem em nenhuma fonte PT consultada.

### Cited Findings
- Gran Cursos (Vitor Kessler, jan./2025, atualizado jan./2026): "crucial" é o principal marcador de questões de concurso geradas por ChatGPT; contagem anual de enunciados com "crucial" 2020–2024; também "é importante destacar", "é essencial considerar", "mas também" — [Gran Cursos Online](https://blog.grancursosonline.com.br/o-uso-do-chatgpt-pelos-examinadores-na-elaboracao-de-questoes-de-concurso/) [Provável: método observacional, amostragem não descrita]
- Sabbatini (IAEdPraxis, dez./2024): "crucial", "fundamental", "insight", "mergulhar" (associado explicitamente ao "delve into" inglês), adjetivos "dinâmico", "inovador", "eficiente", "transformador", "envolvente", "fascinante", "disruptivo", "poderoso", "meticuloso"; expressões "É importante notar que...", "Vale ressaltar que...", "Espero que esta mensagem o encontre bem"; advérbios em excesso — [IAEdPraxis](https://iaedpraxis101.substack.com/p/texto-chocho-como-identificar-a-escrita) [Provável]
- Pangram (blog em português) lista "Mergulhe em", "Tapeçaria", "Vibrante", "Em resumo" como frases comuns de IA, com base em Reddit e aiphrasefinder — [Pangram PT](https://www.pangram.com/pt/blog/how-to-detect-ai-writing) [Chute/fraco: fonte comercial, provavelmente traduzida do inglês]
- Undetectable AI (PT) chama "tapeçaria" de o tell mais famoso ("tapeçaria de ideias", "tapeçaria cultural") e cita "aprofundar" — [Undetectable AI PT](https://undetectable.ai/blog/pt/palavras-comuns-em-ia) [Chute/fraco: conteúdo de marketing traduzido; o "tapeçaria" provavelmente herdado da lista inglesa, não observado em PT]
- Em inglês, Juzek & Ward (2025) acharam 21 palavras-foco com pico anômalo em resumos científicos pós-ChatGPT, "delve" em destaque; Kobak et al. (2025) estimam que ≥10% dos resumos PubMed de 2024 passaram por LLM — citados em [Resende & Castilho 2026](https://aclanthology.org/2026.stygenai-1.5.pdf) [Certo para inglês]
- Resende & Castilho: GPT-4o em PT-BR usa vocabulário mais raro que humanos (Zipf 3,51 vs. 3,70) — confirma a tendência a "palavra rebuscada" em PT, sem dizer quais — [StyGenAI 2026](https://aclanthology.org/2026.stygenai-1.5.pdf) [Certo, amostra pequena]
- Economist/Fast Company Brasil: vocabulário rebuscado, termos longos e nominalização como sinal; "e" como termo mais sobreusado — [Fast Company Brasil](https://fastcompanybrasil.com/ia/esqueca-o-travessao-esses-sinais-entregam-se-um-texto-foi-feito-por-ia/) [Provável; idioma da análise não especificado]
- Um estudo de densidade lexical de textos do ChatGPT em cinco línguas, incluindo português (2.991 textos, 706.401 palavras), existe mas trata de densidade, não de vocabulário específico — [SciELO, Texto Livre](https://www.scielo.br/j/tl/a/crx3yywCw3LSxtjtdv44mDC/?lang=pt) [Certo quanto à existência]

### Mapeamento sugerido EN → PT-BR (com força de evidência)

| EN | PT-BR provável | Aparece em fonte PT? | Força |
|---|---|---|---|
| crucial / pivotal | crucial, fundamental, essencial, vital, "papel crucial/fundamental" | sim (Gran Cursos, Sabbatini) | [Provável] |
| delve / deep dive | mergulhar, "mergulhe em", aprofundar, "um mergulho profundo" | sim (Sabbatini, Pangram, Undetectable) | [Provável] |
| tapestry | tapeçaria, "rica tapeçaria", mosaico | só em fontes comerciais | [Chute]: suspeito que em PT o modelo prefira "mosaico", "teia", "riqueza" |
| vibrant | vibrante | sim (Pangram) | [Provável] |
| meticulous | meticuloso, minucioso | sim (Sabbatini) | [Provável] |
| underscore / highlight | ressaltar, destacar, sublinhar, evidenciar; "vale ressaltar", "é importante destacar" | sim (expressões) | [Provável]; "sublinhar" [Chute] |
| showcase | evidenciar, demonstrar, exibir, "mostrar" | não | [Chute] |
| foster | fomentar, promover, fortalecer, impulsionar | só listas de blog | [Chute] |
| intricate | intrincado, complexo, "complexidades" | não | [Chute]: "intrincado" é raro em PT; o modelo tende a "complexo" |
| testament | "um testemunho de", "prova de", "reflexo de" | não | [Chute]: "prova de" e "reflexo de" mais prováveis que "testemunho" |
| boasts | ostenta, "conta com", "possui", "oferece" | não | [Chute]: "conta com" é o calque natural |
| nestled | aninhado, "situado em", "encravado", "localizado no coração de" | não | [Chute]: "no coração de" é muito mais provável que "aninhado" |
| landscape | cenário, panorama, "no cenário atual" | não | [Chute] forte intuição de uso |
| robust | robusto | não | [Chute] |
| enhance | aprimorar, potencializar, otimizar | não | [Chute] |
| key (adj.) | chave ("fator-chave", "ponto-chave") | não | [Chute] |
| Additionally | Além disso, Adicionalmente | não | [Chute]: "Adicionalmente" em início de frase é calque claro |
| insight(s) | insight(s) (anglicismo direto), "percepções valiosas" | sim (Sabbatini) | [Provável] |
| in today's fast-paced world | "no mundo atual", "em um mundo cada vez mais conectado", "nos dias de hoje" | não | [Chute] |

### Inferences
- A lista PT-BR deve ser construída por observação de saída real (gerar textos e contar), não traduzida da inglesa; várias palavras inglesas (nestled, boasts, testament, tapestry) provavelmente se espalham por vários equivalentes em PT e perdem a força como item único. [Provável]
- "Crucial" e "fundamental" são os candidatos com melhor evidência em PT-BR. [Provável]

### Gaps
- Nenhum estudo de corpus PT-BR com frequência normalizada de palavras em texto de LLM vs. humano foi encontrado. É a maior lacuna para o projeto; recomenda-se gerar corpus próprio.

## Q5. Evitação de cópula ("serves as", "stands as") em PT

### Takeaway
O padrão transfere, mas os equivalentes em PT não são calques diretos: os candidatos são "atua como", "funciona como", "se configura como", "se apresenta como", "se destaca como", "representa", "constitui", "conta com" (para "boasts/features") e "se posiciona como". Não encontrei nenhuma fonte PT que documente isso.

### Cited Findings
- Em inglês: "serves as", "stands as", "functions as", "boasts", "features", "offers", "maintains", "refers to" no lugar de "is/are/has" — [humanizer §18](https://raw.githubusercontent.com/blader/humanizer/main/SKILL.md); [Wikipedia](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) [Certo]

### Inferences
- Decisão (b): adaptar com lista PT "atua/funciona como", "se configura como", "se apresenta como", "se destaca como", "se consolida como", "se posiciona como", "conta com", "dispõe de". Correção: "é", "tem". [Chute: sem fonte PT]
- Cautela: "constitui" e "representa" são de registro formal legítimo em texto jurídico/acadêmico brasileiro; só marcar em excesso. "Se configura como" é tique também de redação humana burocrática brasileira, o que reduz o poder discriminante. [Chute]

### Gaps
- Sem evidência PT. Verificar por geração controlada.

## Q6. Orações -ing rasas → gerúndio de encadeamento em PT

### Takeaway
O mapeamento natural é o gerúndio pós-oracional ("..., destacando a importância de...", "..., garantindo que...", "..., contribuindo para..."). Não encontrei estudo que meça isso em LLM PT-BR; as fontes PT consultadas não citam o gerúndio como marcador. Atenção: não confundir com "gerundismo" ("vou estar enviando"), que é outro fenômeno e não é típico de LLM.

### Cited Findings
- Em inglês: "highlighting", "underscoring", "emphasizing", "ensuring", "reflecting", "symbolizing", "contributing to", "fostering", "showcasing" como análises superficiais anexadas ao fim da frase — [humanizer §15](https://raw.githubusercontent.com/blader/humanizer/main/SKILL.md); [Wikipedia](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) [Certo]
- Sabbatini não lista o gerúndio entre os marcadores PT — [IAEdPraxis](https://iaedpraxis101.substack.com/p/texto-chocho-como-identificar-a-escrita) [Certo quanto à ausência]
- Economist/Fast Company: LLMs preferem frases longas encadeadas por "e" — [Fast Company Brasil](https://fastcompanybrasil.com/ia/esqueca-o-travessao-esses-sinais-entregam-se-um-texto-foi-feito-por-ia/) [Provável]; em PT, isso e o gerúndio de encadeamento são duas formas do mesmo "puxadinho" de oração. [Inferência]

### Inferences
- Decisão (b): regra PT "gerúndio no fim da frase que acrescenta avaliação vaga sem informação nova (', destacando...', ', reforçando...', ', evidenciando...', ', garantindo...', ', contribuindo para...', ', promovendo...', ', consolidando-se como...')". Correção: cortar ou transformar em frase própria com sujeito e fato. [Provável: o padrão sintático existe em PT e é estigmatizado por manuais como "gerúndio de posterioridade"/galicismo; não verifiquei a fonte normativa nesta sessão]
- Diferente do inglês, o gerúndio pós-oracional de posterioridade ("O carro bateu no poste, morrendo o motorista") é condenado por gramáticos portugueses tradicionais, o que torna o padrão duplamente marcado em PT. [Chute quanto à fonte: a condenação é conhecida (Napoleão Mendes de Almeida, entre outros) mas não a verifiquei aqui]

### Gaps
- Nenhuma medição de gerúndio em LLM PT-BR. Nenhuma fonte normativa consultada diretamente.

## Q7. Estudos sobre como LLMs escrevem português (translationese, calques)

### Takeaway
A literatura é escassa para geração original em PT-BR. O estudo mais direto (Resende & Castilho 2026) mostra assinatura estilística do GPT-4o em PT-BR (mais riqueza e densidade lexical, vocabulário mais raro, travessão), mas com amostra mínima. Trabalhos sobre translationese em LLMs existem para outras línguas e sugerem que mesmo a geração direta tem interferência parecida com tradução; não achei números para PT.

### Cited Findings
- Resende & Castilho (StyGenAI 2026, Trinity College Dublin/DCU, ADAPT): assinatura translinguística do ChatGPT-4o em EN/PT-BR/ES; perfil mais forte na geração original do que na tradução — [ACL Anthology](https://aclanthology.org/2026.stygenai-1.5.pdf) [Certo]
- Valentini et al., "An Investigation of Translationese in the Generations of Multilingual LLMs" (arXiv 2608.17399, COLM 2026): avalia geração de MLLMs em cinco línguas com classificadores, ANOVA de traços e anotação humana (alemão e espanhol); o resumo não cita português — [arXiv 2608.17399](https://arxiv.org/abs/2608.17399) [Certo quanto à existência; resultados não lidos]
- "Lost in Literalism" (arXiv 2503.04369): todos os LLMs avaliados têm erros significativos de translationese em EN-ZH e DE-EN — [arXiv](https://arxiv.org/abs/2503.04369) [Provável, só snippet]
- Há trabalhos PROPOR 2026 comparando ChatGPT-4o, Gemini 1.5 Pro e Google Translate em 100 expressões PT-BR→EN — [ACL Anthology, PROPOR 2026](https://aclanthology.org/2026.propor-2.30.pdf) [Provável, só snippet; direção oposta à que interessa]
- Napratica relata que o fenômeno de palavras de IA invadindo a fala humana foi identificado primeiro em inglês mas "já dá sinais claros no português brasileiro" — [Na Prática](https://napratica.org.br/noticias/ia-jeito-de-falar) [Chute/fraco: afirmação sem dados PT]

### Inferences
- Para o humanizer PT-BR, a hipótese de trabalho é que muitos tells PT são calques de estruturas inglesas (Title Case, vírgula de Oxford, "Adicionalmente", "não só... mas também", ponto dentro das aspas), somados aos tiques de assistente que são agnósticos de língua. [Provável]
- Os modelos nacionais (Sabiá/Maritaca, Tucano, Gervásio, GlórIA, AMALIA) podem ter perfil diferente por treino em corpus nativo; não achei estudo estilométrico comparando-os ao GPT/Claude em PT. [Gap]

### Gaps
- Não li os resultados por língua de 2608.17399.
- Nenhum estudo sobre Claude em PT-BR especificamente.
- Nenhuma avaliação estilística de Sabiá/Tucano/Gervásio frente a modelos globais.

## Q8. Traços específicos do PT sem equivalente em inglês

### Takeaway
Os candidatos (hipercorreção de mesóclise/ênclise, "o mesmo" anafórico, "onde" para não-lugar, "através de" por "por meio de", "a nível de", inconsistência você/o senhor) são vícios conhecidos de redação **humana** brasileira, condenados por manuais. Não há evidência de que LLMs os produzam mais que humanos; minha expectativa é o contrário para vários deles (LLMs tendem à norma-padrão). Recomendo tratá-los como regras de revisão de estilo, não como sinais de IA, salvo verificação por corpus.

### Cited Findings
- Um manual de redação legislativa estadual trata "através de" vs. "por meio de" como verbete próprio — [Assembleia Legislativa de Goiás, Manual de Redação](https://portal.al.go.leg.br/documentos/manual/manual_de_redacao.pdf) [Provável, só snippet]
- O livro *Os Porquês do Português* (Helena Rebelo, Univ. Aveiro) tem capítulo "ao nível de" ou "a nível de" — [RIA/UA](https://ria.ua.pt/bitstream/10773/35170/1/Os%20porques%20do%20portugues%20FINAL.pdf) [Provável, só sumário]
- Manual de Redação da Presidência da República, 3ª ed. (2018), está disponível online, mas não confirmei o que diz sobre "o mesmo", "a nível de" ou "através de" — [MRPR 3ª ed.](https://files.ufgd.edu.br/arquivos/arquivos/78/PROTOCOLO/Normas%20Internas/Manual%20de%20Reda%C3%A7%C3%A3o%20da%20Presid%C3%AAncia%20da%20Rep%C3%BAblica%20-%203%C2%AA%20edi%C3%A7%C3%A3o,%20revista,%20atualizada%20e%20ampliada.pdf) [Gap]
- Sabbatini aponta "ausência de vocativos adequados" e saudações padronizadas em comunicação pessoal gerada por IA — [IAEdPraxis](https://iaedpraxis101.substack.com/p/texto-chocho-como-identificar-a-escrita) [Provável]; isso toca a questão de tratamento (você/o senhor), mas sem falar em inconsistência.

### Inferences (por traço)
- **"o mesmo/a mesma" como pronome** ("entre no elevador após verificar se o mesmo está parado"): vício burocrático humano clássico. [Chute] LLMs provavelmente usam menos que redatores de repartição; regra de estilo, não de IA.
- **"onde" para não-lugar** ("uma situação onde..."): presente em humanos e provavelmente reforçado em LLM por calque de "where" ("a scenario where"). Candidato razoável a tell de calque, mas fraco. [Chute]
- **"através de" por "por meio de"**: calque de "through"; manuais recomendam "por meio de" para instrumento. Candidato a tell de calque fraco. [Chute]
- **"a nível de"**: vício humano (moda dos anos 1980–90); LLMs provavelmente evitam por ser estigmatizado. Não é tell de IA. [Chute]
- **Hipercorreção pronominal (mesóclise, ênclise em início de frase do PT-BR coloquial, "Me ajude" vs. "Ajude-me")**: a inferência é que LLMs gravitam para a norma lusitana/formal (ênclise em contexto onde o brasileiro usa próclise, "Trata-se de", "Faz-se necessário"), o que soa artificial em registro informal brasileiro. Candidato a tell de registro (b), mas sem evidência. [Chute]
- **Inconsistência você/o senhor, tu/você**: plausível em textos longos de LLM e em tradução (inglês "you" neutro). Candidato a tell (b) com regra "mantenha uma forma de tratamento". [Chute]
- **Sujeito explícito redundante** ("Ele... Ele... Ele"): PT é língua de sujeito nulo; repetir pronome sujeito é calque do inglês. Mais forte que os itens acima. [Provável: a propriedade de sujeito nulo do PT é estabelecida; a frequência em LLM não foi medida]
- **Anglicismos de negócio** ("insight", "performar", "endereçar um problema" (address), "fazer sentido" (make sense), "no final do dia" (at the end of the day), "suportar" (support) no sentido de dar suporte): calques semânticos clássicos do inglês; candidatos bons. Só "insight" tem fonte. [Chute para os demais]
- **Voz passiva analítica e possessivos excessivos** ("seu", "sua" onde o PT usaria artigo: "ele levantou sua mão" ← "raised his hand"): calque clássico de tradução EN→PT. Bom candidato. [Provável como fenômeno de tradução; Chute como tell de LLM]

### Gaps
- Nenhuma fonte direta sobre frequência desses traços em saída de LLM. Nenhum Ciberdúvidas/Folha/Estadão consultado com sucesso.
- Recomendação para o projeto: montar corpus de comparação (mesmos prompts, Claude/GPT/Gemini/Sabiá em PT-BR vs. textos humanos do mesmo gênero) antes de transformar os [Chute] em regras.

## Lista de fontes efetivamente consultadas (13)
1. [blader/humanizer SKILL.md](https://raw.githubusercontent.com/blader/humanizer/main/SKILL.md)
2. [Wikipedia: Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing)
3. [Resende & Castilho, The Style of Machines, StyGenAI 2026](https://aclanthology.org/2026.stygenai-1.5.pdf)
4. [Fast Company Brasil / The Economist, 07/08/2026](https://fastcompanybrasil.com/ia/esqueca-o-travessao-esses-sinais-entregam-se-um-texto-foi-feito-por-ia/)
5. [Senado Federal, Manual de Comunicação: Travessão](https://www12.senado.leg.br/manualdecomunicacao/estilos/travessao)
6. [Gran Cursos, O uso do ChatGPT pelos examinadores](https://blog.grancursosonline.com.br/o-uso-do-chatgpt-pelos-examinadores-na-elaboracao-de-questoes-de-concurso/)
7. [Sabbatini, Texto "chocho", IAEdPraxis](https://iaedpraxis101.substack.com/p/texto-chocho-como-identificar-a-escrita)
8. [InfoEscola, Base XIX](https://www.infoescola.com/acordo-ortografico/base-xix-minuscula-e-maiuscula)
9. [Valentini et al., arXiv 2608.17399](https://arxiv.org/abs/2608.17399)
10. [Pangram PT](https://www.pangram.com/pt/blog/how-to-detect-ai-writing) (fraca)
11. [Undetectable AI PT](https://undetectable.ai/blog/pt/palavras-comuns-em-ia) (fraca)
12. [Blog da Dad Squarisi, Correio Braziliense](https://blogs.correiobraziliense.com.br/dad/travessao-quando-usar/amp/)
13. [Fast Company Brasil sobre o guia da Wikipedia](https://fastcompanybrasil.com/ia/como-saber-se-foi-a-ia-que-escreveu-wikipedia-faz-a-curadoria-dos-cliches/); [Olhar Digital](https://olhardigital.com.br/2025/11/21/pro/wikipedia-cria-guia-detalhado-para-identificar-textos-escritos-por-ia/)
