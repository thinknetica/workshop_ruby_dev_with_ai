# 🎨🎨🎨 ENTERING CREATIVE PHASE: CHATS LIST PAGE

## Компонент: Главная страница со списком чатов

### Описание компонента
Главная страница приложения, где пользователь видит список всех доступных чатов (личных и групповых). Страница должна обеспечивать удобную навигацию между чатами, отображение статуса и информации о непрочитанных сообщениях.

### Требования и ограничения
1. Соответствие выбранной дизайн-системе (GitHub-inspired Design System)
2. Адаптивность для различных устройств (Mobile First)
3. Поддержка светлой и темной тем
4. Отображение статусов участников (онлайн/офлайн)
5. Индикация непрочитанных сообщений
6. Разделение чатов на личные и групповые
7. Информативные превью сообщений
8. Доступность по WCAG AA

## Варианты дизайна страницы со списком чатов

### Вариант 1: Двухпанельный интерфейс со списком и превью

#### Описание
Страница с двумя основными панелями: слева узкий список чатов с минимальной информацией, справа предпросмотр выбранного чата с последними сообщениями. Такой подход позволяет быстро просматривать содержимое чата без полного перехода на страницу чата.

#### Структура интерфейса
1. **Шапка приложения**:
   - Логотип и название приложения
   - Меню пользователя (аватар, настройки, выход)
   - Переключатель темы (светлая/темная)

2. **Боковая панель с чатами**:
   - Поиск по чатам
   - Фильтры (все/личные/групповые)
   - Список чатов с аватарами, названиями и индикаторами непрочитанных сообщений
   - Индикаторы статуса онлайн/офлайн для личных чатов

3. **Панель предпросмотра чата**:
   - Заголовок чата с информацией об участниках
   - Последние несколько сообщений
   - Кнопка для полного перехода в чат
   - Информация о репозитории (для групповых чатов)

#### Макет (схематически)
```
┌────────────────────────────────────────────────────────────────┐
│ Приложение                                    [🔍] [☀️] [👤 ▼]  │
├──────────────────┬─────────────────────────────────────────────┤
│ 🔍 Поиск чатов   │                                             │
├──────────────────┤                                             │
│ Все | Личн | Груп│ Чат с Александром                           │
├──────────────────┤                                             │
│ ● Александр    1 │ Александр                    Вчера, 18:30   │
│   Посмотри PR    │ Посмотри PR, который я отправил утром       │
├──────────────────┤                                             │
│ ○ Мария          │ Ты                          Вчера, 18:35    │
│   Хорошо, гляну  │ Хорошо, гляну через полчаса                 │
├──────────────────┤                                             │
│ ● Project A    3 │                                             │
│   Иван: Релиз    │                                             │
├──────────────────┤                                             │
│ ○ Project B      │                                             │
│   Настройка CI   │                                             │
├──────────────────┤                                             │
│ ○ Project C      │                                             │
│   Еженедельный   │                [Открыть полный чат]         │
└──────────────────┴─────────────────────────────────────────────┘
```

#### Плюсы
- Возможность быстро просмотреть содержимое чата без полного перехода
- Эффективное использование пространства на десктопных устройствах
- Удобное переключение между чатами без потери контекста

#### Минусы
- Сложнее реализовать адаптивную версию для мобильных устройств
- Избыточный интерфейс для пользователей с небольшим количеством чатов
- Дублирование данных между страницей списка чатов и страницей чата

### Вариант 2: Одностраничный список с группировкой

#### Описание
Упрощенный вариант с единым списком чатов, разделенным на категории (личные и групповые). Каждый элемент списка содержит всю необходимую информацию о чате и превью последнего сообщения. При нажатии происходит переход на страницу чата.

#### Структура интерфейса
1. **Шапка приложения**:
   - Логотип и название приложения
   - Поле поиска чатов
   - Меню пользователя (аватар, настройки, выход)
   - Переключатель темы (светлая/темная)

2. **Фильтры чатов**:
   - Переключатели для отображения различных категорий (Все/Личные/Групповые)

3. **Группированный список чатов**:
   - Заголовки групп (Личные чаты / Чаты репозиториев)
   - Элементы чатов с аватарами, названием, превью сообщения
   - Информация о времени последнего сообщения
   - Индикаторы непрочитанных сообщений
   - Индикаторы статуса онлайн/офлайн

