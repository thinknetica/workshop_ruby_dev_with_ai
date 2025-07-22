# Правила для обнаружения галлюцинаций ИИ
_Exported on 21.07.2025 at 11:43:49 GMT+3 from Cursor (1.2.4)_

---

**User**

Помоги написать правила .cursor/rules агента, который обнаруживает потенциальные галлюцинации в реакциях искусственного интеллекта

---

**Cursor**

План действий:
1. Определить цель и область применения правил — агент должен выявлять потенциальные галлюцинации (недостоверные, вымышленные или не подтверждённые факты) в ответах ИИ.
2. Сформулировать конкретные правила для .cursor/rules, которые помогут агенту обнаруживать такие случаи.
3. Предложить структуру файла и примеры формулировок.

Предложенные изменения:

Создайте файл `.cursor/rules/hallucination_detection.mdc` со следующим содержанием:

```md
---
alwaysApply: true
---

- Агент должен анализировать ответы ИИ на предмет наличия недостоверных, вымышленных или не подтверждённых фактов (галлюцинаций).
- Если в ответе содержится информация, не подтверждённая исходным кодом, документацией или авторитетными источниками, агент должен пометить её как потенциальную галлюцинацию.
- Агент обязан запрашивать подтверждение или дополнительные источники для любой информации, вызывающей сомнения.
- Агент не должен делать предположения без явной опоры на факты из кода, документации или проверенных данных.
- При обнаружении потенциальной галлюцинации агент должен явно уведомлять пользователя и предлагать способы проверки информации.
- Агент должен отдавать предпочтение цитированию исходных данных, а не пересказу или интерпретации без ссылок.
```

Если нужно, могу адаптировать формулировки или добавить дополнительные пункты. Скажите, если требуется интеграция с другими правилами или уточнения.

```plaintext
---
alwaysApply: true
---

- Агент должен анализировать ответы ИИ на предмет наличия недостоверных, вымышленных или не подтверждённых фактов (галлюцинаций).
- Если в ответе содержится информация, не подтверждённая исходным кодом, документацией или авторитетными источниками, агент должен пометить её как потенциальную галлюцинацию.
- Агент обязан запрашивать подтверждение или дополнительные источники для любой информации, вызывающей сомнения.
- Агент не должен делать предположения без явной опоры на факты из кода, документации или проверенных данных.
- При обнаружении потенциальной галлюцинации агент должен явно уведомлять пользователя и предлагать способы проверки информации.
- Агент должен отдавать предпочтение цитированию исходных данных, а не пересказу или интерпретации без ссылок.
```

---

**User**

Да, весь текст в файле напиши на английском

---

**Cursor**

План:
1. Перевести предложенные правила на английский язык.
2. Сохранить структуру и формулировки, сделать их максимально ясными и однозначными.
3. Подготовить финальный вариант для вставки в файл `.cursor/rules/hallucination_detection.mdc`.

Изменения:

```md
---
alwaysApply: true
---

- The agent must analyze AI responses for the presence of inaccurate, fabricated, or unverified information (hallucinations).
- If a response contains information not supported by source code, documentation, or authoritative sources, the agent must flag it as a potential hallucination.
- The agent is required to request confirmation or additional sources for any information that appears questionable.
- The agent must not make assumptions without explicit support from code, documentation, or verified data.
- When a potential hallucination is detected, the agent must clearly notify the user and suggest ways to verify the information.
- The agent should prefer quoting original data over paraphrasing or interpreting without references.
```

Если нужно добавить или изменить пункты — уточните детали.

```plaintext
---
alwaysApply: true
---

- The agent must analyze AI responses for the presence of inaccurate, fabricated, or unverified information (hallucinations).
- If a response contains information not supported by source code, documentation, or authoritative sources, the agent must flag it as a potential hallucination.
- The agent is required to request confirmation or additional sources for any information that appears questionable.
- The agent must not make assumptions without explicit support from code, documentation, or verified data.
- When a potential hallucination is detected, the agent must clearly notify the user and suggest ways to verify the information.
- The agent should prefer quoting original data over paraphrasing or interpreting without references.
```

---

**User**

Теперь сравни свою версию с этой: ---
description: Agent that detects potential hallucinations in AI responses
agentRequested: true
---
- You are an assistant tasked with detecting potential hallucinations in AI-generated content.
- Hallucinations may include:
- Inconsistencies with earlier prompts or requirements.
- ...
- Analyze both code and text.
- You may choose:
- A step-by-step review of each interaction from `prompt_logs`
- Or a comparison of final results (`spec.md`, `README.md`) against expectations.
- Highlight any questionable segments with justification.
- Output your analysis in markdown with clear sections. и внеси улучшения. Результат сохрани в .cursor/rules/hallucination_checker.mdc

---

**Cursor**

```markdown
- You are an assistant tasked with detecting potential hallucinations in AI-generated content (code and text).
- Hallucinations may include:
  - Inaccurate, fabricated, or unverified information not supported by source code, documentation, or authoritative sources.
  - Inconsistencies with earlier prompts, requirements, or user instructions.
  - Unsupported assumptions or interpretations without explicit evidence.
- Analyze both code and text in the context of the project.
- You may choose:
  - A step-by-step review of each interaction from `prompt_logs`.
  - Or a comparison of final results (`spec.md`, `README.md`, or other deliverables) against expectations and requirements.
- For any questionable or potentially hallucinated segment, highlight it and provide clear justification (e.g., missing source, contradiction, lack of evidence).
- When a potential hallucination is detected:
  - Clearly notify the user in your output.
  - Suggest ways to verify or correct the information (e.g., reference code, documentation, or request clarification).
- Prefer quoting original data or sources over paraphrasing or interpreting without references.
- Output your analysis in markdown with clear sections and justifications for each flagged segment.

```

Сравнил обе версии и объединил их сильные стороны:

- Добавил структурированное описание и критерии галлюцинаций (неточность, несоответствие требованиям, неподтверждённые предположения).
- Уточнил, что анализу подлежат и код, и текст.
- Оставил выбор между пошаговым анализом логов и сравнением итоговых файлов.
- Добавил требование выделять сомнительные места с обоснованием.
- Ввел рекомендации по уведомлению пользователя и способам проверки.
- Уточнил формат вывода (markdown, чёткие секции, обоснования).

Файл сохранён как `.cursor/rules/hallucination_checker.mdc`. Если нужны доработки — уточните детали.

