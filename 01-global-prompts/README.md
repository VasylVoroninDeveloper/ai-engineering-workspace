# Глобальні Промпти

Ця папка містить reusable prompts для повторюваних development tasks. Якщо repository має project-specific prompts, спочатку використовуй їх. Global prompts використовуй для старту нового проєкту, огляду загальної проблеми або bootstrap нового workflow.

## Каталог Промптів

### Architecture Review

Файл: `Architecture/architecture-review.md`

Використовуй коли:

- Потрібно переглянути architecture boundaries.
- Потрібно знайти зайву складність.
- Потрібно перевірити coupling, SOLID issues, scalability risks і maintainability.
- Потрібно вирішити, що не варто змінювати.

Очікуваний результат:

- Загальна оцінка.
- Основні проблеми.
- Хороші existing decisions.
- Рекомендації.
- Що варто залишити без змін.
- Потенційні ризики.

### Code Review

Файл: `CodeReview/code-review.md`

Використовуй коли:

- Потрібно переглянути implementation quality.
- Потрібно перевірити .NET-specific risks.
- Потрібно знайти API, DI, async/await, EF Core або performance issues.
- Потрібно підготувати code перед pull request.

Очікуваний результат:

- Critical issues.
- Improvements.
- Overengineering notes.
- Performance risks.
- Що зроблено добре.

### Refactoring

Файл: `Refactoring/refactoring.md`

Використовуй коли:

- Потрібно спростити code без зміни behavior.
- Потрібно зменшити duplication.
- Потрібно покращити readability і maintainability.
- Потрібно спланувати safe refactor перед редагуванням code.

Очікуваний результат:

- Пояснення проблеми.
- Запропонований підхід.
- Tradeoffs.
- Підсумок того, що стало простішим.
- Ризики, які залишилися.

### Debugging

Папка: `Debugging/`

Використовуй коли:

- Потрібно дослідити failing test, runtime error або unexpected behavior.
- Потрібно попросити AI agent спочатку сформувати hypothesis list перед зміною code.
- Потрібно відокремити symptoms від root causes.

Очікуваний результат:

- Reproduction assumptions.
- Ймовірні причини.
- Evidence to collect.
- Напрям мінімального fix.
- Verification steps.

### Documentation

Папка: `Documentation/`

Використовуй коли:

- Потрібно створити або покращити README files.
- Потрібно написати architecture docs.
- Потрібно задокументувати tradeoffs і decisions.
- Потрібно зробити setup instructions зрозумілішими.

Очікуваний результат:

- Зрозуміла структура.
- Практичні usage instructions.
- Важливі assumptions і constraints.
- Next steps або maintenance notes.

### KQL

Папка: `KQL/`

Використовуй коли:

- Потрібно спроєктувати queries для logs, telemetry, incidents або operational analysis.
- Потрібно переглянути query readability і performance.

Очікуваний результат:

- Query intent.
- Proposed KQL.
- Пояснення filters, joins і aggregations.
- Validation або troubleshooting notes.

### Presentations

Папка: `Presentations/`

Використовуй коли:

- Потрібно підготувати technical talk, architecture walkthrough або team update.
- Потрібно перетворити engineering notes у slides або speaking points.

Очікуваний результат:

- Audience-aware outline.
- Main message.
- Slide structure.
- Speaker notes або talking points.

### Interviews

Папка: `Interviews/`

Використовуй коли:

- Потрібно готуватися до technical interviews.
- Потрібно створити interview questions.
- Потрібно практикувати .NET, architecture або system design topics.

Очікуваний результат:

- Topic list.
- Questions і evaluation criteria.
- Example answers або discussion points.
- Follow-up areas to study.

## Правила Використання

1. Починай із project-specific prompt, якщо він існує.
2. Додавай явний context: goal, files, constraints, risk level і desired output format.
3. Кажи agent, що не можна змінювати, особливо contracts, schemas і public behavior.
4. Проси verification steps, а не лише recommendations.
5. Оновлюй prompt, якщо він дає слабкі або нечіткі результати.