#### Макет (схематически)
```
┌────────────────────────────────────────────────────────────────┐
│ Приложение                        [🔍 Поиск...]     [☀️] [👤 ▼] │
├────────────────────────────────────────────────────────────────┤
│ [Все]  [Личные]  [Групповые]                                   │
├────────────────────────────────────────────────────────────────┤
│ Личные чаты                                                    │
├────────────────────────────────────────────────────────────────┤
│ ● Александр                                      Вчера, 18:30  │
│ Посмотри PR, который я отправил утром                      [1] │
├────────────────────────────────────────────────────────────────┤
│ ○ Мария                                         Вчера, 18:35   │
│ Ты: Хорошо, гляну через полчаса                                │
├────────────────────────────────────────────────────────────────┤
│ ○ Дмитрий                                       Понедельник    │
│ Дмитрий: Обновил код ревью по тем замечаниям                   │
├────────────────────────────────────────────────────────────────┤
│ Групповые чаты                                                 │
├────────────────────────────────────────────────────────────────┤
│ ● Project A                                      Сегодня, 9:15 │
│ Иван: Релиз запланирован на вечер вторника                 [3] │
├────────────────────────────────────────────────────────────────┤
│ ○ Project B                                    Позавчера, 14:20│
│ Елена: Настройка CI завершена, можно тестировать               │
├────────────────────────────────────────────────────────────────┤
│ ○ Project C                                      Понедельник   │
│ Еженедельный отчет о статусе разработки                        │
└────────────────────────────────────────────────────────────────┘
```

#### Плюсы
- Простой и интуитивно понятный интерфейс
- Хорошо адаптируется для мобильных устройств
- Четкая группировка чатов по категориям
- Минималистичный дизайн, соответствующий GitHub-стилю

#### Минусы
- Требуется полный переход на страницу чата для просмотра содержимого
- Меньше контекста при переключении между чатами
- Возможная перегрузка информацией при большом количестве чатов

### Вариант 3: Карточный интерфейс с фильтрацией

#### Описание
Современный карточный интерфейс, где чаты представлены в виде отдельных карточек с основной информацией. Мощная система фильтрации и сортировки позволяет быстро находить нужные чаты. Акцент на визуальное представление и статус чатов.

#### Структура интерфейса
1. **Шапка приложения**:
   - Логотип и название приложения
   - Меню пользователя (аватар, настройки, выход)
   - Переключатель темы

2. **Панель фильтрации и поиска**:
   - Расширенный поиск по чатам
   - Фильтры (по типу, активности, репозиториям)
   - Сортировка (по дате, непрочитанным сообщениям)

3. **Сетка карточек чатов**:
   - Карточки с аватарами участников или иконкой репозитория
   - Заголовок чата и статусы участников
   - Превью последнего сообщения
   - Количество непрочитанных сообщений
   - Время последней активности
   - Метки для обозначения типа чата (личный/групповой)

#### Макет (схематически)
```
┌────────────────────────────────────────────────────────────────┐
│ Приложение                                          [☀️] [👤 ▼] │
├────────────────────────────────────────────────────────────────┤
│ 🔍 [Поиск чатов...]                                            │
│ Фильтры: [Все ▼] [По дате ▼] [Репозитории ▼]                  │
├────────────┬─────────────────┬────────────────────────────────┤
│ ┌──────────┴──┐ ┌────────────┴──┐ ┌──────────────────────┐    │
│ │ ● Александр │ │ ○ Мария       │ │ ● Project A     [3]  │    │
│ │             │ │                │ │                      │    │
│ │ Посмотри PR │ │ Ты: Хорошо,   │ │ Иван: Релиз запл... │    │
│ │ который...  │ │ гляну через...│ │                      │    │
│ │             │ │                │ │ Участники: 5        │    │
│ │ Вчера, 18:30│ │ Вчера, 18:35  │ │ Сегодня, 9:15       │    │
│ │         [1] │ │                │ │                      │    │
│ └─────────────┘ └────────────────┘ └──────────────────────┘    │
│                                                                │
│ ┌─────────────┐ ┌────────────────┐ ┌──────────────────────┐    │
│ │ ○ Project B │ │ ○ Project C    │ │ ○ Дмитрий           │    │
│ │             │ │                │ │                      │    │
│ │ Елена: На...│ │ Еженедельный  │ │ Дмитрий: Обновил    │    │
│ │ CI заверш...│ │ отчет о стат...│ │ код ревью по тем... │    │
│ │             │ │                │ │                      │    │
│ │ Позавчера   │ │ Понедельник   │ │ Понедельник         │    │
│ │             │ │                │ │                      │    │
│ └─────────────┘ └────────────────┘ └──────────────────────┘    │
└────────────────────────────────────────────────────────────────┘
```

