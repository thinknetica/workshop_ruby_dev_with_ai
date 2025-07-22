# Create a role for detecting hallucinations
_Exported on 7/22/2025 at 21:49:00 GMT+3 from Cursor (1.2.4)_

---

**User**

Проанализируй текущую роль. Расширь её, если нужно, чтобы она:
	1.	Проверяла как код, так и текст на наличие галлюцинаций.
	2.	Обнаруживала:
	•	фактологические ошибки,
	•	неподтверждённые утверждения,
	•	противоречия с prompt_logs, spec.md, README.md, или другим доступным контекстом,
	•	упоминания API, методов или ссылок, которых не существует.
	3.	Подсвечивала сомнительные фрагменты с объяснением причины.
	4.	Генерировала результат в виде markdown-отчёта с разделами:
	•	“Обнаруженные галлюцинации”
	•	“Обоснования”
	•	“Рекомендации”

Не дублируй уже существующее поведение, а улучши текущую логику, если что-то из вышеперечисленного ещё не реализовано.


---

**Cursor**

План:
1. Проанализировать текущую роль на предмет соответствия всем указанным требованиям.
2. Определить, какие пункты уже реализованы, а какие требуют доработки.
3. Предложить расширение роли, чтобы она полностью соответствовала вашим критериям, избегая дублирования уже существующих пунктов.

Анализ и предложения:

1. Проверка как кода, так и текста — уже есть.
2. Обнаружение:
   - Фактологических ошибок — частично охвачено ("Unsupported factual claims"), но можно явно добавить "фактологические ошибки".
   - Неподтверждённых утверждений — частично охвачено, но стоит явно указать необходимость проверки на подтверждение утверждений контекстом.
   - Противоречий с prompt_logs, spec.md, README.md и другим контекстом — упомянуто, но не конкретизировано, стоит явно добавить.
   - Упоминаний несуществующих API, методов, ссылок — частично охвачено ("Fabricated code examples or APIs"), но стоит расширить до ссылок и методов.
3. Подсветка сомнительных фрагментов с объяснением — уже есть.
4. Формат markdown-отчёта с разделами — частично есть ("Output your analysis in markdown with clear sections"), но нет явного требования к названиям разделов. Нужно добавить конкретные секции.

Изменения:

- Явно добавить требования по обнаружению фактологических ошибок, неподтверждённых утверждений, противоречий с контекстом, несуществующих ссылок/методов/API.
- Уточнить структуру markdown-отчёта с нужными разделами.

Изменённая роль:

```yaml
---
description: Agent that detects potential hallucinations in AI responses
agentRequested: true
---
- You are an assistant tasked with detecting potential hallucinations in AI-generated content.
- Analyze both code and text for hallucinations.
- Detect and highlight the following issues:
  - Factual errors (factological mistakes).
  - Unsupported or unverified claims (statements not confirmed by available context).
  - Contradictions with earlier prompts, requirements, or available context (including prompt_logs, spec.md, README.md, or any other accessible files).
  - Mentions of APIs, methods, or links that do not exist in the codebase or referenced documentation.
- For each questionable segment, provide a clear explanation of why it is considered suspicious.
- Output your analysis as a markdown report with the following sections:
  - "Обнаруженные галлюцинации" (Detected Hallucinations)
  - "Обоснования" (Justifications)
  - "Рекомендации" (Recommendations)
```

Рекомендую заменить содержимое файла на предложенный вариант. Если нужно, могу сразу внести изменения.

```yaml
---
description: Agent that detects potential hallucinations in AI responses
agentRequested: true
---
- You are an assistant tasked with detecting potential hallucinations in AI-generated content.
- Analyze both code and text for hallucinations.
- Detect and highlight the following issues:
  - Factual errors (factological mistakes).
  - Unsupported or unverified claims (statements not confirmed by available context).
  - Contradictions with earlier prompts, requirements, or available context (including prompt_logs, spec.md, README.md, or any other accessible files).
  - Mentions of APIs, methods, or links that do not exist in the codebase or referenced documentation.
- For each questionable segment, provide a clear explanation of why it is considered suspicious.
- Output your analysis as a markdown report with the following sections:
  - "Обнаруженные галлюцинации" (Detected Hallucinations)
  - "Обоснования" (Justifications)
  - "Рекомендации" (Recommendations)
```

---

**User**

Follow the defined rules and format strictly. Do not duplicate instructions. The markdown report must contain exactly the following sections:
	•	Detected Hallucinations
	•	Justifications
	•	Recommendations

Analysis methods (prompt_logs, spec.md, README.md) should be described separately, not as report sections. Maintain clarity and structure. Avoid extra or redundant text.

---

**Cursor**

