# Налаштування Template Для Нового Проекту

## 1. Швидкий старт
1. Скопіюй папку шаблону у новий репозиторій.
2. Перейменуй `Template.sln`, projects, namespaces і згадки `Template` у README/docs.
3. Відкрий репозиторій у VS Code з профілем `Personal .NET` або відповідним company profile.
4. Перевір, що VS Code пропонує extensions із `.vscode/extensions.json`.
5. Перевір `AGENTS.md`, `.github/copilot-instructions.md` і `.cursor/rules`.
6. Заповни `docs/architecture/architecture-overview.template.md`.
7. Зафіксуй базове рішення в `docs/decisions/ADR-0001-template-baseline.md`.
8. Перевір, що `Template.sln` відкривається у Solution Explorer / C# Dev Kit і всі projects завантажені.

## 2. Мінімальний baseline перед першою фічею
- Проект збирається командою `dotnet build Template.sln` або VS Code task `dotnet: build`.
- Налаштовані базові тести: `dotnet test Template.sln` або VS Code task `dotnet: test`.
- API запускається командою `dotnet run --project src/Template.Api/Template.Api.csproj` або VS Code task `api: run`.
- Debug configuration `Debug Template.Api` запускає API з `ASPNETCORE_ENVIRONMENT=Development`.
- Є опис архітектурних меж.
- Є щонайменше один ADR.
- Команда використовує playbooks з prompts/.

## 3. VS Code Setup
- `.vscode/extensions.json` містить рекомендовані extensions для .NET, Copilot, GitHub і YAML.
- `.vscode/tasks.json` містить tasks: `dotnet: restore`, `dotnet: build`, `dotnet: test`, `dotnet: watch tests`, `api: run`.
- `.vscode/launch.json` містить debug profile `Debug Template.Api`.
- `src/Template.Api/Properties/launchSettings.json` задає локальний Development profile для API.
- `.vscode/settings.json` приховує `bin/`, `obj/` і `TestResults` із пошуку/провідника.

## 4. Режим роботи з AI
- Для аналізу: architecture-review-playbook.
- Для змін у коді: safe-refactor-playbook.
- Перед merge: pr-hardening-playbook + docs/ai-task-checklist.md.
- Copilot читає `.github/copilot-instructions.md`.
- AI agents читають `AGENTS.md` як workflow rules.

## 5. Щотижневий template maintenance
- Онови промпти, які дали слабкі результати.
- Перевір консистентність правил між AGENTS і Copilot instructions.
- Додай новий ADR, якщо змінено підхід до архітектури або workflow.
- Перевір, що VS Code tasks і launch config досі відповідають solution structure.

## 6. Definition Of Done Для Template
- Всі AI-файли актуальні та узгоджені.
- Немає дублювання суперечливих правил.
- Новий проект стартує без ручного донастроювання VS Code tasks/debug/documentation.
- Solution збирається і тести проходять локально.
- API запускається через task `api: run` або debug profile `Debug Template.Api`.