#### Плюсы
- Визуально привлекательный интерфейс
- Гибкая система фильтрации и сортировки
- Хорошо подходит для пользователей с большим количеством чатов
- Можно добавить дополнительные визуальные элементы (теги, цветовое кодирование)

#### Минусы
- Меньшая плотность информации по сравнению со списочным представлением
- Может быть избыточным для пользователей с небольшим количеством чатов
- Сложнее адаптировать для очень маленьких экранов
- Не соответствует минималистичному стилю GitHub

## Рекомендуемый подход: Одностраничный список с группировкой

Вариант 2 (Одностраничный список с группировкой) наиболее соответствует выбранной дизайн-системе GitHub-inspired и обеспечивает оптимальный баланс между информативностью и простотой использования.

### Обоснование выбора
1. **Соответствие дизайн-системе**: Минималистичный, функциональный интерфейс в стиле GitHub
2. **Адаптивность**: Хорошо масштабируется для различных устройств, от мобильных до десктопных
3. **Информативность**: Отображает всю необходимую информацию в компактном виде
4. **Удобство использования**: Четкая группировка чатов и понятная навигация
5. **Консистентность**: Согласуется с выбранным интерфейсом страницы чата (вариант 2 с верхней навигацией)

### Рекомендации по реализации

#### Rails контроллер
```ruby
# app/controllers/chats_controller.rb
class ChatsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @personal_chats = current_user
      .chats
      .personal
      .includes(:users, :last_message)
      .order(last_message_at: :desc)
    
    @group_chats = current_user
      .chats
      .group
      .includes(:users, :repository, :last_message)
      .order(last_message_at: :desc)
    
    @unread_counts = current_user
      .unread_messages
      .group(:message)
      .joins(:message)
      .group('messages.chat_id')
      .count
      
    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
  
  # Остальные методы...
end
```

