# m01l03-07 · Validate, and read a real Terraform error

**Lesson:** [Installing Terraform And Meeting The CLI](https://learnsome.tech/learn/terraform-course/m01l03) (lesson 1.3, module 1: Core Concepts And Context) · Free  
**Check:** Runs, not graded

## Goal

You can install Terraform, confirm the version you are running, and use the two commands that cost nothing and catch most mistakes: format and validate.

In the lesson: Now the formatted file, and a deliberate mistake: validate it before initialising the directory. Read the error rather than skimming it, because this is the shape every Terraform error takes and you will read hundreds of them. It comes in a drawn box. The first line inside the box is a heading naming the category of problem. Then a paragraph explaining it in ordinary English. Then, very often, the exact command that fixes it, indented on its own line. Terraform's errors are unusually good and almost nobody reads them properly. The complaint here is that the configuration asks for a provider which has not been downloaded, and the suggestion is to run the initialise command, which is exactly what the next lesson does.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-07/starter`
2. Read `main.tf`.
3. Run it: `terraform init; rm -rf .terraform .terraform.lock.hcl; terraform validate`.
4. Check it from the repository root: `./check m01l03-07`.

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
Error: Missing required provider

This configuration requires provider registry.terraform.io/hashicorp/local,
but that provider isn't available. You may be able to install it
automatically by running:
  terraform init
```

## How to check

`./check m01l03-07` copies `starter/` into a scratch directory and runs `terraform init; rm -rf .terraform .terraform.lock.hcl; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
