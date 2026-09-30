# m03l04-03 · Refresh the lookup and apply

**Lesson:** [Querying Existing Infrastructure With Data Sources](https://learnsome.tech/learn/terraform-course/m03l04) (lesson 3.4, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Runs, not graded

## Goal

You can use a data source to read existing information, distinguish refresh from creation, and feed the result into a local resource safely.

In the lesson: Apply and watch the order. Terraform creates the source file, reads it through the data source, and then writes the copy. The data source is refreshed during the same operation, so the copy receives the current content. On a later plan, Terraform refreshes the read again and compares the result with the copy recorded in state. If somebody changes the source outside Terraform, the next plan can detect that the copy is now different and propose an update. That is a useful boundary: the data source observes external truth, while the copy remains managed by this configuration.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/data.tf`](starter/data.tf)
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l04/m03l04-03/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform init>/dev/null;terraform apply -auto-approve|head -1`.
4. Check it from the repository root: `./check m03l04-03`.

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
╷
│ Error: Terraform encountered problems during initialisation, including problems
│ with the configuration, described below.
│
│ The Terraform configuration must be valid before initialization so that
│ Terraform can determine which modules and providers need to be installed.
│
│
╵
╷
│ Error: Duplicate resource "local_file" configuration
│
│   on main.tf line 1:
│    1: resource "local_file" "source" {
│
│ A local_file resource named "source" was already declared at
│ data.tf:9,1-31. Resource names must be unique per type in each module.
╵
╷
│ Error: Duplicate resource "local_file" configuration
│
│   on main.tf line 1:
│    1: resource "local_file" "source" {
│
│ A local_file resource named "source" was already declared at
│ data.tf:9,1-31. Resource names must be unique per type in each module.
╵
╷
│ Error: Duplicate data "local_file" configuration
│
│   on main.tf line 5:
│    5: data "local_file" "source" {
│
│ A local_file data resource named "source" was already declared at
│ data.tf:13,1-27. Resource names must be unique per type in each module.
╵
╷
│ Error: Duplicate data "local_file" configuration
│
│   on main.tf line 5:
```

(23 more lines.)

## How to check

`./check m03l04-03` copies `starter/` into a scratch directory and runs `terraform init; terraform init>/dev/null;terraform apply -auto-approve|head -1` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
