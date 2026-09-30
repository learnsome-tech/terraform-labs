# m03l01-03 · Using them

**Lesson:** [Parameterising With Input Variables](https://learnsome.tech/learn/terraform-course/m03l01) (lesson 3.1, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Checker

## Goal

You can declare typed input variables with defaults, descriptions and validation rules, supply values in all five ways, and say which way wins when two of them disagree.

In the lesson: Here is the usual header, and then one resource that uses all three variables. You read a variable with the prefix var and a dot, then its name. That works anywhere an expression is allowed: inside a string with the interpolation syntax, as you can see in the file name, or on its own as a plain value. The content here is built with a function that turns an object into JSON text, which saves quoting everything by hand and is a good habit generally. Now the configuration describes any environment of this shape, and the next question is how the caller says which one.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`starter/variables.tf`](starter/variables.tf)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-03/starter`
2. Read `main.tf` the way the lesson builds it:
   - Lines 1: the usual header
   - Lines 2–17: one resource that uses all three
3. Notes from the lesson:
   - Line 13: var. is how you read a variable, everywhere in the configuration
4. Edit `main.tf` and check it: `terraform init; terraform validate`.
5. Check it from the repository root: `./check m03l01-03`.

## How to check

`./check m03l01-03` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
