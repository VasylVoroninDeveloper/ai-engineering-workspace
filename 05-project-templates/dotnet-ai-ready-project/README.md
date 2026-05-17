# Назва Проекту

## Опис

Короткий опис проекту.

## Архітектура

Опис основних архітектурних рішень.

## Як Запустити

```powershell
dotnet restore Template.sln
dotnet build Template.sln
dotnet test Template.sln
dotnet run --project src/Template.Api/Template.Api.csproj
```

У VS Code можна використовувати готові tasks:

- `dotnet: restore`
- `dotnet: build`
- `dotnet: test`
- `dotnet: watch tests`
- `api: run`

Для debug використовуй launch configuration `Debug Template.Api`.

## Структура Solution

- `Template.sln`
- `src/Template.Domain`
- `src/Template.Application`
- `src/Template.Infrastructure`
- `src/Template.Api`
- `tests/Template.Application.Tests`

## AI Правила

У проекті використовуються:

- `.github/copilot-instructions.md`
- `AGENTS.md`
- `.cursor/rules/`
- `docs/architecture/`
- `docs/decisions/`
- `prompts/`

## Швидкий Старт З Template

1. Відкрий `TEMPLATE-SETUP.md` і виконай кроки налаштування.
2. Заповни `docs/architecture/architecture-overview.template.md`.
3. Підтверди або відредагуй `docs/decisions/ADR-0001-template-baseline.md`.
4. Вибери playbook через `prompts/prompt-index.md`.
5. У VS Code запусти task `dotnet: build` і task `dotnet: test`.
6. Перевір debug configuration `Debug Template.Api`.

## Карта AI Файлів

- `AGENTS.md` - workflow асистента, етапи задачі, risk handling, quality gates.
- `.github/copilot-instructions.md` - coding standards і технічні правила .NET.
- `.cursor/rules/` - локальні правила для Cursor.
- `prompts/` - готові prompt-шаблони під типові задачі.
- `docs/architecture/` - архітектурний контекст проекту.
- `docs/decisions/` - decision logs і tradeoffs.
- `docs/ai-task-checklist.md` - короткий checklist перед завершенням AI-задачі.

## Додані Плейбуки

- `prompts/architecture-review-playbook.md`
- `prompts/safe-refactor-playbook.md`
- `prompts/pr-hardening-playbook.md`
- `prompts/prompt-index.md`

## Пріоритет Інструкцій

Якщо інструкції конфліктують, використовуй такий пріоритет:

1. Проєктні override-правила в поточній задачі.
2. `AGENTS.md` - workflow process.
3. `.github/copilot-instructions.md` - coding standards.
4. `prompts/*` - task-specific format.
5. Загальні дефолтні правила інструмента.

## Критерії Готовності Для AI-Задач

- Код збирається без нових помилок.
- Релевантні тести проходять.
- Не порушено архітектурні boundaries.
- Документація оновлена для важливих змін.
- Є короткий підсумок ризиків та обмежень.