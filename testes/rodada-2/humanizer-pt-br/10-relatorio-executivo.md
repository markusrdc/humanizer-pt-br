# Resumo executivo de relatório

# Diagnóstico de TI: Clínica Odontológica Sorriso Saudável

## Objetivo

Este relatório traz o resultado do diagnóstico da infraestrutura de TI da clínica. O diagnóstico avaliou a segurança, a estabilidade e a conformidade dos sistemas e identificou o que pode melhorar.

## Principais achados

1. **Backup insuficiente:** os dados dos pacientes são copiados manualmente, sem periodicidade definida e sem cópia fora da clínica. Não há registro de testes de restauração.
2. **Rede vulnerável:** os pacientes usam a mesma rede Wi-Fi dos computadores administrativos, e o roteador está com as configurações de fábrica.
3. **Sistemas desatualizados:** três dos cinco computadores rodam versões do Windows sem suporte do fabricante.
4. **Conformidade com a LGPD:** não há política formal de proteção de dados nem controle de acesso aos prontuários, que são acessados por uma única conta de usuário compartilhada.
5. **Sem proteção contra ameaças:** não há antivírus corporativo nem firewall gerenciado.

## Recomendações

- Implantar backup automático pela regra 3-2-1, com teste de restauração todo mês.
- Segmentar a rede: uma para os pacientes, outra para a equipe administrativa.
- Atualizar ou substituir os computadores com Windows sem suporte.
- Criar contas individuais com controle de acesso e escrever uma política de privacidade de acordo com a LGPD.
- Contratar antivírus e firewall gerenciados.

## Conclusão

As prioridades são o backup e a segmentação da rede. As duas ações podem ser concluídas em até 30 dias e reduzem bastante o risco de perda de dados e de incidentes de segurança.

---

**O que mudou**

- C4: "realizado com o objetivo de avaliar... bem como identificar oportunidades de melhoria" virou duas frases com verbo direto.
- C4: "executam versões do Windows", "a rede utilizada pelos pacientes é a mesma utilizada pelos computadores" e "opera com configurações de fábrica" ficaram mais diretos.
- C5: "reduzem de forma significativa" virou "reduzem bastante"; "As ações de maior prioridade" virou "As prioridades".
- O texto já estava bom para um relatório. Mantive o título, as quatro seções, a lista numerada de achados (o leitor vai consultar) e todos os números: três de cinco computadores, testes mensais, 30 dias.

**Para você conferir**

- Mantive os rótulos em negrito dos achados porque ajudam a achar cada item de relance. Se o relatório for impresso só para o dono da clínica, dá para tirar.
- "Segmentar a rede" é termo técnico; deixei a explicação logo depois. Se o leitor for leigo, "Separar a rede" funciona sozinho.
- "Atualizar ou substituir" não diz qual das duas opções vale para cada computador. Se o diagnóstico já sabe (por exemplo, se o hardware aceita o Windows atual), vale dizer.
