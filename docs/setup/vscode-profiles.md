# Профілі VS Code

VS Code Profiles - основний механізм для перемикання між персональною роботою, компанійною роботою та підтримкою AI workspace без змішування extensions, settings, snippets і AI-поведінки.

## Рекомендовані Профілі

### Personal .NET

Використовуй цей профіль для pet projects, експериментів, навчання і персональних продуктових ідей.

Рекомендований фокус:

- .NET API та розробка застосунків.
- GitHub Copilot і chat workflows.
- Редагування Markdown і документації.
- Архітектурні експерименти та prompt experiments.

Стратегія налаштувань:

- Увімкни Settings Sync, якщо це твій персональний контекст на машині.
- Спочатку тримай експериментальні extensions саме тут.
- Project-specific settings зберігай у кожному project repository в `.vscode/`.

### Lizard Soft .NET

Використовуй цей профіль для company projects.

Рекомендований фокус:

- Стабільний .NET development tooling.
- Company repository workspaces.
- Обережне використання AI згідно з project rules.
- Мінімум експериментальних extensions.

Стратегія налаштувань:

- Company-specific settings за можливості зберігай у company repositories.
- Не зберігай company secrets у VS Code settings або в цьому AI workspace.
- Використовуй project-level `.github/copilot-instructions.md` і `AGENTS.md` як source of truth для AI behavior.

### AI Workspace Lab

Використовуй цей профіль для підтримки цього репозиторію.

Рекомендований фокус:

- Написання Markdown-документації.
- Проєктування prompts.
- Підтримка templates.
- Проєктування agent workflows.
- Огляд документації.

Стратегія налаштувань:

- Тримай цей profile легким.
- Встанови extensions, які допомагають із Markdown, YAML, Git і .NET template validation.
- Використовуй його для розвитку reusable assets перед копіюванням у реальні проєкти.

## Групи Extensions

Рекомендовані baseline groups:

- .NET і C# development.
- Git і GitHub integration.
- GitHub Copilot.
- Markdown editing і preview.
- YAML і JSON editing.
- EditorConfig support.

Точний список extensions зберігається в `config/vscode/extensions/`:

- `ai-workspace-lab.txt`
- `personal-dotnet.txt`
- `lizard-soft-dotnet.txt`

Їх можна встановити через VS Code tasks:

- `VS Code: install AI Workspace Lab extensions`
- `VS Code: install Personal .NET extensions`
- `VS Code: install Lizard Soft .NET extensions`

Або напряму через PowerShell:

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/setup/install-vscode-profile-extensions.ps1 -ProfileName "AI Workspace Lab" -ExtensionListPath config/vscode/extensions/ai-workspace-lab.txt
```

## Стратегія Синхронізації Та Експорту

Settings Sync зручний, але не має бути єдиною резервною копією.

Для кожного profile зафіксуй коротко:

- Назву profile.
- Призначення.
- Essential extensions.
- Важливі settings.
- Чи увімкнений Settings Sync.
- Manual setup steps, якщо вони є.

Під час перенесення на інший ПК спочатку відтвори profile, а потім відкривай відповідний workspace або project.

## Правило Project Settings

Global profile settings описують, як тобі зручно працювати. Project settings описують, що потрібно конкретному проєкту.

Для project-level `.vscode/` файлів варто зберігати:

- Build tasks.
- Test tasks.
- Debug configurations.
- Project-specific formatting або analyzer behavior.

Не зберігай secrets або machine-specific absolute paths у project settings.
