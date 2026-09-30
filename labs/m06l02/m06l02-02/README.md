# m06l02-02 · A small state example

**Lesson:** [Simulating A Managed Database](https://learnsome.tech/learn/terraform-course/m06l02) (lesson 6.2, module 6: State, Drift And Databases) · Pro  
**Check:** Checker

## Goal

You can reason about database in Terraform and choose a safe workflow before changing managed infrastructure.

In the lesson: Simulating A Managed Database Simulating A Managed Database second focus. This small example gives the Terraform state something concrete to record. The resource has a trigger and Terraform stores the generated identity after apply. The output reads that identity without exposing the provider implementation. In a real database lesson, the resource would be a managed database with a carefully protected password and a backup policy. The local example keeps the workflow safe while the concepts stay the same: state is the bridge between the last known object and the next plan.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l02/m06l02-02/starter`
2. Read `main.tf`.
3. Edit `main.tf` and check it: `terraform init; terraform validate`.
4. Check it from the repository root: `./check m06l02-02`.

## How to check

`./check m06l02-02` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m06l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
