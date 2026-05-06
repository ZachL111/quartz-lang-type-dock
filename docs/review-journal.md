# Review Journal

I treated `quartz-lang-type-dock` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its compilers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `IR pressure`, score 122, lane `watch`
- `stress`: `lowering drift`, score 134, lane `watch`
- `edge`: `stack depth`, score 209, lane `ship`
- `recovery`: `diagnostic reach`, score 218, lane `ship`
- `stale`: `IR pressure`, score 181, lane `ship`

## Note

The useful failure mode here is a wrong decision on a named case, not a vague style disagreement.
