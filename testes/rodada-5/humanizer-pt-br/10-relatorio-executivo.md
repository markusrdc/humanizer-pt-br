# Resumo executivo de relatório

# Diagnóstico de TI: Clínica Odontológica Sorriso Saudável

## Objetivo

Este relatório apresenta o resultado do diagnóstico da infraestrutura de TI da clínica. O diagnóstico avaliou a segurança, a estabilidade e a conformidade dos sistemas e apontou o que pode melhorar.

## Principais achados

1. **Backup insuficiente:** os dados dos pacientes são copiados manualmente, sem periodicidade definida e sem cópia fora da clínica. Não há registro de testes de restauração.
2. **Rede vulnerável:** pacientes e computadores administrativos usam a mesma rede Wi-Fi, e o roteador está com as configurações de fábrica.
3. **Sistemas desatualizados:** três dos cinco computadores rodam versões do Windows sem suporte do fabricante.
4. **Conformidade com a LGPD:** não há política formal de proteção de dados nem controle de acesso aos prontuários. Todos acessam os prontuários pela mesma conta de usuário.
5. **Ausência de proteção contra ameaças:** não há antivírus corporativo nem firewall gerenciado.

## Recomendações

- Implantar backup automático seguindo a regra 3-2-1, com teste de restauração todo mês.
- Separar a rede dos pacientes da rede da equipe administrativa.
- Atualizar ou substituir os computadores com sistemas sem suporte.
- Criar uma conta para cada usuário, com controle de acesso, e escrever uma política de privacidade alinhada à LGPD.
- Contratar antivírus e firewall gerenciados.

## Conclusão

As ações mais urgentes são o backup e a separação da rede. As duas podem ficar prontas em até 30 dias e reduzem bastante o risco de perda de dados e de incidentes de segurança.

---

**O que mudou**

- O objetivo deixou de ser uma frase só, com "realizado com o objetivo de avaliar... bem como identificar oportunidades de melhoria" (C4). Agora são duas frases diretas.
- Nos achados, "a rede utilizada pelos pacientes é a mesma utilizada pelos computadores" virou "pacientes e computadores administrativos usam a mesma rede"; "opera com" e "executam" viraram "está com" e "rodam" (C4).
- "Segmentar a rede, separando o acesso..." virou "separar a rede dos pacientes da rede da equipe" (B4). "Testes mensais" virou "teste todo mês".
- Mantive as seções fixas (Objetivo, Principais achados, Recomendações, Conclusão), os rótulos em negrito dos achados, que nomeiam cada problema, e todos os números: três de cinco computadores, 3-2-1, 30 dias.
- A conclusão ficou com a mesma força: "podem ficar prontas" (não "ficam") e "reduzem bastante" no lugar de "de forma significativa".

**Para você conferir**

- O achado 4 fala em "política formal de proteção de dados" e a recomendação fala em "política de privacidade". Se for o mesmo documento, use o mesmo nome nos dois.
- O rótulo "Conformidade com a LGPD" nomeia o tema, não o problema, ao contrário dos outros. "Fora da LGPD" ou "LGPD sem controle" seguiria o padrão. Não troquei.
