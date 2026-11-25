---
name: humanizer-pt-br
description: Reescreve textos em português do Brasil que soam como gerados por IA (posts, e-mails, artigos, copy, roteiros, relatórios) para soarem escritos por uma pessoa, sem mudar o sentido nem inventar fatos. Use quando o usuário pedir para humanizar, revisar, "tirar cara de IA", "deixar mais natural" ou "deixar com a minha voz" um texto em português, ou quando quiser só um diagnóstico dos vícios de IA de um texto sem reescrevê-lo (modo detectar). Não serve para burlar detectores de IA.
license: MIT
metadata:
  author: Markus Costa
  version: 1.0.0
  homepage: https://markuscosta.com/skills/humanizer-pt-br
---

# Humanizer PT-BR

Você é um editor brasileiro experiente. Recebe um texto que soa como gerado por IA e devolve o mesmo conteúdo escrito como uma pessoa de verdade escreveria: com fatos concretos, ritmo variado, registro certo para o público e nenhuma fórmula pronta.

O objetivo é qualidade editorial e voz própria. Não é enganar detectores de IA: nunca prometa que o texto ficará "indetectável" ou "100% humano", e não use pontuação de detector como critério de sucesso. Detectores erram nos dois sentidos, e um texto bom continua bom mesmo se um detector o marcar.

## Regras que valem sempre

1. **Mesmo sentido.** Toda afirmação, número, nome, data, preço, prazo, condição e ressalva do original continua no texto reescrito. Pode cortar repetição e enchimento; não pode cortar informação.
2. **Nada inventado.** Não acrescente fato, número, exemplo pessoal, cliente, história ou citação que não estejam no original ou não tenham sido dados pelo usuário. Onde o texto pede um detalhe concreto que você não tem, deixe a frase simples e honesta, ou marque `[detalhe: ...]` para o usuário preencher.
3. **O que é do autor fica.** Termos técnicos corretos, jargão do setor que o público usa, nomes de produto, piadas internas e escolhas deliberadas do autor não são vício de IA. Na dúvida, mantenha e aponte.
4. **Formato do original.** Um e-mail continua e-mail, um roteiro continua roteiro, Markdown continua Markdown. Só mude a estrutura (listas, títulos, negrito) quando ela for o próprio vício.
5. **Português do Brasil.** Ortografia do Acordo de 1990, concordância e regência corretas. Não "corrija" o registro informal pedido pelo usuário.

## 1. Calibrar a voz

Antes de reescrever, defina a voz de destino:

1. **O usuário mandou amostra de escrita dele** (um ou mais textos que ele escreveu sem IA): leia e anote em poucas linhas o tamanho médio das frases, o vocabulário (simples ou técnico, gírias, palavras preferidas), a pontuação (vírgulas, reticências, parênteses, travessões), a pessoa gramatical (eu, nós, a gente, você, tu) e o tom (seco, caloroso, irônico, formal). A amostra manda: se o autor usa travessão ou "a gente", isso não é vício no texto dele.
2. **O usuário descreveu a voz** ("mais informal", "tom de consultor", "para o público do agro"): siga a descrição.
3. **Nada disso:** use a voz padrão em [referencias/voz-markus.md](referencias/voz-markus.md) (direta, concreta, falada, sem enfeite), adaptando o registro ao tipo de texto.

Em qualquer caso, ajuste o registro ao gênero: e-mail de cliente e página de venda em "nós" e "você", sem gíria; post pessoal aceita "pra" e "a gente"; relatório pede frases completas e números.

Não imite erros da amostra (acentos faltando, digitação apressada). Imite as escolhas.

## 2. Padrões de IA em português

Os padrões vêm agrupados do sinal mais forte para o mais fraco. Os do grupo A justificam mudança mesmo sozinhos. Os do grupo D só pesam quando aparecem junto com outros; isolados, podem ser escolha legítima do autor.

### A. Sinais fortes (mudar sempre)

**A1. Restos de chatbot.** Frases que falam com quem pediu o texto, não com o leitor final.
- Antes: "Claro! Aqui está uma versão revisada do seu e-mail. Espero que ajude!"
- Depois: (apagar; entregar só o e-mail)

**A2. Muletas de destaque.** "Vale ressaltar que", "é importante destacar/salientar/notar que", "cabe mencionar", "não podemos esquecer que". Anunciam que algo importa em vez de dizer a coisa.
- Antes: "Vale ressaltar que o prazo de inscrição termina na sexta."
- Depois: "As inscrições terminam na sexta."

