# CREATIVE PHASE: Repository Model Architecture

## Дата принятия решения: 2025-07-26

## 🎯 ПРИНЯТОЕ РЕШЕНИЕ: Опция 1 - Классическая ActiveRecord модель с промежуточной таблицей

### Описание компонента
Модель Repository для хранения данных GitHub репозиториев в чат-приложении с поддержкой автоматического создания групповых чатов на основе общих приватных репозиториев.

### Рассмотренные альтернативы

#### Опция 1: Классическая ActiveRecord модель ✅ ВЫБРАНО
- Repository + UserRepository (join model) + User
- has_many :through связи
- Гибкость для добавления мета-данных к связям

#### Опция 2: HABTM (has_and_belongs_to_many) ❌ ОТКЛОНЕНО
- Простая join таблица без модели
- Недостаток гибкости для будущих требований

#### Опция 3: Денормализация с кэшированием ❌ ОТКЛОНЕНО  
- Встроенные JSON поля для производительности
- Сложность поддержания консистентности

#### Опция 4: Материализованные представления ❌ ОТКЛОНЕНО
- PostgreSQL-специфичное решение
- Сложность деплоя и поддержки

### Обоснование выбора

**Ключевые факторы:**
1. **Эволюционная гибкость**: UserRepository модель позволяет добавить:
   - Роли пользователей (owner, admin, member)
   - Timestamps доступа
   - Статусы синхронизации
   
2. **Стандартный Rails подход**: 
   - Знаком всем Rails разработчикам
   - Отличная документация и community support
   - Хорошая интеграция с ActiveRecord

3. **Производительность**:
   - has_many :through оптимизирован в Rails
   - Возможность создания эффективных индексов
   - Масштабируется при правильной настройке БД

4. **Будущие требования**:
   - Легко добавить GitHub webhooks интеграцию
   - Поддержка ролевой модели доступа
   - Возможность аудита изменений

### Архитектурное решение

#### Модели
```ruby
class Repository < ApplicationRecord
  has_many :user_repositories, dependent: :destroy
  has_many :users, through: :user_repositories
  has_many :chats, dependent: :destroy
  
  def self.common_between_users(user_ids)
    # Эффективный поиск общих репозиториев
  end
end

class UserRepository < ApplicationRecord
  belongs_to :user
  belongs_to :repository
  # Дополнительные поля: role, access_granted_at
end
```

#### База данных
```sql
-- repositories table
github_repo_id (bigint, unique, not null)
name (string, not null)
full_name (string, not null) 
private (boolean, default false)
description (text)

-- user_repositories table  
user_id (foreign key)
repository_id (foreign key)
role (string, default 'member')
access_granted_at (datetime)

-- Индексы для производительности
idx_repos_github_id (unique)
idx_user_repos_unique (user_id, repository_id)
idx_user_repos_composite (repository_id, user_id, role)
```

#### Ключевые методы
- `Repository.find_or_create_from_github(repo_data)` - синхронизация с GitHub API
- `Repository.common_between_users(user_ids)` - поиск общих репозиториев  
- `User#common_repositories_with(other_users)` - удобный интерфейс для пользователей
- `Repository#group_chat_name` - генерация названий групповых чатов

### Реализационные рекомендации

1. **Миграции**: Создать в правильном порядке с foreign key constraints
2. **Валидации**: Строгие проверки для github_repo_id и связей
3. **Индексы**: Составные индексы для оптимизации поиска общих репозиториев
4. **Тестирование**: Покрыть тестами все валидации, связи и бизнес-логику

### Метрики успеха
- ✅ Время выполнения запроса поиска общих репозиториев < 100ms
- ✅ Возможность добавления новых полей без breaking changes
- ✅ Простота тестирования и отладки
- ✅ Масштабируемость до 10,000+ репозиториев на пользователя

### Статус
**РЕШЕНИЕ ПРИНЯТО И ГОТОВО К РЕАЛИЗАЦИИ**
Переход к BUILD режиму для имплементации выбранной архитектуры. 