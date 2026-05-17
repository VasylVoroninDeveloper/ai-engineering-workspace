# Workspace Conventions

Цей документ фіксує правила організації VS Code workspaces, щоб було легко перемикатися між персональними проєктами, Lizard Soft і AI workspace.

## Принцип

Один workspace має відповідати одному робочому контексту. Не змішуй pet projects, company repositories і AI tooling в одному `.code-workspace`, якщо це не окремо продуманий тимчасовий сценарій.

## Правила Іменування

Використовуй зрозумілі назви `.code-workspace` файлів:

- `ai-workspace.code-workspace` - для цього repository та підтримки prompts/templates/playbooks.
- `pet-{project}.code-workspace` - для персонального проєкту.
- `lizard-soft-{project}.code-workspace` - для company project.
- `lab-{topic}.code-workspace` - для коротких експериментів або досліджень.

Приклади:

- `pet-finance-tracker.code-workspace`
- `lizard-soft-crm-api.code-workspace`
- `lab-dotnet-architecture-patterns.code-workspace`

## Що Зберігати У Workspace File

У `.code-workspace` можна зберігати:

- список folders, які належать до одного контексту;
- workspace-specific settings без secrets;
- рекомендовані extensions через `.vscode/extensions.json` у repository;
- tasks і launch configs, якщо вони є частиною repository.

Не зберігай у workspace file:

- secrets;
- tokens;
- connection strings;
- machine-specific absolute paths;
- тимчасові folders, які є тільки на одному ПК.

## Розділення Контекстів

### AI Workspace

Відкривай цей repository через `ai-workspace.code-workspace` і profile `AI Workspace Lab`.

Цей контекст призначений для:

- підтримки prompts;
- підтримки project templates;
- підтримки Copilot/agent instructions;
- документування setup;
- розвитку AI workflow.

### Personal Projects

Для pet projects використовуй profile `Personal .NET` і workspace files виду `pet-{project}.code-workspace`.

У personal workspaces можна експериментувати з prompts, extensions і архітектурними підходами, але стабілізовані assets варто переносити в `AI-Workspace` лише після перевірки.

### Lizard Soft Projects

Для company projects використовуй profile `Lizard Soft .NET` і workspace files виду `lizard-soft-{project}.code-workspace`.

Company-specific prompts, rules і constraints мають жити або в конкретному company repository, або в окремому private company knowledge repo.

## Перевірка Workspace

Workspace налаштований добре, якщо:

1. Його назва одразу показує контекст.
2. Він відкривається з правильним VS Code Profile.
3. У ньому немає зайвих repositories з іншого контексту.
4. Tasks запускаються без ручного пошуку команд.
5. Project-specific AI rules лежать у самому repository.
6. Немає secrets або machine-specific absolute paths.
