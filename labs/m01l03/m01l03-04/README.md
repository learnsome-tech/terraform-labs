# m01l03-04 · A deliberately untidy configuration

**Lesson:** [Installing Terraform And Meeting The CLI](https://learnsome.tech/learn/terraform-course/m01l03) (lesson 1.3, module 1: Core Concepts And Context) · Free  
**Check:** Checker

## Goal

You can install Terraform, confirm the version you are running, and use the two commands that cost nothing and catch most mistakes: format and validate.

In the lesson: Type this into a file called main dot t f in an empty directory. The terraform block at the top is configuration about Terraform itself rather than about infrastructure. It does two jobs here. It pins the version, so that an older command line refuses to run this rather than failing halfway through in a confusing way. And it declares which providers this configuration needs, which is the subject of the next lesson. Below that is one resource, a local file, which writes a file onto your own disk. The indentation is deliberately inconsistent, because the next command is the one that fixes it.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-04/starter`
2. Read `main.tf` the way the lesson builds it:
   - Lines 1–9: the terraform block
   - Lines 10–14: one resource
3. Notes from the lesson:
   - Line 2: refuse to run at all on an older CLI than this
4. Edit `main.tf` and check it: `terraform init; terraform validate`.
5. Check it from the repository root: `./check m01l03-04`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m01l03-04 --command=<id>`:
   - `validate` (Validate): `terraform validate`
   - `init` (Init): `terraform init`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## How to check

`./check m01l03-04` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
