# 🎓 Sistema de Gestão Escolar & Controle Transacional

> **Status:** Concluído ✅

## 📋 Sobre o Projeto
Este repositório contém scripts SQL focados em regras de negócio acadêmicas e segurança de dados financeira. O objetivo é demonstrar o controle de **integridade de dados** em cenários críticos.

## 🛠 Destaques Técnicos

### 1. Módulo Acadêmico (Gestão Escolar)
Sistema para controle de alunos, professores, turmas e notas.
* **Relacionamentos Complexos:** Alunos matriculados em múltiplas turmas de diferentes disciplinas.
* **Constraints:** Validação de chaves estrangeiras (FK) para impedir que uma nota seja atribuída a um aluno inexistente.

### 2. Módulo Financeiro (Livraria - Transaction Control)
Demonstração prática de **ACID** (Atomicidade, Consistência, Isolamento e Durabilidade).
* Uso de `BEGIN TRANSACTION`, `COMMIT` e `ROLLBACK`.
* **Cenário:** Simulação de erro durante uma atualização de preços para garantir que o banco não fique em estado inconsistente.

```sql
-- Exemplo de Transação Segura:
BEGIN;
  INSERT INTO livros (titulo, preco) VALUES ('Livro Teste', 50.00);
  -- Se algo der errado aqui...
ROLLBACK; -- Desfaz tudo
-- Se der certo:
COMMIT; -- Salva
🚀 Como Executar
Basta importar os arquivos .sql em qualquer ferramenta de gerenciamento de banco de dados (DBeaver, pgAdmin, Datagrip).

Desenvolvido por Karine de Oliveira
