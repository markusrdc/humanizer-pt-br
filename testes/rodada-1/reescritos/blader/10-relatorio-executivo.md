# Resumo executivo de relatório

## Primeira reescrita

# Diagnóstico de TI: Clínica Odontológica Sorriso Saudável

## Objetivo

Este relatório traz o resultado do diagnóstico da infraestrutura de TI da clínica. O diagnóstico avaliou segurança, estabilidade e conformidade dos sistemas e apontou o que pode melhorar.

## Principais achados

1. Backup insuficiente: os dados dos pacientes são copiados à mão, sem periodicidade definida e sem cópia fora da clínica. Não há registro de testes de restauração.
2. Rede vulnerável: a rede Wi-Fi dos pacientes é a mesma dos computadores administrativos, e o roteador está com a configuração de fábrica.
3. Sistemas desatualizados: três dos cinco computadores rodam versões do Windows sem suporte da Microsoft.
4. Conformidade com a LGPD: não há política formal de proteção de dados nem controle de acesso aos prontuários, que são acessados por uma única conta de usuário compartilhada.
5. Sem proteção contra ameaças: não há antivírus corporativo nem firewall gerenciado.

## Recomendações

- Implantar backup automático seguindo a regra 3-2-1, com teste de restauração todo mês.
- Separar a rede dos pacientes da rede da equipe administrativa.
- Atualizar ou substituir os computadores com sistema sem suporte.
- Criar contas individuais com controle de acesso e escrever uma política de privacidade de acordo com a LGPD.
- Contratar antivírus e firewall gerenciados.

## Conclusão

As ações mais urgentes são o backup e a separação da rede. As duas podem ser concluídas em até 30 dias e reduzem bastante o risco de perda de dados e de incidentes de segurança.

## Tells que sobraram

- "avaliou segurança, estabilidade e conformidade... e apontou o que pode melhorar": a seção Objetivo descreve o próprio relatório (§25) e enumera em três por hábito (§6).
- Os rótulos antes dos dois-pontos nos achados ainda funcionam como títulos decorativos; aqui carregam informação (são a categoria de cada achado), então ficam, sem negrito.
- "sem suporte da Microsoft" troca "do fabricante" por um nome; é verdade para o Windows, mas mantenho "do fabricante" para não mudar o original.

## Versão final

# Diagnóstico de TI: Clínica Odontológica Sorriso Saudável

## Objetivo

Avaliamos a segurança, a estabilidade e a conformidade com a LGPD dos sistemas de TI da clínica, para saber o que precisa ser corrigido primeiro.

## Principais achados

1. Backup insuficiente: os dados dos pacientes são copiados à mão, sem periodicidade definida e sem cópia fora da clínica. Não há registro de testes de restauração.
2. Rede vulnerável: os pacientes usam a mesma rede Wi-Fi dos computadores administrativos, e o roteador continua com a configuração de fábrica.
3. Sistemas desatualizados: três dos cinco computadores rodam versões do Windows sem suporte do fabricante.
4. Conformidade com a LGPD: não há política formal de proteção de dados nem controle de acesso aos prontuários, que todos acessam pela mesma conta de usuário.
5. Sem proteção contra ameaças: não há antivírus corporativo nem firewall gerenciado.

## Recomendações

- Implantar backup automático seguindo a regra 3-2-1, com teste de restauração todo mês.
- Separar a rede dos pacientes da rede da equipe administrativa.
- Atualizar ou substituir os computadores com Windows sem suporte.
- Criar contas individuais com controle de acesso e escrever uma política de privacidade de acordo com a LGPD.
- Contratar antivírus e firewall gerenciados.

## Conclusão

Backup e separação da rede vêm primeiro. As duas ações podem ser concluídas em até 30 dias e são as que mais reduzem o risco de perda de dados e de incidentes de segurança.
