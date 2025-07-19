# Создание правила для обнаружения галлюцинаций
_Exported on 19.07.2025 at 17:06:18 GMT+3 from Cursor (1.2.4)_

---

**User**

@/prompt_logs @README.md @spec.md 
/Generate Cursor Rules 

Разрабай правило, ĸоторое будет обнаруживать возможные галлюцинации в AI-сгенерированном ĸоде и теĸсте на основе истории промптов и итоговых файлов проеĸта.

---

**Cursor**

I'll analyze the prompt logs and project files to create a Cursor rule for detecting potential hallucinations in AI-generated code and text. Let me first examine the prompt logs to understand the context and patterns.


Now I'll create a comprehensive Cursor rule for detecting potential hallucinations in AI-generated code and text based on the analysis of the prompt logs and project files.


```markdown
# AI Hallucination Detection Rule

This rule helps detect potential hallucinations in AI-generated code and text by cross-referencing with project specifications, prompt history, and existing codebase patterns.

## Core Detection Principles

### 1. Cross-Reference with Project Specifications
Always verify AI-generated content against:
- [spec.md](mdc:spec.md) - Project specifications and requirements
- [README.md](mdc:README.md) - Project overview and setup instructions
- [prompt_logs/brainstorm.md](mdc:prompt_logs/brainstorm.md) - Detailed development history
- [prompt_logs/webinar_2_logs.md](mdc:prompt_logs/webinar_2_logs.md) - Implementation logs

### 2. Technology Stack Validation
Ensure generated code aligns with the project's technology stack:
- **Backend**: Ruby on Rails (API + Web)
- **Frontend**: Hotwire (Turbo, Stimulus), Tailwind CSS
- **Database**: PostgreSQL
- **Authentication**: OmniAuth GitHub OAuth
- **No external integrations** except GitHub API

### 3. Architecture Consistency Checks
Verify that generated code follows the established patterns:
- **Database Schema**: Check against tables defined in spec.md (users, repositories, user_repositories, chats, chat_users, messages, unread_messages)
- **API Structure**: Ensure REST endpoints match spec.md definitions
- **Model Relationships**: Validate ActiveRecord associations
- **Controller Actions**: Confirm they align with API specifications

## Specific Hallucination Detection Patterns

### Database and Model Hallucinations
**Red Flags:**
- Tables not mentioned in [spec.md](mdc:spec.md) database schema
- Fields that don't exist in the specification
- Incorrect data types or constraints
- Missing or incorrect foreign key relationships

**Verification Steps:**
1. Cross-reference with database schema in spec.md
2. Check existing migrations in `db/` directory
3. Verify model associations match user_repositories, chat_users relationships

### API Endpoint Hallucinations
**Red Flags:**
- Endpoints not defined in spec.md API section
- Incorrect HTTP methods or response formats
- Missing required parameters or authentication
- Inconsistent JSON response structures

**Verification Steps:**
1. Check spec.md API schemas section
2. Verify authentication requirements (GitHub OAuth only)
3. Confirm response format matches examples

### Feature Hallucinations
**Red Flags:**
- Features not mentioned in brainstorm.md development history
- Functionality explicitly excluded in specifications
- Integration with external services (only GitHub allowed)
- Real-time features when not specified

**Verification Steps:**
1. Review prompt_logs/brainstorm.md for feature discussions
2. Check spec.md functional requirements
3. Verify against "Нефункциональные требования" section

### Technology Stack Hallucinations
**Red Flags:**
- Libraries or frameworks not in Gemfile
- Frontend frameworks other than Hotwire/Turbo/Stimulus
- Database systems other than PostgreSQL
- Authentication methods other than GitHub OAuth

**Verification Steps:**
1. Check [Gemfile](mdc:Gemfile) for dependencies
2. Verify [config/application.rb](mdc:config/application.rb) configuration
3. Review [config/database.yml](mdc:config/database.yml) for database setup

## Implementation Guidelines

### When Reviewing AI-Generated Code:
1. **Always cross-reference** with spec.md before implementing
2. **Check prompt history** in prompt_logs/ for context
3. **Verify technology constraints** against project setup
4. **Test assumptions** against existing codebase patterns

### When Detecting Potential Hallucinations:
1. **Flag inconsistencies** with project specifications
2. **Request clarification** when features seem out of scope
3. **Suggest alternatives** that align with established patterns
4. **Document deviations** if they're intentional improvements

### Common Hallucination Scenarios:
- **Adding external integrations** (only GitHub API is allowed)
- **Implementing real-time features** (not specified in requirements)
- **Adding moderation features** (explicitly excluded)
- **Using different authentication** (GitHub OAuth only)
- **Adding search functionality** (not in requirements)
- **Implementing message editing/deletion** (not specified)

## Validation Checklist

Before accepting AI-generated code, verify:
- [ ] Matches database schema in spec.md
- [ ] Uses correct technology stack
- [ ] Follows API specifications
- [ ] Aligns with feature requirements
- [ ] Consistent with existing codebase patterns
- [ ] No external integrations (except GitHub)
- [ ] Authentication uses GitHub OAuth only
- [ ] No real-time features unless specified
- [ ] No moderation features (explicitly excluded)

## Examples of Detected Hallucinations

### ❌ Hallucination Example:
```ruby
# Adding external email service integration
class EmailService
  def send_notification(user, message)
    # This violates "no external integrations except GitHub"
  end
