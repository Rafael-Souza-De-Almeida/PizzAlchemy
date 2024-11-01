# 🍕 PizzAlchemy

**PizzAlchemy** é uma aplicação fictícia de pizzaria desenvolvida com **Ruby on Rails** e estilizada com **Tailwind CSS**. Com ela, você pode gerenciar o cardápio de uma pizzaria, adicionando novos sabores, filtrando opções por categoria (vegetariana, doce ou salgada), além de visualizar, editar e excluir pizzas do cardápio.

## 📋 Funcionalidades

1. **Adicionar novas pizzas**: Crie pizzas com nome, descrição, preço, imagem e tipo para compor o cardápio.
2. **Filtrar por categorias**: Exiba pizzas de acordo com o tipo (Vegetariana, Doce ou Salgada).
3. **Visualizar detalhes**: Consulte os detalhes de cada pizza cadastrada.
4. **Editar pizzas**: Atualize informações das pizzas, como preço, descrição ou categoria.
5. **Excluir pizzas**: Remova pizzas do cardápio facilmente.
6. **Interação amigável e responsiva**: Interface estilizada com Tailwind CSS, adaptável para desktop e mobile.

## 🚀 Tecnologias

- **Ruby on Rails**: Framework utilizado para o back-end e estrutura do projeto.
- **Tailwind CSS**: Framework de CSS utilizado para a estilização da aplicação, proporcionando uma interface responsiva e moderna.
- **SQLite**: Banco de dados utilizado para armazenar as pizzas e suas informações.
- **Docker**: Utilizado para facilitar a execução do projeto em diferentes ambientes.

## ⚙️ Como Executar o Projeto

### Pré-requisitos

- **Docker** e **Docker Compose** instalados na sua máquina.
- **Ruby** e **Ruby On Rails** devidamente instalados.

### Passos para instalação e execução

1. **Clone o repositório**:

   ```
   git clone https://github.com/Rafael-Souza-De-Almeida/PizzAlchemy.git
   cd PizzAlchemy
   ```

2. **Configure o banco de dados e os assets**:
   ```
   rails db:migrate
   rake assets:precompile
   ```
3. **Inicie o Docker**:
   ```
   docker compose up --build
   ```

## 🖼️ Capturas de Tela

### Página Inicial

![Página Inicial](https://github.com/user-attachments/assets/d7387472-23ae-44fc-943f-d27ffce20209)

### Formulário de Cadastro de Pizza

![Formulário de Cadastro](https://github.com/user-attachments/assets/bff7d012-006c-43ae-bf38-51a5fffc6198)

### Visualização de Pizza

![Visualização](https://github.com/user-attachments/assets/2261a418-cdcb-40aa-8218-2e84ae312bf1)

## 🔄 Funcionalidades Futuras

- Implementar um sistema de avaliação para cada pizza.
- Permitir aos usuários adicionar comentários ou avaliações.
- Integração com APIs de pagamento.
- Adicionar segurança e autenticação

## 📄 Licença

- Este projeto é de uso fictício e não está licenciado para fins comerciais.
