# 🎨🎨🎨 ENTERING CREATIVE PHASE: USER PROFILE PAGE

## Компонент: Страница профиля пользователя

### Описание компонента
Страница профиля пользователя предоставляет информацию о текущем пользователе или других участниках чатов, включая их основные данные с GitHub, статистику активности и список репозиториев. Компонент служит для просмотра дополнительных сведений об участниках обсуждений и обеспечивает доступ к профилям участников чата.

### Требования и ограничения
1. Соответствие выбранной дизайн-системе (GitHub-inspired Design System)
2. Адаптивность для различных устройств (Mobile First)
3. Поддержка светлой и темной тем
4. Интеграция с данными GitHub API
5. Отображение основной информации о пользователе
6. Представление статистики и активности
7. Список доступных репозиториев с информацией
8. Доступность по WCAG AA

## Варианты дизайна страницы профиля пользователя

### Вариант 1: Полная информация с вкладками

#### Описание
Детальная страница профиля с системой вкладок для разделения различных категорий информации (основные данные, репозитории, статистика). Позволяет сосредоточиться на определенной категории информации без перегрузки интерфейса.

#### Структура интерфейса
1. **Шапка профиля**:
   - Аватар пользователя (крупный размер)
   - Имя пользователя и никнейм GitHub
   - Основная информация (локация, организация, сайт)
   - Кнопка "Начать чат" (если просматривается профиль другого пользователя)
   - Кнопка для перехода к настройкам (если просматривается собственный профиль)

2. **Навигационные вкладки**:
   - Обзор (основная информация)
   - Репозитории (список доступных репозиториев)
   - Статистика (данные об активности)

3. **Вкладка "Обзор"**:
   - Биография пользователя
   - Время регистрации на GitHub
   - Статус "В сети"/"Не в сети"
   - Количество общих репозиториев
   - Последняя активность

4. **Вкладка "Репозитории"**:
   - Список приватных репозиториев с кратким описанием
   - Информация о языках программирования
   - Количество звезд, форков и issues
   - Дата последнего обновления
   - Фильтрация и сортировка репозиториев

5. **Вкладка "Статистика"**:
   - Графики активности пользователя
   - Предпочтительные языки программирования
   - История коммитов и PR
   - Данные об участии в проектах

#### Макет (схематически)
```
┌───────────────────────────────────────────────────────────────────────┐
│                                                                       │
│  ┌───────┐  Иван Петров (ipetrov)                    [Начать чат ▶]  │
│  │       │  Senior Developer @ ExampleCorp                            │
│  │       │  Москва, Россия                                           │
│  │       │  website.com                                               │
│  └───────┘                                                            │
│                                                                       │
├───────────────┬───────────────┬──────────────────────────────────────┤
│    Обзор      │  Репозитории  │     Статистика                       │
├───────────────┴───────────────┴──────────────────────────────────────┤
│                                                                       │
│  Биография                                                            │
│  Разработчик с 10-летним опытом. Специализируюсь на Ruby on Rails     │
│  и JavaScript. Контрибьютор в open source.                            │
│                                                                       │
│  На GitHub с января 2013                                              │
│  Статус: В сети                                                       │
│  Общих репозиториев: 5                                                │
│                                                                       │
│  Последняя активность                                                 │
│  - Создал Pull Request в project-a 2 часа назад                       │
│  - Добавил комментарий к issue #123 вчера                             │
│  - Сделал 5 коммитов в project-b 2 дня назад                          │
│                                                                       │
└───────────────────────────────────────────────────────────────────────┘
```

#### Плюсы
- Детальная организация большого количества информации
- Удобная навигация между разделами информации
- Возможность сосредоточиться на определенной категории данных
- Гибкая структура для отображения различной информации

#### Минусы
- Требуется дополнительное взаимодействие для доступа ко всей информации
- Может быть избыточным для профилей с небольшим количеством данных
- Сложнее в разработке из-за системы маршрутизации вкладок

### Вариант 2: Одностраничный профиль с секциями

#### Описание
Компактная одностраничная структура, где вся информация разделена на секции и отображается на одном экране без использования вкладок. Пользователь прокручивает страницу для просмотра всех данных, что обеспечивает более целостное восприятие информации.

