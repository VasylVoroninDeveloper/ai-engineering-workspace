# AI Workspace

Цей workspace є центральною бібліотекою для .NET розробки з AI-підтримкою. Тут зберігаються повторно використовувані промпти, інструкції для Copilot та агентів, шаблони проєктів, workflow playbooks і нотатки для поступового покращення робочого середовища.

Цей репозиторій не має бути контейнером для всіх персональних або компанійних проєктів. Реальні проєкти мають жити у власних репозиторіях, а цей workspace варто використовувати як джерело налаштувань, домовленостей і workflow-артефактів.

## Структура

- `01-global-prompts/` - повторно використовувані промпти для огляду архітектури, code review, рефакторингу та інших типових задач.
- `02-copilot-instructions/` - шаблони інструкцій для Copilot у .NET проєктах.
- `03-codex-prompts/` - зарезервована зона для промптів під Codex-style інструменти.
- `04-cursor-rules/` - зарезервована зона для Cursor rules.
- `05-project-templates/` - стартові шаблони для проєктів, готових до AI-assisted workflow.
- `06-agent-playbooks/` - повторно використовувані правила та workflows для AI-агентів.
- `07-notes/` - ідеї, roadmap-нотатки та майбутні покращення.
- `docs/setup/` - документація з налаштування профілів, переносимості та workspace conventions.

## Робоча Модель

Використовуй три шари:

1. VS Code Profiles для перемикання контекстів.
2. Окремі репозиторії проєктів для щоденної розробки.
3. Цей AI workspace для повторно використовуваних prompts, templates і workflow rules.

Рекомендовані профілі:

- `Personal .NET` для pet projects та експериментів.
- `Lizard Soft .NET` для компанійної роботи.
- `AI Workspace Lab` для підтримки prompts, templates і playbooks.

Не змішуй company-specific контекст із персональними проєктами. Так само не перенось персональні експерименти в company repositories без явного рішення.

## Щоденний Workflow

1. Відкрий правильний VS Code Profile для поточного контексту.
2. Відкрий репозиторій проєкту або цей workspace.
3. Перед тим як просити AI-агента змінювати код, переглянь project-level `AGENTS.md` і `.github/copilot-instructions.md`.
4. Використовуй global prompts лише тоді, коли вони підходять до задачі і проєкт не має більш конкретного prompt-а.
5. Перед завершенням роботи запускай релевантні build, test і review checks.

## Старт Нового .NET Проєкту

1. Скопіюй або згенеруй проєкт із `05-project-templates/dotnet-ai-ready-project/`.
2. Перейменуй solution, projects, namespaces і README content.
3. Заповни архітектурну документацію і початковий ADR.
4. Перевір, що build і tests проходять.
5. Перед першою фічею переглянь локальні AI instructions.

## Перенесення На Інший ПК

1. Встанови Git, .NET SDK, VS Code і потрібні зовнішні інструменти.
2. Зроби clone цього репозиторію.
3. Відтвори або імпортуй VS Code Profiles.
4. Встанови рекомендовані extensions.
5. Відкрий потрібний workspace або project repository.
6. Запусти build і test checks для template або project.

Не зберігай у цьому репозиторії secrets, API keys, tokens, machine-specific paths або company credentials.

## Ключові Документи

- `docs/setup/vscode-profiles.md` - стратегія профілів для personal, company і AI workspace контекстів.
- `docs/setup/portability.md` - правила перенесення цього setup на інший ПК.
- `docs/setup/workspace-conventions.md` - правила іменування та організації `.code-workspace` файлів.
- `01-global-prompts/README.md` - індекс reusable prompts.
