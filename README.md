# APP-TESTE-PRINTER

Esta aplicacão tem como maior objetivo explorar conhecimentos para o desafio de criação de uma API em Ruby on Rails. Além das rotas padrões do devise (cadastro de usuário, login, logout...), dispõe de end-point simples, onde é possível buscar usuário cadastrado no sistema fazendo a busca por nome. A utilização do sqllite como database, e a não implementação de services ou outros patters no projeto, se dá por conta da simplicidade da solução, não cabendo nesse escopo (Overengineering).

Topics:
- Stack
- Executando os testes com Rspec
- Executar a aplicação local
- Créditos

## Stack
Ruby 3.2.1
Rails 7.0.8
Sqlite3

## Executando os testes com Rspec

Para executar os testes com o Rspec, basta executar o seguinte comando na raiz da aplicação:

```bash
bundler exec rspec
```

## Executar a aplicação local

```bash
bundler exec rails s -p 3001
```

## Créditos

*Flavio Avila*<br>
flavio.avila.silva@outlook.com<br>
https://github.com/flavioavilasilva<br>
https://www.linkedin.com/in/flavio-avila-7775702b/