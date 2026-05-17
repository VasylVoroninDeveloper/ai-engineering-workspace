# Project Name

## Опис

Короткий опис проекту.

## Архітектура

Опис основних архітектурних рішень.

## Як запустити

```bash
dotnet restore
dotnet build
dotnet test
```
## AI Rules

У проекті використовуються:

`.github/copilot-instructions.md`
AGENTS.md
`.cursor/rules/`
Документація
`docs/architecture/`
`docs/decisions/`
`prompts/`

## 4. `.cursor/rules/dotnet-architecture.mdc`

Встав:

```md
---
description: .NET architecture rules for AI agents
alwaysApply: true
---

# .NET Architecture Rules

- Пиши чистий і читабельний C# код
- Уникай overengineering
- Дотримуйся існуючої архітектури проекту
- Перед великими змінами пояснюй план
- Не роби massive rewrite без потреби
- Бізнес-логіка не повинна бути в контролерах
- Domain не повинен залежати від Infrastructure
- Пиши тести для бізнес-логіки
- Оновлюй README при важливих змінах