# m08l04-02 · A reviewable pipeline shape

**Lesson:** [Policy As Code With OPA](https://learnsome.tech/learn/terraform-course/m08l04) (lesson 8.4, module 8: CI CD Testing And Policy) · Pro  
**Check:** Checker

## Goal

You can place OPA policy in a reviewable delivery workflow with clear verification boundaries.

In the lesson: Policy As Code With OPA Policy As Code With OPA second focus. The pipeline shape is a transcript because it runs inside a CI service, so this panel is marked no verify. The order is deliberate. Formatting catches noisy diffs, initialization resolves providers, validation checks configuration, and plan produces a reviewable decision. A real pipeline also authenticates to the backend and provider through short lived credentials, stores logs safely, and restricts apply to a protected branch or an approved deployment job.

## Files

- [`starter/terraform.yml`](starter/terraform.yml): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m08l04/m08l04-02/starter`
2. Read `terraform.yml`.
3. Edit `terraform.yml` and check it: `actionlint terraform.yml`.
4. Check it from the repository root: `./check m08l04-02`.

## How to check

`./check m08l04-02` copies `starter/` into a scratch directory and runs `actionlint terraform.yml` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it checks the GitHub Actions workflow with actionlint (its shellcheck and pyflakes integrations are off, as on the site). The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m08l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