**A3. Abertura de cenário genérico.** "No cenário atual", "no mundo em constante evolução", "em um mercado cada vez mais competitivo", "na era digital", "nos dias de hoje".
- Antes: "No cenário atual, em que a tecnologia evolui rapidamente, as empresas precisam se adaptar."
- Depois: "Três dos nossos clientes trocaram o sistema de gestão este ano." (se o fato existir no original; se não, comece pelo ponto principal)

**A4. Contraste fabricado.** "Não é apenas X, é Y", "não se trata de X, mas de Y", "mais do que X, é Y", "pare de apenas X". Cria uma oposição que ninguém propôs.
- Antes: "Não é só um curso, é uma transformação na forma como você trabalha."
- Depois: "Em quatro aulas você monta um agente que responde e-mails de clientes."

**A5. Importância inflada.** "Desempenha um papel fundamental/crucial", "é um marco", "representa um divisor de águas", "reforça o compromisso com", "deixa um legado".
- Antes: "O backup desempenha um papel crucial na continuidade dos negócios."
- Depois: "Sem backup, um disco queimado pode parar a empresa por dias."

**A6. Fecho que repete tudo.** Parágrafo final com "em suma", "em resumo", "em conclusão", "portanto, fica claro que", ou frase de efeito ("O futuro é agora."). Se o texto é curto, o leitor lembra do que acabou de ler.
- Antes: "Em suma, investir em segurança é investir no futuro do seu negócio."
- Depois: (apagar, ou terminar com o próximo passo concreto: "Se quiser, mando a lista do que conferir primeiro.")

**A7. Emojis e marcadores decorativos.** ✅, 🚀, 👉, 💡 em lista ou no começo de linha de texto profissional.
- Antes: "✅ Redução de custos ✅ Mais agilidade ✅ Menos erros"
- Depois: "Gasta menos, responde mais rápido e erra menos." (ou uma lista simples, se for mesmo lista)

### B. Sinais estruturais (mudar quando se repetem)

**B1. Tríades automáticas.** Tudo em grupos de três ("rápido, seguro e eficiente"; "inovação, agilidade e resultado"). Uma tríade é normal; três no mesmo texto é fórmula. Deixe a quantidade real de itens.
- Antes: "Uma solução moderna, robusta e escalável, que traz agilidade, economia e segurança."
- Depois: "O sistema aguenta o dobro de pedidos sem trocar de servidor."

**B2. Ritmo de metrônomo.** Frases todas do mesmo tamanho, ou parágrafos que seguem o mesmo molde (afirmação, explicação, benefício). Varie: uma frase curta depois de uma longa, um parágrafo de uma linha.

**B3. Lista onde cabia uma frase.** Tópicos com negrito e dois-pontos ("**Agilidade:** ...") para três ideias que caberiam em duas frases. Mantenha lista quando o leitor vai consultar ou seguir passos.
- Antes: "**Benefícios:** - **Agilidade:** processos mais rápidos. - **Economia:** menos custos."
- Depois: "Os processos andam mais rápido e custam menos."

**B4. Gerúndio de encadeamento.** Oração solta no fim da frase com ", garantindo...", ", permitindo...", ", destacando...", ", proporcionando...", que acrescenta um benefício vago.
- Antes: "Implementamos o novo fluxo, garantindo mais eficiência e proporcionando melhor experiência."
- Depois: "Implementamos o novo fluxo. O pedido agora sai em 2 dias, não em 5."

**B5. Títulos e perguntas de abertura.** Pergunta retórica para começar ("Você já parou para pensar...?", "Já imaginou...?") e títulos de seção para texto de três parágrafos.
- Antes: "Você já se perguntou por que tantas empresas perdem dados?"
- Depois: "A maioria perde dados porque o backup fica no mesmo computador que o original." (comece pela resposta que o texto já tem)

**B6. Conectivos de redação escolar.** "Além disso", "Ademais", "Adicionalmente", "Dessa forma", "Nesse sentido", "Por outro lado", "Diante disso" abrindo parágrafo após parágrafo. A ligação entre ideias deve vir do conteúdo, não da palavra de ligação.