end
```

### ✅ Correct Implementation:
```ruby
# Internal notification only (as specified)
class NotificationService
  def mark_as_unread(user, chat_id)
    # Internal app notification only
  end
end
```

### ❌ Hallucination Example:
```ruby
# Adding search functionality (not in requirements)
class SearchController < ApplicationController
  def search_users
    # Search was not specified in requirements
  end
end
```

### ✅ Correct Implementation:
```ruby
# List all users (as specified)
class UsersController < ApplicationController
  def index
    @users = User.all # Simple listing as per spec
  end
end
```

This rule ensures that all AI-generated code and text remains faithful to the project specifications and doesn't introduce features or technologies that weren't part of the original requirements.
```

I notice there's an issue with the frontmatter formatting. Let me fix that:


```markdown
---
alwaysApply: true
description: Rule for detecting potential hallucinations in AI-generated code and text by cross-referencing with project specifications and prompt history
---

# AI Hallucination Detection Rule

->

---
alwaysApply: true
description: Rule for detecting potential hallucinations in AI-generated code and text by cross-referencing with project specifications and prompt history
---

# AI Hallucination Detection Rule
```

Let me check the current state of the file and fix the frontmatter:


I see the issue - the frontmatter got corrupted. Let me recreate the file properly:


```markdown
# AI Hallucination Detection Rule

This rule helps detect potential hallucinations in AI-generated code and text by cross-referencing with project specifications, prompt history, and existing codebase patterns.

## Core Detection Principles

### 1. Cross-Reference with Project Specifications
Always verify AI-generated content against:
- [spec.md](mdc:spec.md) - Project specifications and requirements
- [README.md](mdc:README.md) - Project overview and setup instructions
- [prompt_logs/brainstorm.md](mdc:prompt_logs/brainstorm.md) - Detailed development history
- [prompt_logs/webinar_2_logs.md](mdc:prompt_logs/webinar_2_logs.md) - Implementation logs

### 2. Technology Stack Validation
Ensure generated code aligns with the project's technology stack:
- **Backend**: Ruby on Rails (API + Web)
- **Frontend**: Hotwire (Turbo, Stimulus), Tailwind CSS
- **Database**: PostgreSQL
- **Authentication**: OmniAuth GitHub OAuth
- **No external integrations** except GitHub API

### 3. Architecture Consistency Checks
Verify that generated code follows the established patterns:
- **Database Schema**: Check against tables defined in spec.md (users, repositories, user_repositories, chats, chat_users, messages, unread_messages)
- **API Structure**: Ensure REST endpoints match spec.md definitions
- **Model Relationships**: Validate ActiveRecord associations
- **Controller Actions**: Confirm they align with API specifications

## Specific Hallucination Detection Patterns

### Database and Model Hallucinations
**Red Flags:**
- Tables not mentioned in [spec.md](mdc:spec.md) database schema
- Fields that don't exist in the specification
- Incorrect data types or constraints
- Missing or incorrect foreign key relationships

**Verification Steps:**
1. Cross-reference with database schema in spec.md
2. Check existing migrations in `db/` directory
3. Verify model associations match user_repositories, chat_users relationships

### API Endpoint Hallucinations
**Red Flags:**
- Endpoints not defined in spec.md API section
- Incorrect HTTP methods or response formats
- Missing required parameters or authentication
- Inconsistent JSON response structures

**Verification Steps:**
1. Check spec.md API schemas section
2. Verify authentication requirements (GitHub OAuth only)
3. Confirm response format matches examples

### Feature Hallucinations
**Red Flags:**
- Features not mentioned in brainstorm.md development history
- Functionality explicitly excluded in specifications
- Integration with external services (only GitHub allowed)
- Real-time features when not specified

**Verification Steps:**
1. Review prompt_logs/brainstorm.md for feature discussions
2. Check spec.md functional requirements
3. Verify against "Нефункциональные требования" section

### Technology Stack Hallucinations
**Red Flags:**
- Libraries or frameworks not in Gemfile
- Frontend frameworks other than Hotwire/Turbo/Stimulus
- Database systems other than PostgreSQL
- Authentication methods other than GitHub OAuth

**Verification Steps:**
1. Check [Gemfile](mdc:Gemfile) for dependencies
2. Verify [config/application.rb](mdc:config/application.rb) configuration
3. Review [config/database.yml](mdc:config/database.yml) for database setup

## Implementation Guidelines

### When Reviewing AI-Generated Code:
1. **Always cross-reference** with spec.md before implementing
2. **Check prompt history** in prompt_logs/ for context
3. **Verify technology constraints** against project setup
4. **Test assumptions** against existing codebase patterns

### When Detecting Potential Hallucinations:
1. **Flag inconsistencies** with project specifications
2. **Request clarification** when features seem out of scope
3. **Suggest alternatives** that align with established patterns
4. **Document deviations** if they're intentional improvements

### Common Hallucination Scenarios:
- **Adding external integrations** (only GitHub API is allowed)
- **Implementing real-time features** (not specified in requirements)
- **Adding moderation features** (explicitly excluded)
- **Using different authentication** (GitHub OAuth only)
- **Adding search functionality** (not in requirements)
- **Implementing message editing/deletion** (not specified)

## Validation Checklist

Before accepting AI-generated code, verify:
- [ ] Matches database schema in spec.md
- [ ] Uses correct technology stack
- [ ] Follows API specifications
- [ ] Aligns with feature requirements
- [ ] Consistent with existing codebase patterns
- [ ] No external integrations (except GitHub)
- [ ] Authentication uses GitHub OAuth only
- [ ] No real-time features unless specified
- [ ] No moderation features (explicitly excluded)

## Examples of Detected Hallucinations

### ❌ Hallucination Example:
```ruby
# Adding external email service integration
class EmailService
  def send_notification(user, message)
    # This violates "no external integrations except GitHub"
  end
