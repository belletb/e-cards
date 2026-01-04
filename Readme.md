# Projeto E-Cards Pokémon – Curso GenIA & Dados (DIO)

## Descrição
Este projeto foi desenvolvido como parte do curso GenIA e Dados da DIO.  
O objetivo é criar e manipular um banco de dados relacional em PostgreSQL para gerenciar coleções de cartas Pokémon.  
O projeto inclui scripts SQL para criação de tabelas, inserção em massa de dados e automação de migrações.


## Funcionalidades
- Estrutura relacional com chaves primárias e estrangeiras  
- Scripts para criação de tabelas (`tbl_collections`, `tbl_types`, `tbl_stages`, `tbl_cards`)  
- Inserção em massa de cartas Pokémon com atributos detalhados  
- Script em PowerShell para combinar arquivos SQL em uma única migração  
- Criação de views para facilitar consultas, substituindo IDs por nomes descritivos  

## Tecnologias Utilizadas
- PostgreSQL  
- SQL  
- PowerShell  
- Visual Studio Code  


## Estrutura de Pastas
db_scripts/
├── tables/           # Scripts de criação das tabelas
├── seeds/            # Inserção de dados e migrações
└── views/            # Views para consultas simplificadas

## Como Executar
1. Clone o repositório:
   ```bash
   git clone https://github.com/belletbassi/e-cards.git
   cd e-cards

2. Crie o banco de dados e rode os scripts de tabelas:
psql -U seu_usuario -d seu_banco -f db_scripts/tables/001_create_tables.sql

3. Insira os dados em massa:
psql -U seu_usuario -d seu_banco -f db_scripts/seeds/004_bulk_cards.sql

4. Gere o arquivo de migração com PowerShell:
pwsh db_scripts/seeds/to_migrations.ps1

5. Crie a view para consultas:
psql -U seu_usuario -d seu_banco -f db_scripts/views/vw_cards_full.sql
 
## Uso
Consultar todas as cartas com informações completas:
SELECT * FROM vw_cards_full;