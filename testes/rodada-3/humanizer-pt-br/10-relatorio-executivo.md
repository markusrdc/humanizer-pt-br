# Resumo executivo de relatório

# Diagnóstico de TI: Clínica Odontológica Sorriso Saudável

## Objetivo

Este relatório apresenta o resultado do diagnóstico da infraestrutura de TI da clínica. O diagnóstico avaliou a segurança, a estabilidade e a conformidade dos sistemas e identificou o que pode ser melhorado.

## Principais achados

1. **Backup insuficiente:** os dados dos pacientes são copiados à mão, sem periodicidade definida e sem cópia fora da clínica. Não há registro de testes de restauração.
2. **Rede vulnerável:** os pacientes usam a mesma rede Wi-Fi dos computadores administrativos, e o roteador está com as configurações de fábrica.
3. **Sistemas desatualizados:** três dos cinco computadores usam versões do Windows sem suporte do fabricante.
4. **Conformidade com a LGPD:** não há política formal de proteção de dados nem controle de acesso aos prontuários. Todos acessam os prontuários pela mesma conta de usuário.
5. **Ausência de proteção contra ameaças:** não há antivírus corporativo nem firewall gerenciado.

## Recomendações

- Implantar backup automático pela regra 3-2-1, com teste de restauração todo mês.
- Separar a rede dos pacientes da rede da equipe administrativa.
- Atualizar ou substituir os computadores com sistemas sem suporte.
- Criar contas individuais com controle de acesso e elaborar uma política de privacidade alinhada à LGPD.
- Contratar antivírus e firewall gerenciados.

## Conclusão

As ações mais urgentes são o backup e a separação da rede. As duas podem ser concluídas em até 30 dias e reduzem bastante o risco de perda de dados e de incidentes de segurança.

---

**O que mudou**

- Desfiz a frase longa e nominalizada do Objetivo ("realizado com o objetivo de avaliar... bem como identificar oportunidades de melhoria") em duas frases com verbo (C4).
- Passei as descrições dos achados para a voz ativa e para o verbo simples: "a rede utilizada pelos pacientes é a mesma utilizada pelos computadores" virou "os pacientes usam a mesma rede dos computadores"; "executam" virou "usam" (C4).
- "Reduzem de forma significativa" virou "reduzem bastante" (C5); "segmentar a rede" virou "separar a rede", com o mesmo sentido.
- Mantive título, as quatro seções, os rótulos dos achados (são o nome de cada achado), as listas e todos os números (3 de 5 computadores, testes mensais, 30 dias).

**Para você conferir**

- O achado 4 fala em "política formal de proteção de dados", e a recomendação fala em "política de privacidade". São a mesma coisa? Se sim, use o mesmo nome nos dois lugares.
- O rótulo "Conformidade com a LGPD" é o único que não diz o problema (os outros dizem: "insuficiente", "vulnerável", "desatualizados"). Sugestão: "LGPD sem política nem controle de acesso".
- "Sem suporte do fabricante" pode ser "sem suporte da Microsoft", se quiser deixar mais claro para quem lê.
