# Проверка зависимостей проекта

## Текущие зависимости

### Версии основных компонентов
| Компонент | Требуемая версия | Текущая версия | Статус |
|-----------|------------------|----------------|--------|
| Ruby      | >= 3.0.0         | 3.4.4          | ✅ OK  |
| Rails     | ~> 8.0.2         | 8.0.2          | ✅ OK  |
| PostgreSQL| >= 12.0          | 17.5           | ✅ OK  |
| Node.js   | >= 14.0.0        | v22.17.1       | ✅ OK  |

### Гемы в Gemfile
| Гем                   | Статус      | Комментарий                                 |
|-----------------------|-------------|---------------------------------------------|
| rails (~> 8.0.2)      | ✅ Присутствует | Основной фреймворк                          |
| propshaft             | ✅ Присутствует | Asset pipeline                              |
| pg (~> 1.1)           | ✅ Присутствует | Адаптер PostgreSQL                          |
| puma (>= 5.0)         | ✅ Присутствует | Веб-сервер                                  |
| importmap-rails       | ✅ Присутствует | JavaScript с ESM import maps                |
| jbuilder              | ✅ Присутствует | Построение JSON API                         |
| solid_cache           | ✅ Присутствует | Кэширование на базе БД                      |
| solid_queue           | ✅ Присутствует | Очереди на базе БД                          |
| solid_cable           | ✅ Присутствует | Action Cable на базе БД                     |
| bootsnap              | ✅ Присутствует | Ускорение загрузки                          |
| kamal                 | ✅ Присутствует | Деплой в Docker                             |
| thruster              | ✅ Присутствует | HTTP кэширование для Puma                   |
| faraday               | ✅ Присутствует | HTTP клиент (для GitHub API)                |
| sidekiq               | ✅ Присутствует | Фоновые задачи                              |
| debug                 | ✅ Присутствует | Отладка (dev, test)                         |
| brakeman              | ✅ Присутствует | Анализ безопасности (dev, test)             |
| rubocop-rails-omakase | ✅ Присутствует | Стиль кода (dev, test)                      |
| web-console           | ✅ Присутствует | Консоль на страницах исключений (dev)       |
| capybara              | ✅ Присутствует | Системное тестирование (test)               |
| selenium-webdriver    | ✅ Присутствует | Системное тестирование (test)               |

## Отсутствующие зависимости

### Необходимые гемы для реализации проекта
| Гем                          | Приоритет | Назначение                                  |
|------------------------------|-----------|---------------------------------------------|
| omniauth-github              | Высокий   | Аутентификация через GitHub                 |
| omniauth-rails_csrf_protection | Высокий   | Защита от CSRF при OAuth аутентификации    |
| tailwindcss-rails            | Высокий   | Tailwind CSS для Rails                      |
| turbo-rails                  | Высокий   | Hotwire Turbo для динамического обновления  |
| stimulus-rails               | Высокий   | Hotwire Stimulus для JavaScript компонентов |
| octokit                      | Средний   | Ruby клиент для GitHub API                  |
| redis                        | Средний   | Для Action Cable и Sidekiq                  |
| rails-i18n                   | Средний   | Локализация Rails                           |

## Рекомендации по установке

Добавить в Gemfile:

```ruby
# Аутентификация
gem "omniauth-github"
gem "omniauth-rails_csrf_protection"
gem "octokit", "~> 8.0"

# Frontend
gem "tailwindcss-rails"
gem "turbo-rails"
gem "stimulus-rails"

# Локализация
gem "rails-i18n"

# Redis для Action Cable и Sidekiq
gem "redis", "~> 5.0"
```

Затем выполнить:
```bash
bundle install
rails tailwindcss:install
rails turbo:install
rails stimulus:install
```

## Потенциальные проблемы совместимости

1. **Версия Rails 8.0.2** - относительно новая версия, может потребоваться дополнительная настройка для некоторых гемов.
2. **Solid Cable vs Redis** - проект использует Solid Cable (БД), но для Sidekiq потребуется Redis. Рекомендуется унифицировать бэкенд для хранения.
