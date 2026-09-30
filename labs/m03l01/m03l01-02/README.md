# m03l01-02 · Declaring variables properly

**Lesson:** [Parameterising With Input Variables](https://learnsome.tech/learn/terraform-course/m03l01) (lesson 3.1, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Checker

## Goal

You can declare typed input variables with defaults, descriptions and validation rules, supply values in all five ways, and say which way wins when two of them disagree.

In the lesson: Variables go in a file called variables dot t f by convention, though Terraform does not care. Look at the first one. It has a description, and you should never skip the description: it appears when the tool prompts for a value, and every documentation generator reads it. It has a type, which means a wrong value is rejected with a clear message rather than producing something strange three resources later. And it has a validation block, which is your own rule expressed as a condition and a message. The second declares a number with a default, so the caller may leave it out. The third is a map of strings, defaulting to an empty map, which is the standard way to accept tags.

## Files

- [`starter/variables.tf`](starter/variables.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-02/starter`
2. Read `variables.tf` the way the lesson builds it:
   - Lines 1: the first one
   - Lines 2: the second
   - Lines 3–18: the third
3. Notes from the lesson:
   - Line 2: a description is not decoration: it is printed by terraform and by docs tools
   - Line 5: validation fails the plan, before anything is created
4. Edit `variables.tf` and check it: `terraform init; terraform validate`.
5. Check it from the repository root: `./check m03l01-02`.

## How to check

`./check m03l01-02` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
