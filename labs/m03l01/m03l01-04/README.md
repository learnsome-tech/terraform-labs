# m03l01-04 · Supplying a value on the command line

**Lesson:** [Parameterising With Input Variables](https://learnsome.tech/learn/terraform-course/m03l01) (lesson 3.1, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Runs, not graded

## Goal

You can declare typed input variables with defaults, descriptions and validation rules, supply values in all five ways, and say which way wins when two of them disagree.

In the lesson: Pass it on the command line with the var flag. The plan comes back with the file name resolved: the variable was substituted before anything else happened. This is the most direct way to supply a value and the least useful in practice, because a long command line is not version controlled and nobody remembers it tomorrow. It is genuinely handy for one experiment, and it is what the documentation always shows, which is why beginners think it is the normal route. It is not. The normal route is a file, and that is the next screen.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`starter/variables.tf`](starter/variables.tf)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-04/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform init>/dev/null;terraform plan|head -1`.
4. Check it from the repository root: `./check m03l01-04`.

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
var.environment
╷
│ Error: Failed to query available provider packages
│
│ Could not retrieve the list of available versions for provider
│ hashicorp/local: could not connect to registry.terraform.io: failed to
│ request discovery document: GET
│ https://registry.terraform.io/.well-known/terraform.json giving up after 4
│ attempt(s): Get "https://registry.terraform.io/.well-known/terraform.json":
│ dial tcp: lookup registry.terraform.io: no such host
│
│ To see which modules are currently depending on hashicorp/local and what
│ versions are specified, run the following command:
│     terraform providers
╵
╷
│ Error: No value for required variable
│
│   on variables.tf line 1:
│    1: variable "environment" {
│
│ The root module input variable "environment" is not set, and has no default
│ value. Use a -var or -var-file command line argument to provide a value for
│ this variable.
╵
```

## How to check

`./check m03l01-04` copies `starter/` into a scratch directory and runs `terraform init; terraform init>/dev/null;terraform plan|head -1` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
