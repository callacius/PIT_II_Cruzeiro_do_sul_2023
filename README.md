# Projeto Café Unifran

## Sobre o Projeto
Este projeto é parte do PIT (Projeto Integrador Transdisciplinar) em Ciência da Computação II da Universidade Cruzeiro do Sul. O sistema do Café Unifran é uma aplicação Delphi com banco de dados SQLite desenvolvida para gerenciar as operações de uma cafeteria. Inclui funcionalidades como gestão de usuários, produtos, clientes, fornecedores e processamento de vendas.

## Estrutura do Banco de Dados
### Tabelas:
- **Usuarios**: Armazena informações dos usuários (ID, nome, senha, tipo de usuário).
- **Produtos**: Contém detalhes dos produtos (ID, nome, preço).
- **Pessoas**: Unifica clientes, entregadores, fornecedores (ID, nome, CPF, endereço, flags booleanas para papéis).
- **Vendas**: Registra vendas (ID da venda, ID da pessoa, data/hora, valor total).
- **ItensVenda**: Detalha itens das vendas (ID do item, ID da venda, ID do produto, quantidade, preço unitário).

## Funcionalidades do Sistema
1. **Login e Gestão de Usuários**: Acesso seguro com diferentes níveis de permissão.
2. **Gerenciamento de Produtos**: Inclusão, edição e visualização de produtos.
3. **Cadastro Unificado**: Registro de clientes, entregadores, fornecedores.
4. **Processamento de Vendas**: Interface de PDV para vendas, seleção de clientes/produtos, gestão de pagamentos.
5. **Relatórios e Análises**: Geração de relatórios sobre vendas e desempenho de produtos (planejado, mas não implementado).

## Testes da Solução
Testes abrangendo login, cadastro, vendas e gerenciamento de produtos foram realizados. Problemas identificados incluem inconsistências na máscara de CPF e erros na função de busca avançada de produtos.

## Feedback e Melhorias
- Melhoria na formatação da máscara de CPF.
- Correção na função de deletar usuários.
- Aprimoramento nos cálculos de totais na tela de vendas.
- Implementação de notificações de estoque baixo e exportação de dados para Excel (planejado).

## Conclusão
Este projeto demonstra um sistema robusto para gestão de operações de cafeteria, com espaço para melhorias contínuas e adição de novas funcionalidades.

