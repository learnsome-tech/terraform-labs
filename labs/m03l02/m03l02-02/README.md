# m03l02-02 · Declaring outputs

**Lesson:** [Return Values: Outputs And Locals](https://learnsome.tech/learn/terraform-course/m03l02) (lesson 3.2, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Checker

## Goal

You can declare outputs and read them from the command line in raw and JSON form, use locals to name an expression once, and explain why a sensitive output is still plain text in state.

In the lesson: Outputs live in outputs dot t f by convention. The simplest kind takes an attribute off a resource: here, the name of the file that was written. The second reads a local value, which we come to in a moment. The third builds a sentence out of two variables, because an output does not have to be an attribute of anything; it is any expression at all. Describe every one. When this becomes a module, these descriptions are its published interface, and a module whose outputs have no descriptions is a module nobody else can use without reading its source.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/outputs.tf`](starter/outputs.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-02/starter`
2. Read `outputs.tf` the way the lesson builds it:
   - Lines 1: the simplest kind
   - Lines 2: the second reads a local value
   - Lines 3–12: the third builds a sentence
3. Notes from the lesson:
   - Line 2: descriptions on outputs are how a module documents its interface
4. Edit `outputs.tf` and check it: `terraform init; terraform validate`.
5. Check it from the repository root: `./check m03l02-02`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l02-02 --command=<id>`:
   - `validate` (Validate): `terraform validate`
   - `init` (Init): `terraform init`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## How to check

`./check m03l02-02` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
