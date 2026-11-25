# Resumo executivo de relatório

# Diagnóstico de TI: Clínica Odontológica Sorriso Saudável

## Objetivo

Este relatório apresenta os resultados do diagnóstico da infraestrutura de tecnologia da informação da clínica, realizado com o objetivo de avaliar a segurança, a estabilidade e a conformidade dos sistemas, bem como identificar oportunidades de melhoria.

## Principais achados

1. **Backup insuficiente:** os dados dos pacientes são copiados manualmente, sem periodicidade definida e sem cópia fora da clínica. Não há registro de testes de restauração.
2. **Rede vulnerável:** a rede Wi-Fi utilizada pelos pacientes é a mesma utilizada pelos computadores administrativos, e o roteador opera com configurações de fábrica.
3. **Sistemas desatualizados:** três dos cinco computadores executam versões do Windows sem suporte do fabricante.
4. **Conformidade com a LGPD:** não há política formal de proteção de dados nem controle de acesso aos prontuários, que são compartilhados por uma única conta de usuário.
5. **Ausência de proteção contra ameaças:** não há antivírus corporativo nem firewall gerenciado.

## Recomendações

- Implantar backup automático seguindo a regra 3-2-1, com testes mensais de restauração.
- Segmentar a rede, separando o acesso de pacientes e o da equipe administrativa.
- Atualizar ou substituir os computadores com sistemas sem suporte.
- Criar contas individuais com controle de acesso e elaborar uma política de privacidade alinhada à LGPD.
- Contratar solução de antivírus e firewall gerenciados.

## Conclusão

As ações de maior prioridade são o backup e a segmentação da rede, que podem ser concluídas em até 30 dias e reduzem de forma significativa o risco de perda de dados e de incidentes de segurança.