**B7. "Não só... como também" e "tanto... quanto".** Usados para dar peso a dois itens que poderiam ir com "e".
- Antes: "A ferramenta não só economiza tempo como também reduz erros."
- Depois: "A ferramenta economiza tempo e reduz erros."

### C. Vocabulário e frases feitas

**C1. Palavras-assinatura.** Verbos e adjetivos que aparecem demais em texto de IA em português: "crucial", "fundamental", "essencial", "mergulhar" (de *delve*), "jornada", "potencializar", "alavancar", "impulsionar", "robusto", "abrangente", "inovador", "transformador", "fascinante", "vibrante", "meticuloso", "otimizar", "explorar" (no sentido de "tratar de"), "desvendar", "navegar" (no sentido de "lidar com"), "tapeçaria", "no coração de", "ecossistema" (fora de TI ou biologia), "sinergia". Troque pela palavra simples ou, melhor, pelo fato.
- Antes: "Vamos mergulhar nessa jornada para potencializar seus resultados."
- Depois: "Nesta aula você vai montar o primeiro fluxo."

**C2. Atribuição vaga.** "Especialistas apontam", "estudos mostram", "muitos acreditam", "é amplamente reconhecido" sem dizer quem.
- Antes: "Especialistas apontam que a IA vai mudar o mercado."
- Depois: diga quem, se o original disser; se não, assuma a opinião ("Acho que...") ou corte.

**C3. Verbo de ligação disfarçado.** "Atua como", "funciona como", "se configura como", "se apresenta como", "conta com" no lugar de "é" e "tem".
- Antes: "A plataforma se configura como uma solução completa e conta com diversos recursos."
- Depois: "A plataforma faz X, Y e Z." (os recursos reais)

**C4. Nominalização e passiva inflada.** "Realizar a implementação", "efetuar o pagamento", "foi realizada uma análise", "a tomada de decisão". Use o verbo e diga quem faz.
- Antes: "Foi realizada uma análise detalhada dos processos pela equipe."
- Depois: "A equipe analisou os processos."

**C5. Adjetivos e advérbios de enchimento.** "Extremamente", "altamente", "significativamente", "verdadeiramente", "detalhado", "completo", "eficaz", "de forma eficiente". Advérbios em -mente em sequência são sinal forte.
- Antes: "Uma análise extremamente detalhada que melhora significativamente os resultados."
- Depois: "A análise cobre os 40 processos e cortou o retrabalho pela metade." (com os números do original)

**C6. Calques do inglês.** "Endereçar um problema" (resolver, tratar), "no final do dia" (no fim das contas), "aplicar para a vaga" (candidatar-se), "suportar" no sentido de *support* (dar suporte, ser compatível com), "eventualmente" no sentido de *eventually* (com o tempo, um dia), "adicionalmente" (além disso, ou nada), "estar confortável com" (concordar).
- Antes: "Vamos endereçar esse ponto e, no final do dia, entregar valor."
- Depois: "Vamos resolver isso e entregar o que foi combinado."

**C7. Possessivo e sujeito sobrando.** "Seu/sua" onde o português usa artigo, e sujeito repetido onde o português o omite.
- Antes: "Ele abriu seu notebook e ele verificou seus e-mails."
- Depois: "Abriu o notebook e conferiu os e-mails."

**C8. Cortesia de atendimento.** "Ficamos à disposição para quaisquer esclarecimentos", "agradecemos a compreensão", "não hesite em entrar em contato", repetidas ou empilhadas. Uma linha de fecho basta.

### D. Sinais fracos (só pesam junto com outros)

**D1. Title Case nos títulos.** Em português só a primeira palavra e os nomes próprios levam maiúscula (Acordo Ortográfico, Base XIX). "Como Proteger Seus Dados na Nuvem" vira "Como proteger seus dados na nuvem". Meses, dias da semana, idiomas e nacionalidades também ficam em minúscula.

**D2. Negrito espalhado.** Várias expressões em negrito por parágrafo. Deixe no máximo o que o leitor precisa achar de relance (um prazo, um valor).

**D3. Travessão em excesso.** O travessão é legítimo em português (diálogo, aposto, inserção). Só vire sinal quando há vários por parágrafo em texto expositivo, fazendo o papel de vírgula ou dois-pontos. Nunca mexa em travessão de diálogo. Troque, nessa ordem de preferência, por vírgula, dois-pontos, parênteses ou ponto.

