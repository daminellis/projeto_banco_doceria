## Projeto Sistema de Atividades Especiais - GRUPO A

# SugarByte Database

### Integrantes
[Matheus Daminelli](https://github.com/daminellis)<br>
[Matheus Gastaldi](https://github.com/Matheus2037)<br>
[Lucas Silva](https://github.com/Lorrust)<br>
[João Carlos](https://github.com/Churima)<br>
[Jean Guichard](https://github.com/Guichardx2)<br>
[Gabriel Morona](https://github.com/M0rona)<br>

### Modelo Físico
Utilizamos a ferramenta de modelagem de dados [dbdiagram.io](https://dbdiagram.io/) para criação do modelo físico do banco de dados, para posterior exportação dos scripts DDL das tabelas e relacionamentos.<br>
Arquivo fonte: [Modelo Fisico](https://dbdiagram.io/d/SugarByte-666a286ba179551be6bdd9ad).<br>

![image](https://github.com/daminellis/projeto_banco_doceria/assets/91230559/31c3a374-c607-4f44-ad2c-f13807bd04a2)
  
### Dicionário de Dados
As informações sobre as tabelas e índices foram documentados na planilha [template1.xlsx](dicionario_dados/template1.xlsx).

### Scripts SQL
Para este projeto foi utilizado o banco de dados [Azure SQL](https://azure.microsoft.com/pt-br/products/azure-sql/database) <br>
Este é o procedimento para criação do banco de dados Azure SQL [Criando SQL Azure serverless no Azure gratuito - Sem cartão de crédito](https://github.com/jlsilva01/sql-azure-satc).

Abaixo, segue os scripts SQL separados por tipo:
+ DDL [ddl.sql](scripts/DDLDOCERIA.sql)
+ Índices [indices.sql](cripts_sql/indice.sql)
+ DML [dml.sql](scripts/DMLDOCERIA.sql)
+ Triggers [triggers.sql](scripts/Trigger.sql)
+ Stored Procedures [stored_procedures.sql](scripts_sql/stored_procedures.sql)
+ Functions [functions.sql](scripts/function.sql)

### Código Fonte do CRUD
- Linguagem de Programação: Python <br>
- Framework PostgresSQL
- Projeto Windows Forms
- Biblioteca Entity Framework para SQL Server (nativo)

[Codigo Fonte](fonte/)

### Relatório Final
O relatório final está disponível no arquivo [template1.docx](relatorio/template1.docx).
