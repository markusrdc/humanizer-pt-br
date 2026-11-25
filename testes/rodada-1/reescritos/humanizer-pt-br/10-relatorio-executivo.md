# Resumo executivo de relatório

# Diagnóstico de TI: Clínica Odontológica Sorriso Saudável

## Objetivo

Este relatório apresenta o diagnóstico da infraestrutura de TI da clínica. Avaliamos a segurança, a estabilidade e a conformidade dos sistemas e apontamos o que precisa melhorar.

## Principais achados

1. **Backup insuficiente:** os dados dos pacientes são copiados à mão, sem periodicidade definida e sem cópia fora da clínica. Não há registro de testes de restauração.
2. **Rede vulnerável:** pacientes e computadores administrativos usam a mesma rede Wi-Fi, e o roteador está com as configurações de fábrica.
3. **Sistemas desatualizados:** três dos cinco computadores usam versões do Windows que não têm mais suporte do fabricante.
4. **Conformidade com a LGPD:** não há política formal de proteção de dados nem controle de acesso aos prontuários, que todos acessam pela mesma conta de usuário.
5. **Sem proteção contra ameaças:** não há antivírus corporativo nem firewall gerenciado.

## Recomendações

- Implantar backup automático seguindo a regra 3-2-1, com teste de restauração todo mês.
- Separar a rede dos pacientes da rede da equipe administrativa.
- Atualizar ou substituir os computadores com sistema sem suporte.
- Criar uma conta para cada usuário, com controle de acesso, e escrever uma política de privacidade de acordo com a LGPD.
- Contratar antivírus e firewall gerenciados.

## Prioridades

As ações mais urgentes são o backup e a separação da rede. As duas podem ser concluídas em até 30 dias e reduzem bastante o risco de perda de dados e de incidentes de segurança.

---

**O que mudou**

- C4: "realizado com o objetivo de avaliar... bem como identificar oportunidades de melhoria" virou duas frases com verbo e sujeito ("Avaliamos... e apontamos").
- C4/C3: "a rede Wi-Fi utilizada pelos pacientes é a mesma utilizada pelos computadores", "o roteador opera com" e "executam versões" viraram frases diretas.
- C5: "de forma significativa" virou "bastante", e "Ausência de proteção" virou "Sem proteção".
- O título "Conclusão" virou "Prioridades", porque a seção não resume o relatório: diz o que fazer primeiro e em quanto tempo.
- A estrutura de achados numerados e recomendações em lista ficou, porque o cliente vai consultar e acompanhar item por item.

**Para você conferir**

- "Compartilhados por uma única conta de usuário" virou "que todos acessam pela mesma conta". Confira se é isso mesmo (todos os funcionários) ou se só parte da equipe usa essa conta.
- "Reduzem bastante" mantém a força de "de forma significativa", mas sem número. Se houver uma estimativa de risco ou custo, ela entra bem aqui: [detalhe: estimativa de redução de risco ou custo].
