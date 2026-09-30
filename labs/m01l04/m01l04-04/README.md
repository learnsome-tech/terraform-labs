# m01l04-04 · What the directory knows now

**Lesson:** [Providers And The required_providers Block](https://learnsome.tech/learn/terraform-course/m01l04) (lesson 1.4, module 1: Core Concepts And Context) · Free  
**Check:** Runs, not graded

## Goal

You can declare the providers a configuration needs, explain the difference between requiring a provider and configuring one, read a version constraint, and say what the dependency lock file is for.

In the lesson: Two quick questions you can ask afterwards. Ask which providers this configuration requires, and you get a small tree: the root of the configuration, and under it each provider with the constraint that was written for it. That tree gets genuinely useful later, when modules bring requirements of their own and you need to see whose constraint is whose. And the version command now tells you more than it did: underneath the Terraform version it lists every provider that is actually installed here, with the exact version selected. Those exact numbers are the ones that were chosen for you, and the next screen is about how they are remembered.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   terraform providers
   terraform version
   ```
4. Run it: `terraform init; sh session.sh`.
5. Check it from the repository root: `./check m01l04-04`.

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
Providers required by configuration:
.
├── provider[registry.terraform.io/hashicorp/local] ~> 2.5
└── provider[registry.terraform.io/hashicorp/random] ~> 3.6
Terraform v1.16.0
on darwin_arm64
+ provider registry.terraform.io/hashicorp/local v2.9.1
+ provider registry.terraform.io/hashicorp/random v3.9.0
```

## How to check

`./check m01l04-04` copies `starter/` into a scratch directory and runs `terraform init; sh session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
