# Налаштування Template Для Нового Проекту

## 1. Швидкий старт
1. Скопіюй папку шаблону у новий репозиторій.
2. Онови назву проекту у README.
3. Перевір AGENTS.md, .github/copilot-instructions.md і .cursor/rules.
4. Заповни docs/architecture/architecture-overview.template.md.
5. Зафіксуй базове рішення в docs/decisions/ADR-0001-template-baseline.md.
6. Перевір, що Template.sln відкривається в IDE і всі проекти завантажені.

## 2. Мінімальний baseline перед першою фічею
- Проект збирається командою dotnet build Template.sln.
- Налаштовані базові тести (dotnet test Template.sln).
- API запускається командою dotnet run --project src/Template.Api.
- Є опис архітектурних меж.
- Є щонайменше один ADR.
- Команда використовує playbooks з prompts/.

## 3. Режим роботи з AI
- Для аналізу: architecture-review-playbook.
- Для змін у коді: safe-refactor-playbook.
- Перед merge: pr-hardening-playbook + docs/ai-task-checklist.md.

## 4. Щотижневий template maintenance
- Онови промпти, які дали слабкі результати.
- Перевір консистентність правил між AGENTS і Copilot instructions.
- Додай новий ADR, якщо змінено підхід до архітектури або workflow.

## 5. Definition Of Done Для Template
- Всі AI-файли актуальні та узгоджені.
- Немає дублювання суперечливих правил.
- Новий проект стартує без ручного донастроювання документації.
- Solution збирається і тести проходять локально.