end
```

### ✅ Correct Implementation:
```ruby
# Internal notification only (as specified)
class NotificationService
  def mark_as_unread(user, chat_id)
    # Internal app notification only
  end
end
```

### ❌ Hallucination Example:
```ruby
# Adding search functionality (not in requirements)
class SearchController < ApplicationController
  def search_users
    # Search was not specified in requirements
  end
end
```

### ✅ Correct Implementation:
```ruby
# List all users (as specified)
class UsersController < ApplicationController
  def index
    @users = User.all # Simple listing as per spec
  end
end
```

This rule ensures that all AI-generated code and text remains faithful to the project specifications and doesn't introduce features or technologies that weren't part of the original requirements.
```

I see the same issue is happening again. Let me check if the `.cursor/rules` directory exists and create it properly:


Let me check the existing rules to see the correct format:


Now I understand the issue. The frontmatter needs to be at the very beginning without any content before it. Let me recreate the file properly:


```markdown


->

---
alwaysApply: true
description: Rule for detecting potential hallucinations in AI-generated code and text by cross-referencing with project specifications and prompt history
---

# AI Hallucination Detection Rule

This rule helps detect potential hallucinations in AI-generated code and text by cross-referencing with project specifications, prompt history, and existing codebase patterns.

## Core Detection Principles

### 1. Cross-Reference with Project Specifications
Always verify AI-generated content against:
- [spec.md](mdc:spec.md) - Project specifications and requirements
- [README.md](mdc:README.md) - Project overview and setup instructions
- [prompt_logs/brainstorm.md](mdc:prompt_logs/brainstorm.md) - Detailed development history
- [prompt_logs/webinar_2_logs.md](mdc:prompt_logs/webinar_2_logs.md) - Implementation logs

### 2. Technology Stack Validation
Ensure generated code aligns with the project's technology stack:
- **Backend**: Ruby on Rails (API + Web)
- **Frontend**: Hotwire (Turbo, Stimulus), Tailwind CSS
- **Database**: PostgreSQL
- **Authentication**: OmniAuth GitHub OAuth
- **No external integrations** except GitHub API

### 3. Architecture Consistency Checks
Verify that generated code follows the established patterns:
- **Database Schema**: Check against tables defined in spec.md (users, repositories, user_repositories, chats, chat_users, messages, unread_messages)
- **API Structure**: Ensure REST endpoints match spec.md definitions
- **Model Relationships**: Validate ActiveRecord associations
- **Controller Actions**: Confirm they align with API specifications

## Specific Hallucination Detection Patterns

### Database and Model Hallucinations
**Red Flags:**
- Tables not mentioned in [spec.md](mdc:spec.md) database schema
- Fields that don't exist in the specification
- Incorrect data types or constraints
- Missing or incorrect foreign key relationships

**Verification Steps:**
1. Cross-reference with database schema in spec.md
2. Check existing migrations in `db/` directory
3. Verify model associations match user_repositories, chat_users relationships

### API Endpoint Hallucinations
**Red Flags:**
- Endpoints not defined in spec.md API section
- Incorrect HTTP methods or response formats
- Missing required parameters or authentication
- Inconsistent JSON response structures

**Verification Steps:**
1. Check spec.md API schemas section
2. Verify authentication requirements (GitHub OAuth only)
3. Confirm response format matches examples

### Feature Hallucinations
**Red Flags:**
- Features not mentioned in brainstorm.md development history
- Functionality explicitly excluded in specifications
- Integration with external services (only GitHub allowed)
- Real-time features when not specified

**Verification Steps:**
1. Review prompt_logs/brainstorm.md for feature discussions
2. Check spec.md functional requirements
3. Verify against "Нефункциональные требования" section

### Technology Stack Hallucinations
**Red Flags:**
- Libraries or frameworks not in Gemfile
- Frontend frameworks other than Hotwire/Turbo/Stimulus
- Database systems other than PostgreSQL
- Authentication methods other than GitHub OAuth

**Verification Steps:**
1. Check [Gemfile](mdc:Gemfile) for dependencies
2. Verify [config/application.rb](mdc:config/application.rb) configuration
3. Review [config/database.yml](mdc:config/database.yml) for database setup

## Implementation Guidelines

### When Reviewing AI-Generated Code:
1. **Always cross-reference** with spec.md before implementing
2. **Check prompt history** in prompt_logs/ for context
3. **Verify technology constraints** against project setup
4. **Test assumptions** against existing codebase patterns

### When Detecting Potential Hallucinations:
1. **Flag inconsistencies** with project specifications
2. **Request clarification** when features seem out of scope
3. **Suggest alternatives** that align with established patterns
4. **Document deviations** if they're intentional improvements

### Common Hallucination Scenarios:
- **Adding external integrations** (only GitHub API is allowed)
- **Implementing real-time features** (not specified in requirements)
- **Adding moderation features** (explicitly excluded)
- **Using different authentication** (GitHub OAuth only)
- **Adding search functionality** (not in requirements)
- **Implementing message editing/deletion** (not specified)

## Validation Checklist

Before accepting AI-generated code, verify:
- [ ] Matches database schema in spec.md
- [ ] Uses correct technology stack
- [ ] Follows API specifications
- [ ] Aligns with feature requirements
- [ ] Consistent with existing codebase patterns
- [ ] No external integrations (except GitHub)
- [ ] Authentication uses GitHub OAuth only
- [ ] No real-time features unless specified
- [ ] No moderation features (explicitly excluded)

## Examples of Detected Hallucinations

### ❌ Hallucination Example:
```ruby
# Adding external email service integration
class EmailService
  def send_notification(user, message)
    # This violates "no external integrations except GitHub"
  end
