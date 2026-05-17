# Code Review Prompt

Зроби code review та зверни увагу на:

## Code quality
- читабельність
- складність
- дублювання
- naming
- методи які роблять забагато
- deep nesting
- magic values

---

## Архітектура
- порушення шарів
- leakage infrastructure logic
- неправильні залежності
- unnecessary abstractions

---

## .NET
- async/await issues
- DI issues
- IDisposable problems
- LINQ performance
- EF Core mistakes
- potential memory leaks

---

## API
- REST consistency
- validation
- status codes
- DTO usage

---

## Формат відповіді

1. Critical issues
2. Improvements
3. Overengineering
4. Performance risks
5. Що зроблено добре