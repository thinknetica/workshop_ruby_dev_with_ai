![Thinknetica](public/thinknetika_logo.png)

# Чат для владельцев общих приватных репозиториев GitHub

Веб-приложение для обмена сообщениями между пользователями GitHub, у которых есть хотя бы один общий приватный репозиторий. Поддерживаются личные и групповые чаты, формируемые автоматически на основе состава приватных репозиториев.

## Технологии
- Ruby on Rails (API + Web)
- PostgreSQL
- Hotwire (Turbo, Stimulus)
- Tailwind CSS
- OmniAuth GitHub OAuth

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
4. Настройте переменные окружения для GitHub OAuth (см. ниже).
5. Создайте и инициализируйте базу данных:
   ```sh
   bin/rails db:setup
   ```
6. Запустите сервер:
   ```sh
   bin/rails server
   ```

## Настройка GitHub OAuth
- Зарегистрируйте приложение на GitHub: https://github.com/settings/developers
- Укажите callback URL: `http://localhost:3000/auth/github/callback`
- Добавьте переменные окружения:
  - `GITHUB_CLIENT_ID`
  - `GITHUB_CLIENT_SECRET`

## Тестирование
- Для запуска тестов используйте:
  ```sh
  bin/rails test
  # или для RSpec (если настроен)
  bundle exec rspec
  ```

## Основные функции
- Вход через GitHub OAuth (только с правами на приватные репозитории)
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

## Контроль качества AI-контента

В проекте настроена роль `hallucination_checker` для выявления потенциальных галлюцинаций в AI-генерированном коде и документации. 

Для запуска проверки используйте:
```
@hallucination_checker.mdc
```

Роль анализирует:
- Соответствие документации реальному коду
- Корректность ссылок на файлы, методы, классы
- Логическую последовательность решений
- Нарушения стиля и best practices
- Потенциальные уязвимости безопасности

---

Для подробной спецификации и примеров интерфейса см. [spec.md](spec.md)
