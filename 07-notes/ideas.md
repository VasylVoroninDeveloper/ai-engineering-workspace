# AI Workspace Roadmap

## MVP

### 1) AI-ready .NET project template
- Створити стабільний шаблон .NET-проєкту з базовою архітектурою.
- Додати готові AI-інструкції: Copilot, AGENTS, Cursor rules.
- Підготувати мінімальний README з кроками запуску та AI usage.

Expected outcome:
- Один надійний стартовий шаблон, який можна швидко копіювати в нові проєкти.

### 2) Reusable prompts (core set)
- Виділити базовий набір prompt-ів: Architecture Review, Code Review, Refactoring.
- Уніфікувати формат відповіді для всіх prompt-ів.
- Зафіксувати правила використання кожного prompt-а.

Expected outcome:
- Повторно використовувані prompt-и для типових задач без ручного переписування.

### 3) Devcontainer ecosystem (minimum)
- Створити базовий devcontainer для .NET розробки.
- Налаштувати мінімальні інструменти: SDK, тестовий раннер, лінтінг.
- Перевірити однаковий старт workspace на різних машинах.

Expected outcome:
- Передбачуване, відтворюване середовище розробки.

## Phase 2

### 1) Architecture patterns lab
- Створити окрему зону з прикладами архітектурних патернів.
- Додати приклади tradeoffs: коли патерн доречний, коли ні.
- Додати шаблони рішень для частих сценаріїв (.NET API, background jobs, integrations).

Expected outcome:
- Практична база знань для архітектурних рішень і швидкого вибору підходу.

### 2) Prompt system hardening
- Додати версіонування prompt-ів.
- Ввести індекс prompt-ів з описом призначення.
- Додати quality-check список для перевірки якості відповіді агента.

Expected outcome:
- Керована prompt-система з меншим дублюванням і стабільнішими результатами.

### 3) Template ecosystem expansion
- Додати 1-2 додаткові шаблони (наприклад, Web API + Worker).
- Узгодити спільні AI-правила між усіма шаблонами.
- Додати приклади decision logs у docs/decisions.

Expected outcome:
- Екосистема шаблонів, яка масштабується без втрати консистентності.

## Advanced Features

### 1) Intelligent workflow orchestration
- Формалізувати agent playbooks для складних сценаріїв (migration, incident fix, PR hardening).
- Додати критерії готовності (quality gates) для кожного workflow.
- Впровадити механізм ескалації ризикових змін.

Expected outcome:
- Керовані й безпечні agent workflows для production-рівня задач.

### 2) Prompt evaluation framework
- Створити набір тест-кейсів для prompt-ів (golden outputs).
- Автоматизувати регулярну перевірку якості відповідей.
- Відстежувати регресії після оновлень prompt-ів.

Expected outcome:
- Вимірювана якість AI-взаємодії та контроль деградацій.

### 3) Full devcontainer ecosystem
- Додати профілі devcontainer під різні типи проєктів.
- Налаштувати prebuild/оптимізацію запуску.
- Додати інтеграцію з CI для перевірки середовища.

Expected outcome:
- Production-ready середовище, яке однаково працює локально і в CI.