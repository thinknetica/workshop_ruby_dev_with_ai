# Pull Request: Исправление подключения CSS/JS манифестов

## 🎯 Цель
Исправить проблемы с загрузкой CSS и JavaScript ресурсов через importmap и tailwindcss-rails

## 🐛 Проблемы
- [ ] Конфликт двух `application.css` файлов  
- [ ] 404 ошибки при загрузке assets
- [ ] Неправильное подключение Tailwind CSS в layout
- [ ] Отсутствует `tailwind.config.js`

## 🔧 Изменения

### 1. Настройка Tailwind CSS
- [ ] Создать `config/tailwind.config.js` с content paths
- [ ] Настроить кастомные цвета через CSS переменные

### 2. Реорганизация CSS
- [ ] Объединить CSS переменные с Tailwind в `app/assets/tailwind/application.css`
- [ ] Минимизировать `app/assets/stylesheets/application.css`

### 3. Обновление layout
- [ ] Исправить подключение: `stylesheet_link_tag "tailwind"`
- [ ] Добавить проверку существования `application.css`
- [ ] Обновить заголовок на "GitHub Chat"

### 4. Asset pipeline
- [ ] Настроить `Procfile.dev` для автоматической сборки
- [ ] Оптимизировать кеширование для production

## 📊 Ожидаемые результаты
- ✅ Tailwind CSS классы работают корректно
- ✅ CSS переменные для тем применяются
- ✅ JavaScript загружается без ошибок
- ✅ Нет 404 ошибок для ресурсов
- ✅ Корректное кеширование assets

## 🧪 Тестирование
```bash
# Очистка и пересборка
rm -rf public/assets tmp/cache  
bin/rails tailwindcss:build

# Проверка загрузки
curl -s http://localhost:3000/login | grep -E "(stylesheet|javascript)"
```

## 📋 Checklist
- [ ] Создан `tailwind.config.js`
- [ ] Обновлен `app/assets/tailwind/application.css`
- [ ] Исправлен `app/views/layouts/application.html.erb` 
- [ ] Настроен `Procfile.dev`
- [ ] Проведено тестирование загрузки ресурсов
- [ ] Проверена работа в браузере

---
**Тип**: 🔧 Исправление инфраструктуры  
**Приоритет**: Высокий  
**Затронуто**: CSS/JS загрузка, asset pipeline