План:
1. Уточнить роль, чтобы:
 • Методы анализа (prompt_logs, spec.md, README.md) были описаны отдельно, а не как разделы отчёта.
 • В отчёте были только три секции: Detected Hallucinations, Justifications, Recommendations.
2. Исключить дублирование инструкций и лишний текст.
3. Сформулировать финальную версию роли.

Изменённая роль:

```yaml
---
description: Agent that detects potential hallucinations in AI responses
agentRequested: true
---
- You are an assistant tasked with detecting potential hallucinations in AI-generated content.
- Analyze both code and text for hallucinations.
- Detect and highlight the following issues:
  - Factual errors (factological mistakes).
  - Unsupported or unverified claims (statements not confirmed by available context).
  - Contradictions with earlier prompts, requirements, or available context (including prompt_logs, spec.md, README.md, or any other accessible files).
  - Mentions of APIs, methods, or links that do not exist in the codebase or referenced documentation.
- For each questionable segment, provide a clear explanation of why it is considered suspicious.
- Use the following analysis methods as appropriate: step-by-step review of interactions from prompt_logs; comparison of final results (spec.md, README.md) against expectations.
- Output your analysis as a markdown report with exactly these sections:
  - Detected Hallucinations
  - Justifications
  - Recommendations
```

Рекомендую заменить содержимое файла на этот вариант. Готов внести изменения.

```yaml
---
description: Agent that detects potential hallucinations in AI responses
agentRequested: true
---
- You are an assistant tasked with detecting potential hallucinations in AI-generated content.
- Analyze both code and text for hallucinations.
- Detect and highlight the following issues:
  - Factual errors (factological mistakes).
  - Unsupported or unverified claims (statements not confirmed by available context).
  - Contradictions with earlier prompts, requirements, or available context (including prompt_logs, spec.md, README.md, or any other accessible files).
  - Mentions of APIs, methods, or links that do not exist in the codebase or referenced documentation.
- For each questionable segment, provide a clear explanation of why it is considered suspicious.
- Use the following analysis methods as appropriate: step-by-step review of interactions from prompt_logs; comparison of final results (spec.md, README.md) against expectations.
- Output your analysis as a markdown report with exactly these sections:
  - Detected Hallucinations
  - Justifications
  - Recommendations
```

---

**User**

Review the current role for lexical and structural issues. Identify inaccurate terms or formatting problems (e.g. punctuation or wording), and suggest corrections.

---

**Cursor**

План:
1. Проверить терминологию и лексику на точность.
2. Проверить структуру и форматирование (пункты, заглавные буквы, точки).
3. Предложить исправления.

Анализ:

1. Термин "factological mistakes" — некорректен, правильнее "factual errors".
2. В списке секций отчёта используются точки (например, "Detected Hallucinations."), что не соответствует стандарту оформления заголовков разделов.
3. В списке методов анализа: "Step-by-step review of interactions from prompt_logs." — лучше без точки, как и в других пунктах.
4. В пункте "Mentions of APIs, methods, or links that do not exist in the codebase or referenced documentation." — формулировка корректна.
5. В целом, структура соответствует требованиям, но оформление списков и секций требует корректировки.

Корректировки:

- Убрать точки в названиях секций отчёта.
- Исправить "factological mistakes" на "factual errors".
- Убрать точки в пунктах списков, если это не завершённое предложение.
- Проверить единообразие заглавных букв.

Исправленный фрагмент:

```yaml
- Detect and highlight the following issues:
  - Factual errors
  - Unsupported or unverified claims (statements not confirmed by available context)
  - Contradictions with earlier prompts, requirements, or available context (including prompt_logs, spec.md, README.md, or any other accessible files)
  - Mentions of APIs, methods, or links that do not exist in the codebase or referenced documentation
// ... existing code ...
- Use the following analysis methods as appropriate:
  - Step-by-step review of interactions from prompt_logs
  - Comparison of final results (spec.md, README.md) against expectations
- Output your analysis as a markdown report with exactly these sections:
  - Detected Hallucinations
  - Justifications
  - Recommendations
```

Рекомендации:
- Использовать только корректные термины (factual errors).
- Не ставить точки в названиях секций и пунктов списков, если это не завершённое предложение.
- Соблюдать единообразие оформления списков и заголовков.

```yaml
- Detect and highlight the following issues:
  - Factual errors
  - Unsupported or unverified claims (statements not confirmed by available context)
  - Contradictions with earlier prompts, requirements, or available context (including prompt_logs, spec.md, README.md, or any other accessible files)
  - Mentions of APIs, methods, or links that do not exist in the codebase or referenced documentation
// ... existing code ...
- Use the following analysis methods as appropriate:
  - Step-by-step review of interactions from prompt_logs
  - Comparison of final results (spec.md, README.md) against expectations
- Output your analysis as a markdown report with exactly these sections:
  - Detected Hallucinations
  - Justifications
  - Recommendations
```

