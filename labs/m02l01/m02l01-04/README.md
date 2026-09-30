# m02l01-04 · One resource referring to another

**Lesson:** [Writing Your First Configuration In HCL](https://learnsome.tech/learn/terraform-course/m02l01) (lesson 2.1, module 2: Your First Resource) · Pro  
**Check:** Checker

## Goal

You can read and write the four kinds of thing that appear in a Terraform file: blocks, arguments, expressions and comments, and you can refer to one resource from another.

In the lesson: Now add a second resource to the file you already have. The second one writes a receipt, and its content mentions the first file by reading an attribute off its address. Notice how the reference sits inside a string: a dollar sign, a brace, the expression, and a closing brace. That is called interpolation, and it is how you put a computed value into text. Now the important part. Nowhere did you say that the greeting must be created before the receipt. That reference is the dependency. Terraform builds a graph out of every reference in the configuration and derives the order from it, which is why the order of blocks in the file genuinely does not matter.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-04/starter`
2. Read `main.tf` the way the lesson builds it:
   - Lines 1–15: the file you already have
   - Lines 16–20: a second resource
3. Notes from the lesson:
   - Line 19: a reference inside a string: dollar sign, brace, expression, brace
   - Line 19: this reference is the dependency; you never write the order
4. Edit `main.tf` and check it: `terraform init; terraform validate`.
5. Check it from the repository root: `./check m02l01-04`.

## How to check

`./check m02l01-04` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