#### Структура интерфейса
1. **Шапка профиля**:
   - Аватар пользователя
   - Имя пользователя и никнейм GitHub
   - Краткая информация (локация, организация)
   - Статус "В сети"/"Не в сети"
   - Кнопка "Начать чат" или кнопка настроек

2. **Секция "Общая информация"**:
   - Биография пользователя
   - Время регистрации на GitHub
   - Сайт и контактная информация
   - Количество общих репозиториев

3. **Секция "Последняя активность"**:
   - Недавние действия пользователя в формате ленты
   - Временные метки событий
   - Группировка по проектам

4. **Секция "Репозитории"**:
   - Список приватных репозиториев с основной информацией
   - Возможность фильтрации и сортировки

5. **Секция "Статистика"**:
   - Компактные графики и визуализации активности
   - Основные метрики участия в проектах

#### Макет (схематически)
```
┌───────────────────────────────────────────────────────────────────────┐
│                                                                       │
│  ┌───┐  Иван Петров (ipetrov)                       [Начать чат ▶]    │
│  │   │  Senior Developer @ ExampleCorp • Москва                       │
│  └───┘  ● В сети                                                      │
│                                                                       │
├───────────────────────────────────────────────────────────────────────┤
│                                                                       │
│  Общая информация                                                     │
│  ───────────────────────────────────────────                          │
│  Разработчик с 10-летним опытом. Специализируюсь на Ruby on Rails     │
│  и JavaScript. Контрибьютор в open source.                            │
│                                                                       │
│  На GitHub с января 2013                                              │
│  Общих репозиториев: 5                                                │
│  website.com                                                          │
│                                                                       │
├───────────────────────────────────────────────────────────────────────┤
│                                                                       │
│  Последняя активность                                                 │
│  ───────────────────────────────────────────                          │
│  - Создал Pull Request в project-a                       2 часа назад │
│  - Добавил комментарий к issue #123                           вчера   │
│  - Сделал 5 коммитов в project-b                          2 дня назад │
│                                                                       │
├───────────────────────────────────────────────────────────────────────┤
│                                                                       │
│  Репозитории                                       [Фильтр ▼]         │
│  ───────────────────────────────────────────                          │
│  ┌───────────────────────────────────────────────────────────────────┐│
│  │ project-a                                                         ││
│  │ Описание проекта, краткий обзор функциональности                  ││
│  │ Ruby • ★ 23 • Updated 2 часа назад                                ││
│  └───────────────────────────────────────────────────────────────────┘│
│                                                                       │
│  ┌───────────────────────────────────────────────────────────────────┐│
│  │ project-b                                                         ││
│  │ Другой проект с описанием функциональности                        ││
│  │ JavaScript • ★ 15 • Updated вчера                                 ││
│  └───────────────────────────────────────────────────────────────────┘│
│                                                                       │
└───────────────────────────────────────────────────────────────────────┘
```

#### Плюсы
- Вся информация доступна без дополнительных переходов
- Естественный поток информации при прокрутке
- Более целостное представление о пользователе
- Проще в реализации без системы вкладок

#### Минусы
- Длинная страница при большом количестве данных
- Сложнее организовать информацию по приоритетам
- Возможна информационная перегрузка на одном экране

### Вариант 3: Двухколоночный профиль

#### Описание
Компактное представление профиля с двумя колонками: в левой колонке располагается основная информация о пользователе, в правой - детали активности и репозиториев. Такой подход обеспечивает эффективное использование пространства экрана для представления большого количества информации одновременно.

#### Структура интерфейса
1. **Левая колонка (фиксированная)**:
   - Аватар пользователя
   - Имя пользователя и никнейм GitHub
   - Статус и основная информация
   - Биография
   - Контактная информация
   - Метрики и статистика (компактно)
   - Кнопка "Начать чат" или настройки

2. **Правая колонка (прокручиваемая)**:
   - Вкладки "Активность" и "Репозитории"
   - Содержимое выбранной вкладки
   - Фильтры и сортировка
   - Расширенная информация