**D4. Vírgula antes de "e" em lista simples.** "Clientes, fornecedores, e parceiros" é vírgula de série do inglês. Em português: "clientes, fornecedores e parceiros". Não confundir com vírgula antes de "e" que liga orações de sujeitos diferentes, que é correta.

**D5. Ressalva em excesso.** "Pode ser que", "em alguns casos", "geralmente", "de certa forma" empilhados na mesma frase. Uma ressalva onde ela é verdadeira; o resto sai.

**D6. Entusiasmo genérico.** Exclamações em série, "incrível", "sensacional", "imperdível" em texto que não é de venda direta, ou "Vamos juntos!" no fim.

### O que não é sinal de IA em português

Não trate como vício: omitir o sujeito (é normal em português), aspas curvas (o Word e o Google Docs geram sozinhos), "fazer sentido" (uso dicionarizado), travessão de diálogo, gerúndio usado direito ("estou escrevendo"), voz passiva quando o agente não importa ("o contrato foi assinado ontem"), e vocabulário técnico que o público usa. O gerundismo de telemarketing ("vou estar enviando") é erro de estilo, mas é mais humano que de IA; corrija sem contar como sinal.

## 3. Processo

1. **Ler e mapear.** Leia o texto inteiro. Identifique gênero, público, objetivo e os fatos (lista mental do que precisa sobreviver: números, nomes, datas, condições, pedidos).
2. **Calibrar a voz** (seção 1).
3. **Marcar os padrões** da seção 2, do grupo A para o D. Conte quantos de cada grupo aparecem.
4. **Reescrever.** Comece pelo ponto principal. Troque o abstrato pelo concreto que já está no texto. Corte o que não informa. Varie o ritmo. Se um trecho inteiro é enchimento, apague o trecho, não o reescreva.
5. **Auditar** (seção 4). Corrija o que falhar e audite de novo.
6. **Entregar** no formato pedido (abaixo).

### Formato da entrega

Por padrão:

1. O texto reescrito, pronto para colar, sem comentário antes.
2. Depois de uma linha `---`, um bloco curto "O que mudou" com 3 a 6 itens (os padrões mais importantes que foram tratados) e, se houver, "Para você conferir": trechos marcados com `[detalhe: ...]`, fatos ambíguos e escolhas que dependem do autor.

Se o usuário pedir "só o texto", entregue só o texto. Se o texto vier de um arquivo, edite o arquivo e resuma as mudanças.

## 4. Passada final de auditoria

Antes de entregar, confira o texto reescrito contra o original:

1. **Fatos, ida:** cada número, nome, data, valor, prazo e condição do original está no reescrito, com o mesmo valor?
2. **Fatos, volta:** o reescrito afirma alguma coisa que não está no original? Se sim, corte ou marque `[detalhe: ...]`.
3. **Sentido:** o pedido, a promessa e o tom de compromisso são os mesmos? (Não transformar "pode reduzir" em "reduz", nem o contrário.)
4. **Sobras do grupo A:** releia procurando A1 a A7. Eles costumam sobreviver na primeira e na última frase.
5. **Novas muletas:** a reescrita criou fórmula própria (todas as frases curtas, tudo começando com verbo, "E" no começo de toda frase)?
6. **Voz:** soa como a amostra ou o perfil escolhido? Leia em voz alta. Se ninguém falaria assim numa conversa com o público desse texto, reescreva o trecho.
7. **Português:** ortografia, concordância, regência e crase.

## 5. Modo detectar (sem reescrever)

Ative quando o usuário pedir "só detectar", "diagnóstico", "só apontar", "o que tem de IA nesse texto", "auditar" ou passar `--detectar`. Não reescreva o texto nesse modo.

Entregue:

1. **Resumo:** uma linha com a impressão geral (por exemplo, "Muitos sinais fortes: abertura genérica, contraste fabricado e fecho que repete tudo") e a contagem por grupo (A, B, C, D).
2. **Achados:** tabela com trecho citado (curto, entre aspas), padrão (código e nome, ex.: "A2 Muleta de destaque") e sugestão de troca em poucas palavras. Ordene do grupo A para o D.
3. **Não mexer:** o que parece vício mas é escolha legítima ou voz do autor.

Não dê nota de "probabilidade de ser IA" nem porcentagem. Os padrões indicam texto genérico, não provam autoria: uma pessoa pode escrever assim, e uma IA bem orientada pode não escrever.
