# m01l04-05 · The lock file records exactly what was chosen

**Lesson:** [Providers And The required_providers Block](https://learnsome.tech/learn/terraform-course/m01l04) (lesson 1.4, module 1: Core Concepts And Context) · Free  
**Check:** Runs, not graded

## Goal

You can declare the providers a configuration needs, explain the difference between requiring a provider and configuring one, read a version constraint, and say what the dependency lock file is for.

In the lesson: Initialising wrote a file called dot terraform dot lock dot h c l, and here are the first few lines of it. For each provider it records three things: the exact version that was selected, the constraint it was selected under, and a set of checksums for the packages. Commit this file. It is the difference between everybody on the team getting the same plugin and everybody getting whatever was newest on the day they first initialised. The checksums also mean that a plugin which has been tampered with in transit will be rejected rather than run. When you deliberately want newer versions, you ask for them, with the upgrade flag on the initialise command.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-05/starter`
2. Read `main.tf`.
3. Run it: `terraform init; sed -n '1,12p' .terraform.lock.hcl`.
4. Check it from the repository root: `./check m01l04-05`.

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
# This file is maintained automatically by "terraform init".
# Manual edits may be lost in future updates.

provider "registry.terraform.io/hashicorp/local" {
  version     = "2.9.1"
  constraints = "~> 2.5"
  hashes = [
    "h1:OZGJN0LSSat5QIxZPxDXtVr4XpHb2oG7cVKJhSqBFIE=",
    "zh:25606c7a5e308144fb627f6e31611bb52ff72bb9ae2d27af39673ab1a6b3c1bf",
    "zh:2568c4ef4dab31821f6f7040af0d1a2aa2b9455b8d9cc546598b791b8ada34cd",
    "zh:25ac210f136042047975896e5e11fe6012425301c826d6b7ce22a49f96a1e0e8",
    "zh:55d3a7bf01eced8e1f259b548020ef1221c5687e0fe6b5b30f81ad0b4121ff12",
```

## How to check

`./check m01l04-05` copies `starter/` into a scratch directory and runs `terraform init; sed -n '1,12p' .terraform.lock.hcl` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
