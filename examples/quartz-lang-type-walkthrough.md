# Quartz Lang Type Dock Walkthrough

This note is the quickest way to read the extra review model in `quartz-lang-type-dock`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | IR pressure | 122 | watch |
| stress | lowering drift | 134 | watch |
| edge | stack depth | 209 | ship |
| recovery | diagnostic reach | 218 | ship |
| stale | IR pressure | 181 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

`recovery` is the optimistic case; use it to make sure the scoring path still rewards strong signal.
