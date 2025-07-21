# Технический контекст проекта

## Технологический стек
- Backend: Ruby on Rails (API + Web)
- Frontend: Hotwire (Turbo, Stimulus)
- CSS: Tailwind CSS
- База данных: PostgreSQL
- Аутентификация: OmniAuth GitHub OAuth

## Структура базы данных
- users: Пользователи системы
- repositories: GitHub репозитории
- user_repositories: Связь пользователей и репозиториев
- chats: Чаты (личные и групповые)
- chat_users: Связь пользователей и чатов
- messages: Сообщения в чатах
- unread_messages: Непрочитанные сообщения

## API интеграции
- GitHub API для получения данных пользователя и репозиториев