#### Основной вид списка чатов
```erb
<%# app/views/chats/index.html.erb %>

<div class="flex flex-col h-screen bg-bg-primary" data-controller="chat-list">
  <%# Шапка приложения %>
  <header class="bg-bg-secondary border-b border-border px-4 py-3 flex items-center justify-between">
    <div class="flex items-center space-x-4">
      <h1 class="text-lg font-medium text-text-primary">GitHub Chat</h1>
    </div>
    
    <div class="flex items-center space-x-3">
      <div class="relative" data-controller="search">
        <input type="text" 
               placeholder="Поиск чатов..." 
               class="w-64 px-3 py-1.5 bg-bg-tertiary border border-border rounded-md text-sm text-text-primary placeholder-text-secondary focus:outline-none focus:ring-1 focus:ring-accent focus:border-accent"
               data-action="input->search#filter"
               data-search-target="input">
        <svg class="w-4 h-4 text-text-secondary absolute right-3 top-2" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <%# Иконка поиска %>
        </svg>
      </div>
      
      <button class="p-1.5 rounded-md text-text-secondary hover:bg-bg-tertiary" 
              title="Переключить тему"
              data-action="click->theme#toggle">
        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <%# Иконка темы %>
        </svg>
      </button>
      
      <div class="relative" data-controller="dropdown">
        <button class="flex items-center space-x-1 focus:outline-none" 
                data-action="click->dropdown#toggle">
          <img src="<%= current_user.avatar_url %>" 
               class="w-8 h-8 rounded-full"
               alt="<%= current_user.username %>">
          <svg class="w-4 h-4 text-text-secondary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <%# Иконка выпадающего меню %>
          </svg>
        </button>
        
        <div class="absolute right-0 mt-2 w-48 bg-bg-primary shadow-lg rounded-md border border-border py-1 hidden z-10"
             data-dropdown-target="menu">
          <a href="<%= profile_path %>" class="block px-4 py-2 text-text-primary hover:bg-bg-tertiary">
            Профиль
          </a>
          <a href="<%= settings_path %>" class="block px-4 py-2 text-text-primary hover:bg-bg-tertiary">
            Настройки
          </a>
          <div class="border-t border-border my-1"></div>
          <%= button_to logout_path, method: :delete, class: "w-full text-left px-4 py-2 text-text-primary hover:bg-bg-tertiary" do %>
            Выйти
          <% end %>
        </div>
      </div>
    </div>
  </header>
  
  <%# Фильтры чатов %>
  <div class="bg-bg-secondary border-b border-border px-4 py-2 flex space-x-2">
    <button class="px-3 py-1 text-sm rounded-md bg-accent text-white"
            data-action="click->chat-list#filterAll"
            data-chat-list-target="filterAll">
      Все
    </button>
    <button class="px-3 py-1 text-sm rounded-md text-text-primary hover:bg-bg-tertiary"
            data-action="click->chat-list#filterPersonal"
            data-chat-list-target="filterPersonal">
      Личные
    </button>
    <button class="px-3 py-1 text-sm rounded-md text-text-primary hover:bg-bg-tertiary"
            data-action="click->chat-list#filterGroup"
            data-chat-list-target="filterGroup">
      Групповые
    </button>
  </div>
  
  <%# Список чатов с группировкой %>
  <div class="flex-1 overflow-y-auto">
    <%# Личные чаты %>
    <div class="py-2" data-chat-list-target="personalChats">
      <h2 class="px-4 py-2 text-sm font-medium text-text-secondary">
        Личные чаты
      </h2>
      
      <% if @personal_chats.empty? %>
        <div class="px-4 py-3 text-sm text-text-secondary">
          У вас пока нет личных чатов
        </div>
      <% else %>
        <% @personal_chats.each do |chat| %>
          <% other_user = chat.users.find { |user| user.id != current_user.id } %>
          <% unread_count = @unread_counts[chat.id] || 0 %>
          
          <%= link_to chat_path(chat), class: "block border-b border-border hover:bg-bg-tertiary #{'bg-accent/5' if unread_count > 0}" do %>
            <div class="px-4 py-3 flex items-start">
              <div class="flex-shrink-0 relative">
                <img src="<%= other_user.avatar_url %>" 
                     class="w-10 h-10 rounded-full"
                     alt="<%= other_user.username %>">
                     
                <% if other_user.online? %>
                  <span class="absolute bottom-0 right-0 block h-3 w-3 rounded-full bg-online ring-2 ring-bg-primary"></span>
                <% else %>
                  <span class="absolute bottom-0 right-0 block h-3 w-3 rounded-full bg-offline ring-2 ring-bg-primary"></span>
                <% end %>
              </div>
              
              <div class="ml-3 flex-1 min-w-0">
                <div class="flex items-baseline justify-between">
                  <h3 class="text-sm font-medium text-text-primary truncate">
                    <%= other_user.username %>
                  </h3>
                  <span class="text-xs text-text-secondary">
                    <%= time_ago_in_words(chat.last_message&.created_at || chat.created_at) %>
                  </span>
                </div>
                
                <% if chat.last_message %>
                  <p class="text-sm text-text-secondary truncate mt-1">
                    <% if chat.last_message.user_id == current_user.id %>
                      <span class="font-medium">Вы:</span>
                    <% else %>
                      <span class="font-medium"><%= other_user.username %>:</span>
                    <% end %>
                    <%= chat.last_message.content %>
                  </p>
                <% else %>
                  <p class="text-sm text-text-secondary italic mt-1">
                    Нет сообщений
                  </p>
                <% end %>
              </div>
              
              <% if unread_count > 0 %>
                <div class="ml-2 flex-shrink-0">
                  <span class="inline-flex items-center justify-center h-5 w-5 rounded-full bg-accent text-white text-xs font-medium">
                    <%= unread_count %>
                  </span>
                </div>
              <% end %>
            </div>
          <% end %>
        <% end %>
      <% end %>
    </div>
    
    <%# Групповые чаты %>
    <div class="py-2" data-chat-list-target="groupChats">
      <h2 class="px-4 py-2 text-sm font-medium text-text-secondary">
        Групповые чаты
      </h2>
      
      <% if @group_chats.empty? %>
        <div class="px-4 py-3 text-sm text-text-secondary">
          У вас пока нет групповых чатов
        </div>
      <% else %>
        <% @group_chats.each do |chat| %>
          <% unread_count = @unread_counts[chat.id] || 0 %>
          
          <%= link_to chat_path(chat), class: "block border-b border-border hover:bg-bg-tertiary #{'bg-accent/5' if unread_count > 0}" do %>
            <div class="px-4 py-3 flex items-start">
              <div class="flex-shrink-0">
                <div class="flex items-center justify-center w-10 h-10 rounded-full bg-bg-tertiary">
                  <svg class="w-5 h-5 text-text-secondary" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <%# Иконка репозитория %>
                  </svg>
                </div>
              </div>
              
              <div class="ml-3 flex-1 min-w-0">
                <div class="flex items-baseline justify-between">
                  <h3 class="text-sm font-medium text-text-primary truncate">
                    <%= chat.title %>
                  </h3>
                  <span class="text-xs text-text-secondary">
                    <%= time_ago_in_words(chat.last_message&.created_at || chat.created_at) %>
                  </span>
                </div>
                
                <% if chat.last_message %>
                  <p class="text-sm text-text-secondary truncate mt-1">
                    <span class="font-medium"><%= chat.last_message.user.username %>:</span>
                    <%= chat.last_message.content %>
                  </p>
                <% else %>
                  <p class="text-sm text-text-secondary italic mt-1">
                    Нет сообщений
                  </p>
                <% end %>
              </div>
              
              <% if unread_count > 0 %>
                <div class="ml-2 flex-shrink-0">
                  <span class="inline-flex items-center justify-center h-5 w-5 rounded-full bg-accent text-white text-xs font-medium">
                    <%= unread_count %>
                  </span>
                </div>
              <% end %>
            </div>
          <% end %>
        <% end %>
      <% end %>
    </div>
    
    <%# Сообщение при отсутствии чатов %>
    <div class="hidden px-4 py-6 text-center" data-chat-list-target="emptyState">
      <div class="bg-bg-tertiary rounded-lg p-6 inline-flex flex-col items-center">
        <svg class="w-12 h-12 text-text-secondary mb-3" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <%# Иконка сообщений %>
        </svg>
        <h3 class="text-text-primary font-medium mb-1">Нет доступных чатов</h3>
        <p class="text-text-secondary text-sm mb-4">
          Чаты создаются автоматически на основе ваших приватных репозиториев
        </p>
      </div>
    </div>
  </div>
</div>
```