end
```

### ✅ Correct Implementation:
```ruby
# Internal notification only (as specified)
class NotificationService
  def mark_as_unread(user, chat_id)
    # Internal app notification only
  end
end
```

### ❌ Hallucination Example:
```ruby
# Adding search functionality (not in requirements)
class SearchController < ApplicationController
  def search_users
    # Search was not specified in requirements
  end
end
```

### ✅ Correct Implementation:
```ruby
# List all users (as specified)
class UsersController < ApplicationController
  def index
    @users = User.all # Simple listing as per spec
  end
end
```

This rule ensures that all AI-generated code and text remains faithful to the project specifications and doesn't introduce features or technologies that weren't part of the original requirements.
```

Perfect! I've successfully created a comprehensive Cursor rule for detecting potential hallucinations in AI-generated code and text. Let me verify the file was created correctly:


Excellent! I've successfully created a comprehensive Cursor rule for detecting potential hallucinations in AI-generated code and text. Here's a summary of what the rule provides:

## Created Rule: `.cursor/rules/hallucination-detection.mdc`

### Key Features:

1. **Cross-Reference System**: The rule references key project files:
   - `spec.md` - Project specifications and requirements
   - `README.md` - Project overview and setup instructions  
   - `prompt_logs/brainstorm.md` - Detailed development history
   - `prompt_logs/webinar_2_logs.md` - Implementation logs