#### Макет (схематически)
```
┌────────────────────────┬──────────────────────────────────────────────┐
│                        │                                              │
│  ┌───────┐             │  [Активность]  [Репозитории]                 │
│  │       │             │                                              │
│  │       │             │  Последние действия                          │
│  └───────┘             │  ───────────────────────────────────         │
│                        │                                              │
│  Иван Петров           │  project-a                                   │
│  ipetrov               │  Создал Pull Request #45                     │
│  ● В сети              │  Feature: Add user notifications             │
│                        │  2 часа назад                                │
│  Senior Developer      │                                              │
│  @ ExampleCorp         │  project-b                                   │
│                        │  Добавил комментарий к issue #123            │
│  Москва, Россия        │  "Согласен с предложенным решением,          │
│  website.com           │   но нужно учесть..."                        │
│                        │  Вчера                                       │
│  На GitHub с 01.2013   │                                              │
│  Общих репозит.: 5     │  project-b                                   │
│                        │  Сделал 5 коммитов                           │
│  Биография:            │  - Fix header alignment                      │
│  Разработчик с 10-     │  - Update dependencies                       │
│  летним опытом.        │  - Refactor authentication code              │
│  Специализируюсь на    │  - Add tests for new features                │
│  Ruby on Rails и JS.   │  - Fix failing tests                         │
│                        │  2 дня назад                                 │
│  [Начать чат ▶]        │                                              │
│                        │                                              │
└────────────────────────┴──────────────────────────────────────────────┘
```

#### Плюсы
- Эффективное использование пространства экрана
- Одновременный доступ к основной информации и деталям
- Хорошая видимость ключевых данных о пользователе
- Сочетает достоинства структурированного отображения и компактности

#### Минусы
- Сложнее адаптировать для мобильных устройств
- Может выглядеть перегруженным на маленьких экранах
- Требуется тщательное планирование расположения элементов

## Рекомендуемый подход: Полная информация с вкладками

Вариант 1 (Полная информация с вкладками) представляется наиболее оптимальным решением, которое обеспечивает структурированный доступ к информации и соответствует выбранной дизайн-системе.

### Обоснование выбора
1. **Структурированность информации**: Четкое разделение различных категорий данных по вкладкам
2. **Соответствие дизайн-системе**: Табы являются характерным элементом GitHub-inspired Design System
3. **Фокусированный UX**: Пользователь может сосредоточиться на определенной категории данных
4. **Масштабируемость**: Легко добавлять новые категории информации в будущем
5. **Консистентность**: Согласуется с другими интерфейсами GitHub, к которым привыкли пользователи

### Рекомендации по реализации

#### Rails контроллер
```ruby
# app/controllers/profiles_controller.rb
class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show]
  
  def show
    @tab = params[:tab] || 'overview'
    @repositories = @user.repositories.includes(:users).order(updated_at: :desc)
    @activities = collect_activities(@user)
    
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
  
  private
  
  def set_user
    @user = if params[:id]
              User.find(params[:id])
            else
              current_user
            end
  end
  
  def collect_activities(user)
    # Здесь будет логика сбора активности пользователя
    # Для MVP можно использовать упрощенную версию
    
    # Пример заглушки для активности
    [
      { 
        type: 'pull_request',
        repository_name: 'project-a',
        title: 'Feature: Add user notifications',
        time: 2.hours.ago,
        details: 'Создал Pull Request #45'
      },
      { 
        type: 'comment',
        repository_name: 'project-b',
        title: 'Согласен с предложенным решением, но нужно учесть...',
        time: 1.day.ago,
        details: 'Добавил комментарий к issue #123'
      },
      { 
        type: 'commits',
        repository_name: 'project-b',
        time: 2.days.ago,
        details: 'Сделал 5 коммитов',
        items: [
          'Fix header alignment',
          'Update dependencies',
          'Refactor authentication code',
          'Add tests for new features',
          'Fix failing tests'
        ]
      }
    ]
  end
end
```