#### Stimulus контроллер для списка чатов
```javascript
// app/javascript/controllers/chat_list_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["filterAll", "filterPersonal", "filterGroup", "personalChats", "groupChats", "emptyState"]
  
  connect() {
    this.filterAll()
    
    // Обновление списка чатов через Turbo Stream
    this.channel = this.application.consumer.subscriptions.create("ChatsChannel", {
      received: (data) => {
        Turbo.renderStreamMessage(data)
      }
    })
  }
  
  disconnect() {
    if (this.channel) {
      this.channel.unsubscribe()
    }
  }
  
  filterAll() {
    this.setActiveButton(this.filterAllTarget)
    this.personalChatsTarget.classList.remove("hidden")
    this.groupChatsTarget.classList.remove("hidden")
    this.emptyStateTarget.classList.add("hidden")
    
    // Проверяем, есть ли чаты
    const hasChats = this.personalChatsTarget.querySelector("a") || this.groupChatsTarget.querySelector("a")
    if (!hasChats) {
      this.emptyStateTarget.classList.remove("hidden")
    }
  }
  
  filterPersonal() {
    this.setActiveButton(this.filterPersonalTarget)
    this.personalChatsTarget.classList.remove("hidden")
    this.groupChatsTarget.classList.add("hidden")
    
    // Проверяем, есть ли личные чаты
    const hasPersonalChats = this.personalChatsTarget.querySelector("a")
    if (!hasPersonalChats) {
      this.emptyStateTarget.classList.remove("hidden")
    } else {
      this.emptyStateTarget.classList.add("hidden")
    }
  }
  
  filterGroup() {
    this.setActiveButton(this.filterGroupTarget)
    this.personalChatsTarget.classList.add("hidden")
    this.groupChatsTarget.classList.remove("hidden")
    
    // Проверяем, есть ли групповые чаты
    const hasGroupChats = this.groupChatsTarget.querySelector("a")
    if (!hasGroupChats) {
      this.emptyStateTarget.classList.remove("hidden")
    } else {
      this.emptyStateTarget.classList.add("hidden")
    }
  }
  
  setActiveButton(activeButton) {
    // Убираем активное состояние со всех кнопок
    [this.filterAllTarget, this.filterPersonalTarget, this.filterGroupTarget].forEach(button => {
      button.classList.remove("bg-accent", "text-white")
      button.classList.add("text-text-primary", "hover:bg-bg-tertiary")
    })
    
    // Устанавливаем активное состояние для выбранной кнопки
    activeButton.classList.remove("text-text-primary", "hover:bg-bg-tertiary")
    activeButton.classList.add("bg-accent", "text-white")
  }
}
```

