# quartz-lang-type-dock

`quartz-lang-type-dock` is a focused Julia codebase around create a Julia reference implementation for type workflows, centered on state machine modeling, transition tables, and invalid-transition tests. It is meant to be easy to inspect, run, and extend without a hosted service.

## Quartz Lang Type Dock Walkthrough

I would read the project from the outside in: command, fixture, model, then roadmap. That keeps the compilers idea grounded in files that can be checked locally.

## Reason For The Project

This is not a wrapper around a service. It is a self-contained project that shows how the model behaves when demand, capacity, latency, risk, and weight move in different directions.

## Capabilities

- Models source form with deterministic scoring and explicit review decisions.
- Uses fixture data to keep intermediate state changes visible in code review.
- Includes extended examples for bytecode output, including `recovery` and `degraded`.
- Documents evaluation checks tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## How It Is Put Together

The design is intentionally direct: parse or construct a signal, score it, classify it, and verify the expected branch. This makes the repository useful for studying compilers behavior without needing a service or database unless the language project itself is SQL. The Julia project keeps the model in a small module with assertions in a local test script.

## Where Things Live

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Getting It Running

Use a normal shell with Julia available on `PATH`. The verifier is written as a PowerShell script because the portfolio was assembled on Windows.

## Command Examples

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Check The Work

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Data Notes

`baseline` is the first example I would inspect because it lands on the `review` path with a score of 112. The broader file also keeps `degraded` at -47 and `recovery` at 176, which gives the model a useful low-to-high spread.

## Tradeoffs

The examples cover useful edges, not every edge. A larger version would add malformed-input tests, richer reports, and deeper domain parsers.

## Possible Extensions

- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add one more compilers fixture that focuses on a malformed or borderline input.
