# Resumo executivo de relatório

# Diagnóstico de TI: Clínica Odontológica Sorriso Saudável

## Objetivo

Este relatório traz o resultado do diagnóstico da infraestrutura de TI da clínica. O diagnóstico avaliou a segurança, a estabilidade e a conformidade dos sistemas e apontou o que pode ser melhorado.

## Principais achados

1. **Backup insuficiente:** os dados dos pacientes são copiados à mão, sem periodicidade definida e sem cópia fora da clínica. Não há registro de testes de restauração.
2. **Rede vulnerável:** os pacientes usam a mesma rede Wi-Fi dos computadores administrativos, e o roteador está com as configurações de fábrica.
3. **Sistemas desatualizados:** três dos cinco computadores rodam versões do Windows sem suporte do fabricante.
4. **Conformidade com a LGPD:** não há política formal de proteção de dados nem controle de acesso aos prontuários, que são compartilhados por uma única conta de usuário.
5. **Ausência de proteção contra ameaças:** não há antivírus corporativo nem firewall gerenciado.

## Recomendações

- Implantar backup automático seguindo a regra 3-2-1, com testes mensais de restauração.
- Separar a rede dos pacientes da rede da equipe administrativa.
- Atualizar ou substituir os computadores com sistemas sem suporte.
- Criar contas individuais com controle de acesso e escrever uma política de privacidade alinhada à LGPD.
- Contratar antivírus e firewall gerenciados.

## Conclusão

As ações de maior prioridade são o backup e a separação da rede. As duas podem ser concluídas em até 30 dias e reduzem bastante o risco de perda de dados e de incidentes de segurança.

---

**O que mudou**

- Quebrei a frase única do Objetivo ("apresenta os resultados do diagnóstico... realizado com o objetivo de... bem como identificar oportunidades de melhoria") em duas frases com verbo e sujeito (C4).
- Troquei passivas e verbos inflados nos achados ("a rede Wi-Fi utilizada pelos pacientes é a mesma utilizada...", "opera com", "executam") por formas diretas.
- Tirei "solução de" da última recomendação e troquei "de forma significativa" por "bastante" (C5).
- Mantive título, seções, numeração e os rótulos dos achados, que são o nome de cada problema.

**Para você conferir**

- O achado 4 tem o rótulo "Conformidade com a LGPD", mas descreve uma falta de conformidade. Se quiser que o rótulo diga o problema, como os outros, uma opção é "Falta de conformidade com a LGPD".
- "Segmentar a rede" virou "Separar a rede". Se o cliente tiver equipe técnica, o termo original pode ficar.