#### Stimulus контроллер для поиска
```javascript
// app/javascript/controllers/search_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input"]
  
  filter() {
    const query = this.inputTarget.value.toLowerCase().trim()
    const chatItems = document.querySelectorAll('a[href^="/chats/"]')
    
    if (query === '') {
      chatItems.forEach(item => {
        item.classList.remove("hidden")
      })
      return
    }
    
    chatItems.forEach(item => {
      const title = item.querySelector("h3").textContent.toLowerCase()
      const message = item.querySelector("p").textContent.toLowerCase()
      
      if (title.includes(query) || message.includes(query)) {
        item.classList.remove("hidden")
      } else {
        item.classList.add("hidden")
      }
    })
    
    // Проверяем, остались ли видимые элементы в каждой группе
    const personalGroup = document.querySelector('[data-chat-list-target="personalChats"]')
    const groupGroup = document.querySelector('[data-chat-list-target="groupChats"]')
    
    const visiblePersonal = personalGroup.querySelectorAll('a:not(.hidden)')
    const visibleGroup = groupGroup.querySelectorAll('a:not(.hidden)')
    
    if (visiblePersonal.length === 0) {
      const personalEmpty = personalGroup.querySelector('.text-text-secondary:not(h2)')
      if (personalEmpty) {
        personalEmpty.classList.add("hidden")
      }
      personalGroup.insertAdjacentHTML('beforeend', '<div class="px-4 py-3 text-sm text-text-secondary search-empty">Нет совпадений</div>')
    } else {
      const emptyMessage = personalGroup.querySelector('.search-empty')
      if (emptyMessage) emptyMessage.remove()
      
      const originalEmpty = personalGroup.querySelector('.text-text-secondary:not(h2):not(.search-empty)')
      if (originalEmpty) {
        originalEmpty.classList.remove("hidden")
      }
    }
    
    if (visibleGroup.length === 0) {
      const groupEmpty = groupGroup.querySelector('.text-text-secondary:not(h2)')
      if (groupEmpty) {
        groupEmpty.classList.add("hidden")
      }
      groupGroup.insertAdjacentHTML('beforeend', '<div class="px-4 py-3 text-sm text-text-secondary search-empty">Нет совпадений</div>')
    } else {
      const emptyMessage = groupGroup.querySelector('.search-empty')
      if (emptyMessage) emptyMessage.remove()
      
      const originalEmpty = groupGroup.querySelector('.text-text-secondary:not(h2):not(.search-empty)')
      if (originalEmpty) {
        originalEmpty.classList.remove("hidden")
      }
    }
  }
}
```

### Проверка на соответствие требованиям
- ✅ Соответствие дизайн-системе: Использование GitHub-inspired Design System
- ✅ Адаптивность: Оптимизирован как для мобильных, так и для десктопных устройств
- ✅ Поддержка тем: Использование CSS переменных и переключателя темы
- ✅ Статусы участников: Индикаторы онлайн/офлайн на аватарах
- ✅ Индикация непрочитанных сообщений: Счетчики и выделение цветом
- ✅ Группировка чатов: Разделение на личные и групповые
- ✅ Информативные превью: Отображение последнего сообщения и времени
- ✅ Доступность: Семантическая разметка, контрастные цвета, понятная навигация

# 🎨🎨🎨 EXITING CREATIVE PHASE 