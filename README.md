![Thinknetica](public/thinknetika_logo.png)

# Чат для владельцев общих приватных репозиториев GitHub

Веб-приложение для обмена сообщениями между пользователями GitHub, у которых есть хотя бы один общий приватный репозиторий. Поддерживаются личные и групповые чаты, формируемые автоматически на основе состава приватных репозиториев.

## Технологии
- Ruby on Rails (API + Web)
- PostgreSQL
- Hotwire (Turbo, Stimulus)
- Tailwind CSS
- OmniAuth GitHub OAuth

## Настройка аутентификации через GitHub OAuth

Для того чтобы аутентификация через GitHub работала, необходимо:

1. Зарегистрировать приложение на GitHub:
   - Перейдите в [GitHub Developer Settings](https://github.com/settings/developers)
   - Выберите "OAuth Apps" и нажмите "New OAuth App"
   - Заполните необходимые поля:
     - **Application name**: GitHub Chat
     - **Homepage URL**: http://localhost:3000
     - **Application description**: Чат для владельцев общих приватных репозиториев
     - **Authorization callback URL**: http://localhost:3000/auth/github/callback
   - Нажмите "Register application"

2. После регистрации вы получите Client ID и Client Secret. Эти данные нужно указать в переменных окружения:

   ```bash
   export GITHUB_KEY=ваш_client_id
   export GITHUB_SECRET=ваш_client_secret
   ```

   Или создайте файл `.env` в корне проекта:
   
   ```
   GITHUB_KEY=ваш_client_id
   GITHUB_SECRET=ваш_client_secret
   ```

3. Запустите сервер:

   ```bash
   rails server
   ```

4. Откройте браузер и перейдите по адресу http://localhost:3000
5. Нажмите на кнопку "Войти через GitHub" и следуйте инструкциям для авторизации приложения

## Требования к окружению

- Ruby 3.2+
- Rails 8.0+
- PostgreSQL 12+
- Redis (для Action Cable и Sidekiq)

## Установка и запуск
1. Установите Ruby 3.x и PostgreSQL.
2. Клонируйте репозиторий:
   ```sh
   git clone https://github.com/thinknetica/workshop_ruby_dev_with_ai.git
   cd workshop_ruby_dev_with_ai
   ```
3. Установите зависимости:
   ```sh
   bundle install
   ```
4. Создайте и настройте базу данных:
   ```sh
   rails db:create
   rails db:migrate
   ```
5. Запустите сервер:
   ```sh
   bin/rails server
   ```

## Тестирование
- Для запуска тестов используйте:
  ```sh
  bin/rails test
  # или для RSpec (если настроен)
  bundle exec rspec
  ```

## Основные функции
- Аутентификация через GitHub OAuth
- Автоматическое создание чатов по общим приватным репозиториям
- Личные и групповые чаты (до 50 участников)
- История сообщений, индикаторы непрочитанных, онлайн-статус
- Профили пользователей
- Mobile first, тёмная тема, поддержка RU/EN

## Структура БД (основные таблицы)
- users (github_id, username, email, avatar_url, ...)
- repositories (github_repo_id, name, private)
- user_repositories (user_id, repository_id)
- chats (chat_type, repository_id)
- chat_users (chat_id, user_id, joined_at, left_at)
- messages (chat_id, user_id, content)
- unread_messages (user_id, chat_id, last_read_message_id)

Подробнее — см. [spec.md](spec.md)

## API (REST)
- `/auth/github` — вход через GitHub
- `/api/users` — список пользователей
- `/api/chats` — список чатов
- `/api/chats/:id/messages` — сообщения чата
- `/api/chats/:id/leave` — выйти из группового чата

## Безопасность
- Только OAuth GitHub
- Защита от XSS/CSRF
- Rails best practices

## Контроль качества
- Добавлена роль `hallucination_checker` — агент для обнаружения потенциальных галлюцинаций в AI-генерируемом контенте
- Анализирует код и текст на предмет фактологических ошибок, неподтверждённых утверждений, противоречий с документацией
- Проверяет упоминания несуществующих API, методов и ссылок
- Генерирует отчёты с разделами: обнаруженные галлюцинации, обоснования, рекомендации

---

Для подробной спецификации и примеров интерфейса см. [spec.md](spec.md)
