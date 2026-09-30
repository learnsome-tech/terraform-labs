# m01l04-07 · A constraint nothing can satisfy

**Lesson:** [Providers And The required_providers Block](https://learnsome.tech/learn/terraform-course/m01l04) (lesson 1.4, module 1: Core Concepts And Context) · Free  
**Check:** Runs, not graded

## Goal

You can declare the providers a configuration needs, explain the difference between requiring a provider and configuring one, read a version constraint, and say what the dependency lock file is for.

In the lesson: One failure worth seeing on purpose. Ask for a version that cannot possibly exist, and initialise again. Read what comes back, because it is not the error most people expect. Terraform does not go out to the registry at all. It looks at the lock file first, sees that the version recorded there does not satisfy the new constraint, and stops, telling you to initialise with the upgrade flag if you really meant it. That is the lock file doing its job: refusing to move you onto a different version quietly. Two habits follow. When a colleague says that initialising is failing, ask which constraint they changed. And when something fails in your pipeline but not on your laptop, remember that your laptop has a lock file and a cache, and the pipeline started from nothing.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-07/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform init`.
4. Check it from the repository root: `./check m01l04-07`.

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/local from the dependency lock file
╷
│ Error: Failed to query available provider packages
│
│ Could not retrieve the list of available versions for provider
│ hashicorp/local: locked provider registry.terraform.io/hashicorp/local
│ 2.9.1 does not match configured version constraint ~> 99.0; must use
│ terraform init -upgrade to allow selection of new versions
│
│ To see which modules are currently depending on hashicorp/local and what
│ versions are specified, run the following command:
│     terraform providers
╵
```

## How to check

`./check m01l04-07` copies `starter/` into a scratch directory and runs `terraform init; terraform init` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
