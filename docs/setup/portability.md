# Переносимість

Мета - зробити AI development environment таким, щоб його було легко відновити на іншому ПК без залежності від прихованого локального стану.

## Що Зберігати В Git

У Git варто зберігати відтворювані й shareable assets:

- Prompts.
- Copilot instruction templates.
- Agent playbooks.
- Project templates.
- Setup documentation.
- Workspace conventions.
- Project-level `.vscode/tasks.json` і `.vscode/launch.json`, якщо вони безпечні й portable.
- Architecture docs і ADR templates.

## Що Не Зберігати В Git

Ніколи не коміть:

- API keys, tokens, passwords або private certificates.
- Connection strings із secrets.
- Company credentials.
- Machine-specific absolute paths.
- Local cache folders.
- Build outputs, наприклад `bin/` і `obj/`.
- Tool-generated private state.

## Що Відтворювати Або Експортувати З VS Code

Використовуй VS Code Profiles для context-specific editor setup.

Для кожного profile відтвори або експортуй:

- Extensions.
- User settings.
- Snippets.
- Keyboard shortcuts, якщо вони важливі.
- UI layout preferences, якщо корисно.

Settings Sync зручний для personal setup, але workspace все одно має містити достатньо інформації, щоб відновити все вручну.

## Checklist Для Нового ПК

1. Встанови Git.
2. Встанови потрібні версії .NET SDK.
3. Встанови VS Code.
4. Увійди в GitHub і GitHub Copilot, якщо потрібно.
5. Зроби clone `AI-Workspace` repository.
6. Створи або імпортуй VS Code Profiles.
7. Встанови рекомендовані extensions.
8. Відкрий цей workspace з profile `AI Workspace Lab`.
9. Відкрий один project template і запусти build/test checks.
10. Відкрий один реальний project у правильному profile і перевір його tasks та debug configuration.

## Розкладка Репозиторіїв На Диску

Використовуй окремі папки для різних контекстів. Приклад:

- `Work/LizardSoft/` для company repositories.
- `Work/Personal/` для pet projects.
- `Work/AI-Workspace/` для цього repository.

Точна root folder може відрізнятися на різних машинах, тому не hardcode абсолютні шляхи в committed files.

## Стратегія Секретів

Для sensitive values використовуй environment variables, user secrets, secret managers або company-approved tooling.

Для .NET projects за потреби використовуй user secrets для local development:

```powershell
dotnet user-secrets init
dotnet user-secrets set "Some:Setting" "value"
```

Не документуй реальні secret values у цьому repository.

## Перевірка Portability

Setup можна вважати portable, якщо на чистій машині можна:

1. Зробити clone цього repository.
2. Відтворити потрібний VS Code Profile.
3. Встановити рекомендовані extensions.
4. Відкрити workspace.
5. Зібрати й протестувати template project.
6. Використовувати documented prompts і AI rules без ручного повторного пошуку правил.
