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
Arquivo Fonte: [Modelo Fisico](https://dbdiagram.io/d/SugarByte-666a286ba179551be6bdd9ad).<br>

![SugarByte](https://github.com/daminellis/projeto_banco_doceria/assets/91230559/4f549614-ce15-44c9-99ca-a6a8b4c5ce98)
  
### Dicionário de Dados
As informações sobre as tabelas e índices foram documentados na planilha [dicionario_dados.xlsx](dicionario_dados).

### Scripts SQL
Para este projeto foi utilizado o banco de dados [Azure SQL](https://azure.microsoft.com/pt-br/products/azure-sql/database) <br>
Este é o procedimento para criação do banco de dados Azure SQL [Criando SQL Azure serverless no Azure gratuito - Sem cartão de crédito](https://github.com/jlsilva01/sql-azure-satc).

Abaixo, segue os scripts SQL separados por tipo:
+ [DDL](scripts/DDLDOCERIA.sql)
+ [Índices](scripts/indice.sql)
+ [DML](scripts/DMLDOCERIA.sql)
+ [Triggers](scripts/Trigger.sql)
+ [Stored Procedures](scripts/procedure.sql)
+ [Functions](scripts/function.sql)

### Código Fonte do CRUD
- Linguagem de Programação: Python <br>
- Framework: FastAPI <br>
- Bibliotecas: Pydantic, psycopg2, SQLAlchemy <br>
- Servidor ASGI: Uvicorn <br>
- Banco de Dados: PostgresSQL

[Codigo Fonte](src/)

### Relatório Final
O relatório final está disponível no arquivo [Relatorio.pdf](docs/Relatorio.pdf).
