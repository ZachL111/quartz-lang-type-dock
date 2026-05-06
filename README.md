# quartz-lang-type-dock

`quartz-lang-type-dock` explores compilers with a small Julia codebase and local fixtures. The technical goal is to create a Julia reference implementation for type workflows, centered on state machine modeling, transition tables, and invalid-transition tests.

## Purpose

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how IR pressure and stack depth should influence a review result.

## Quartz Lang Type Dock Review Notes

Start with `diagnostic reach` and `IR pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for IR pressure and lowering drift.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/quartz-lang-type-walkthrough.md` walks through the case spread.
- The Julia code includes a review path for `diagnostic reach` and `IR pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Julia addition stays small enough to inspect in one sitting.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 218, which lands in `ship`. The most cautious case is `baseline` at 122, which lands in `watch`.

## Limits

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
