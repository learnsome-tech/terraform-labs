# m06l03-02 · A small state example

**Lesson:** [Detecting And Fixing Configuration Drift](https://learnsome.tech/learn/terraform-course/m06l03) (lesson 6.3, module 6: State, Drift And Databases) · Pro  
**Check:** Checker

## Goal

You can reason about drift in Terraform and choose a safe workflow before changing managed infrastructure.

In the lesson: Detecting And Fixing Configuration Drift Detecting And Fixing Configuration Drift second focus. This small example gives the Terraform state something concrete to record. The resource has a trigger and Terraform stores the generated identity after apply. The output reads that identity without exposing the provider implementation. In a real database lesson, the resource would be a managed database with a carefully protected password and a backup policy. The local example keeps the workflow safe while the concepts stay the same: state is the bridge between the last known object and the next plan.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m06l03/m06l03-02/starter`
2. Read `main.tf`.
3. Edit `main.tf` and check it: `terraform init; terraform validate`.
4. Check it from the repository root: `./check m06l03-02`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m06l03-02 --command=<id>`:
   - `validate` (Validate): `terraform validate`
   - `init` (Init): `terraform init`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## How to check

`./check m06l03-02` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m06l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