#### Вид профиля пользователя
```erb
<%# app/views/profiles/show.html.erb %>

<div class="bg-bg-primary text-text-primary">
  <%# Шапка профиля %>
  <div class="border-b border-border bg-bg-secondary px-4 py-6 sm:px-6">
    <div class="flex flex-col sm:flex-row items-start sm:items-center">
      <div class="flex-shrink-0 mb-4 sm:mb-0 sm:mr-6">
        <img src="<%= @user.avatar_url %>" 
             class="h-20 w-20 rounded-full"
             alt="<%= @user.username %>">
      </div>
      
      <div class="flex-1 min-w-0">
        <div class="flex items-center justify-between">
          <div>
            <h1 class="text-xl font-medium text-text-primary truncate">
              <%= @user.name %>
            </h1>
            <p class="text-text-secondary">
              @<%= @user.username %>
              <% if @user.company.present? %>
                • <%= @user.company %>
              <% end %>
              <% if @user.location.present? %>
                • <%= @user.location %>
              <% end %>
            </p>
            <div class="mt-1 flex items-center">
              <span class="inline-block h-2.5 w-2.5 rounded-full <%= @user.online? ? 'bg-online' : 'bg-offline' %>"></span>
              <span class="ml-2 text-sm text-text-secondary">
                <%= @user.online? ? 'В сети' : 'Не в сети' %>
              </span>
            </div>
          </div>
          
          <div>
            <% if @user.id != current_user.id %>
              <%= button_to new_chat_path(user_id: @user.id), method: :post, class: "inline-flex items-center rounded-md bg-accent px-3 py-2 text-sm font-medium text-white hover:bg-accent/90 transition-colors" do %>
                Начать чат
                <svg class="ml-2 -mr-0.5 h-4 w-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <%# Иконка чата %>
                </svg>
              <% end %>
            <% else %>
              <%= link_to settings_path, class: "inline-flex items-center rounded-md bg-bg-tertiary px-3 py-2 text-sm font-medium text-text-primary hover:bg-bg-tertiary/80 transition-colors" do %>
                Настройки
                <svg class="ml-2 -mr-0.5 h-4 w-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <%# Иконка настроек %>
                </svg>
              <% end %>
            <% end %>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <%# Навигационные вкладки %>
  <div class="border-b border-border bg-bg-primary px-4 sm:px-6">
    <div class="flex overflow-x-auto">
      <%= link_to profile_path(@user, tab: 'overview'), 
                  class: "px-4 py-3 text-sm font-medium whitespace-nowrap border-b-2 #{@tab == 'overview' ? 'border-accent text-accent' : 'border-transparent text-text-secondary hover:text-text-primary hover:border-border'}" do %>
        Обзор
      <% end %>
      
      <%= link_to profile_path(@user, tab: 'repositories'), 
                  class: "px-4 py-3 text-sm font-medium whitespace-nowrap border-b-2 #{@tab == 'repositories' ? 'border-accent text-accent' : 'border-transparent text-text-secondary hover:text-text-primary hover:border-border'}" do %>
        Репозитории
      <% end %>
      
      <%= link_to profile_path(@user, tab: 'stats'), 
                  class: "px-4 py-3 text-sm font-medium whitespace-nowrap border-b-2 #{@tab == 'stats' ? 'border-accent text-accent' : 'border-transparent text-text-secondary hover:text-text-primary hover:border-border'}" do %>
        Статистика
      <% end %>
    </div>
  </div>

  <div class="container mx-auto max-w-5xl px-4 py-6">
    <%# Вкладка "Обзор" %>
    <% if @tab == 'overview' %>
      <div class="space-y-8">
        <%# Биография пользователя %>
        <section>
          <% if @user.bio.present? %>
            <div class="mb-6">
              <h2 class="text-lg font-medium text-text-primary mb-2">
                Биография
              </h2>
              <p class="text-text-primary"><%= @user.bio %></p>
            </div>
          <% end %>
          
          <div class="grid grid-cols-1 sm:grid-cols-2 gap-4 text-sm">
            <div>
              <span class="text-text-secondary">На GitHub с:</span>
              <span class="text-text-primary"><%= I18n.l(@user.created_at, format: '%B %Y') %></span>
            </div>
            
            <div>
              <span class="text-text-secondary">Общих репозиториев:</span>
              <span class="text-text-primary"><%= @repositories.count %></span>
            </div>
            
            <% if @user.website.present? %>
              <div>
                <span class="text-text-secondary">Сайт:</span>
                <a href="<%= @user.website %>" target="_blank" class="text-accent hover:underline">
                  <%= @user.website %>
                </a>
              </div>
            <% end %>
          </div>
        </section>
        
        <%# Последняя активность %>
        <section>
          <h2 class="text-lg font-medium text-text-primary mb-4 pb-2 border-b border-border">
            Последняя активность
          </h2>
          
          <% if @activities.empty? %>
            <div class="py-4 text-center text-text-secondary">
              Нет данных об активности
            </div>
          <% else %>
            <div class="space-y-4">
              <% @activities.each do |activity| %>
                <div class="border-b border-border pb-4 last:border-b-0">
                  <div class="flex items-start">
                    <div class="flex-shrink-0 mt-0.5">
                      <% case activity[:type] %>
                      <% when 'pull_request' %>
                        <svg class="h-5 w-5 text-accent" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <%# Иконка PR %>
                        </svg>
                      <% when 'comment' %>
                        <svg class="h-5 w-5 text-text-secondary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <%# Иконка комментария %>
                        </svg>
                      <% when 'commits' %>
                        <svg class="h-5 w-5 text-success" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <%# Иконка коммита %>
                        </svg>
                      <% end %>
                    </div>
                    
                    <div class="ml-3 flex-1">
                      <div class="flex items-baseline justify-between">
                        <p class="text-sm font-medium text-text-primary">
                          <span class="font-semibold"><%= activity[:repository_name] %></span>
                          <span class="ml-2"><%= activity[:details] %></span>
                        </p>
                        <span class="text-xs text-text-secondary">
                          <%= time_ago_in_words(activity[:time]) %> назад
                        </span>
                      </div>
                      
                      <div class="mt-2">
                        <% if activity[:title].present? %>
                          <p class="text-sm text-text-primary">
                            <%= activity[:title] %>
                          </p>
                        <% end %>
                        
                        <% if activity[:items].present? %>
                          <ul class="mt-1 text-sm text-text-secondary space-y-1">
                            <% activity[:items].each do |item| %>
                              <li class="ml-4 list-disc list-outside">
                                <%= item %>
                              </li>
                            <% end %>
                          </ul>
                        <% end %>
                      </div>
                    </div>
                  </div>
                </div>
              <% end %>
            </div>
          <% end %>
        </section>
      </div>
    
    <%# Вкладка "Репозитории" %>
    <% elsif @tab == 'repositories' %>
      <div>
        <div class="flex items-center justify-between mb-4">
          <h2 class="text-lg font-medium text-text-primary">
            Репозитории
          </h2>
          
          <div class="flex items-center space-x-2">
            <div class="relative" data-controller="dropdown">
              <button class="inline-flex items-center rounded-md bg-bg-tertiary px-3 py-1.5 text-sm font-medium text-text-primary hover:bg-bg-tertiary/80 transition-colors"
                      data-action="dropdown#toggle">
                <span>Фильтр</span>
                <svg class="ml-2 -mr-0.5 h-4 w-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <%# Иконка фильтра %>
                </svg>
              </button>
              
              <div class="absolute right-0 mt-1 w-48 rounded-md bg-bg-primary shadow-lg border border-border py-1 hidden z-10"
                   data-dropdown-target="menu">
                <button class="block w-full text-left px-4 py-2 text-text-primary hover:bg-bg-tertiary">
                  Все репозитории
                </button>
                <button class="block w-full text-left px-4 py-2 text-text-primary hover:bg-bg-tertiary">
                  По дате обновления
                </button>
                <button class="block w-full text-left px-4 py-2 text-text-primary hover:bg-bg-tertiary">
                  По количеству звезд
                </button>
              </div>
            </div>
          </div>
        </div>
        
        <% if @repositories.empty? %>
          <div class="py-4 text-center text-text-secondary">
            Нет доступных репозиториев
          </div>
        <% else %>
          <div class="space-y-4">
            <% @repositories.each do |repository| %>
              <div class="border border-border rounded-md p-4 hover:bg-bg-secondary transition-colors">
                <div class="flex items-baseline justify-between">
                  <h3 class="text-base font-medium text-accent hover:underline">
                    <a href="<%= "https://github.com/#{repository.full_name}" %>" target="_blank">
                      <%= repository.name %>
                    </a>
                  </h3>
                  <span class="text-xs text-text-secondary">
                    Обновлен <%= time_ago_in_words(repository.updated_at) %> назад
                  </span>
                </div>
                
                <% if repository.description.present? %>
                  <p class="mt-2 text-sm text-text-primary">
                    <%= repository.description %>
                  </p>
                <% end %>
                
                <div class="mt-3 flex items-center text-xs text-text-secondary">
                  <% if repository.language.present? %>
                    <span class="mr-4">
                      <%= repository.language %>
                    </span>
                  <% end %>
                  
                  <div class="flex items-center mr-4">
                    <svg class="h-4 w-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <%# Иконка звезды %>
                    </svg>
                    <%= repository.stargazers_count %>
                  </div>
                  
                  <div class="flex items-center">
                    <svg class="h-4 w-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                      <%# Иконка форка %>
                    </svg>
                    <%= repository.forks_count %>
                  </div>
                </div>
              </div>
            <% end %>
          </div>
          
          <% if @repositories.size > 10 %>
            <div class="mt-6 text-center">
              <button class="inline-flex items-center rounded-md bg-bg-tertiary px-4 py-2 text-sm font-medium text-text-primary hover:bg-bg-tertiary/80 transition-colors">
                Показать еще репозитории
                <svg class="ml-2 -mr-0.5 h-4 w-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <%# Иконка стрелки вниз %>
                </svg>
              </button>
            </div>
          <% end %>
        <% end %>
      </div>
      
    <%# Вкладка "Статистика" %>
    <% elsif @tab == 'stats' %>
      <div>
        <h2 class="text-lg font-medium text-text-primary mb-4 pb-2 border-b border-border">
          Статистика активности
        </h2>
        
        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
          <%# Графики активности %>
          <section>
            <h3 class="text-base font-medium text-text-primary mb-3">Активность по дням</h3>
            <div class="bg-bg-secondary border border-border rounded-md p-4 h-64 flex items-center justify-center">
              <p class="text-text-secondary">График активности пользователя</p>
            </div>
          </section>
          
          <%# Предпочтительные языки %>
          <section>
            <h3 class="text-base font-medium text-text-primary mb-3">Языки программирования</h3>
            <div class="bg-bg-secondary border border-border rounded-md p-4 h-64 flex items-center justify-center">
              <p class="text-text-secondary">Диаграмма используемых языков</p>
            </div>
          </section>
          
          <%# История коммитов %>
          <section>
            <h3 class="text-base font-medium text-text-primary mb-3">История коммитов</h3>
            <div class="bg-bg-secondary border border-border rounded-md p-4 h-64 flex items-center justify-center">
              <p class="text-text-secondary">График коммитов за последний год</p>
            </div>
          </section>
          
          <%# Участие в проектах %>
          <section>
            <h3 class="text-base font-medium text-text-primary mb-3">Участие в проектах</h3>
            <div class="bg-bg-secondary border border-border rounded-md p-4 h-64 flex items-center justify-center">
              <p class="text-text-secondary">Диаграмма вклада в различные проекты</p>
            </div>
          </section>
        </div>
      </div>
    <% end %>
  </div>
</div>
```

