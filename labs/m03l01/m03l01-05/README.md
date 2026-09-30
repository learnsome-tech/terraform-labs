# m03l01-05 · The file everybody actually uses

**Lesson:** [Parameterising With Input Variables](https://learnsome.tech/learn/terraform-course/m03l01) (lesson 3.1, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Runs, not graded

## Goal

You can declare typed input variables with defaults, descriptions and validation rules, supply values in all five ways, and say which way wins when two of them disagree.

In the lesson: Create a file called terraform dot t f vars. It is loaded without being asked for, every time, and it holds ordinary name equals value assignments with no blocks and no types. Plan again with no flags at all and the values come from that file. This is how a real project supplies values, and notice that it is a file, so it is reviewed and versioned like everything else. One warning that costs people dearly: if any of these values are secret, this file is the wrong place for them, because it is committed. Secrets come from the environment or from a secret manager, and we return to that in the module on state.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf)
- [`starter/terraform.tfvars`](starter/terraform.tfvars): the listing from the lesson
- [`starter/variables.tf`](starter/variables.tf)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-05/starter`
2. Read `terraform.tfvars`.
3. Run it: `terraform init; terraform plan|head -1`.
4. Check it from the repository root: `./check m03l01-05`.

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
╷
│ Error: Inconsistent dependency lock file
│
│ The following dependency selections recorded in the lock file are
│ inconsistent with the current configuration:
│   - provider registry.terraform.io/hashicorp/local: required by this configuration but no version is selected
│
│ To make the initial dependency selections that will initialize the
│ dependency lock file, run:
│   terraform init
╵
```

## How to check

`./check m03l01-05` copies `starter/` into a scratch directory and runs `terraform init; terraform plan|head -1` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