2. **Technology Stack Validation**: Ensures code aligns with:
   - Ruby on Rails (API + Web)
   - Hotwire (Turbo, Stimulus), Tailwind CSS
   - PostgreSQL
   - OmniAuth GitHub OAuth
   - No external integrations except GitHub API

3. **Specific Detection Patterns**:
   - **Database/Model Hallucinations**: Tables/fields not in spec
   - **API Endpoint Hallucinations**: Undefined endpoints or wrong formats
   - **Feature Hallucinations**: Features not in requirements or explicitly excluded
   - **Technology Stack Hallucinations**: Wrong frameworks/libraries

4. **Common Hallucination Scenarios** identified from the project:
   - Adding external integrations (only GitHub allowed)
   - Implementing real-time features (not specified)
   - Adding moderation features (explicitly excluded)
   - Using different authentication (GitHub OAuth only)
   - Adding search functionality (not in requirements)
   - Message editing/deletion (not specified)

5. **Validation Checklist**: A comprehensive checklist to verify AI-generated code before implementation

6. **Practical Examples**: Shows both incorrect (hallucinated) and correct implementations

### How It Works:

The rule is set to `alwaysApply: true`, meaning it will automatically be applied to every AI interaction in this project. It will help detect when the AI tries to:

- Introduce features not mentioned in the detailed brainstorming sessions
- Use technologies not in the project's stack
- Create database structures that don't match the specification
- Implement API endpoints that weren't defined
- Add external integrations beyond GitHub

This rule will significantly improve the quality and consistency of AI-generated code by ensuring it stays faithful to the project's established specifications and development history.

---

**User**

давай переименуем правило в hallucination_checker.mdc

---

**Cursor**

Отлично! Правило успешно переименовано в `hallucination_checker.mdc`. Теперь файл находится в `.cursor/rules/hallucination_checker.mdc` и сохраняет все свои функции для обнаружения потенциальных галлюцинаций в AI-сгенерированном коде и тексте.