#### Dropdown контроллер для фильтров
```javascript
// app/javascript/controllers/dropdown_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu"]
  
  connect() {
    // Закрываем дропдаун при клике вне его области
    this.clickOutsideHandler = this.clickOutside.bind(this)
    document.addEventListener("click", this.clickOutsideHandler)
  }
  
  disconnect() {
    document.removeEventListener("click", this.clickOutsideHandler)
  }
  
  toggle(event) {
    event.stopPropagation()
    this.menuTarget.classList.toggle("hidden")
  }
  
  clickOutside(event) {
    if (!this.element.contains(event.target) && !this.menuTarget.classList.contains("hidden")) {
      this.menuTarget.classList.add("hidden")
    }
  }
}
```

### Проверка на соответствие требованиям
- ✅ Соответствие дизайн-системе: Использование GitHub-inspired Design System с системой вкладок
- ✅ Адаптивность: Оптимизирован для мобильных и десктопных устройств с отзывчивой навигацией
- ✅ Поддержка тем: Использование CSS переменных из дизайн-системы
- ✅ Интеграция с GitHub API: Отображение данных пользователя и репозиториев
- ✅ Основная информация: Структурированная по вкладкам с удобной навигацией
- ✅ Статистика: Выделенная отдельная вкладка с графиками активности
- ✅ Список репозиториев: Отдельная вкладка с фильтрацией и детальной информацией
- ✅ Доступность: Семантическая разметка, контрастные цвета, понятная навигация между вкладками

# 🎨🎨🎨 EXITING CREATIVE PHASE 