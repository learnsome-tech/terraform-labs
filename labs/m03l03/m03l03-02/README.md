# m03l03-02 · Collection and string functions

**Lesson:** [Functions And Expressions In HCL](https://learnsome.tech/learn/terraform-course/m03l03) (lesson 3.3, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Checker

## Goal

You can combine Terraform expressions with collection, string, numeric, and encoding functions to derive predictable resource arguments.

In the lesson: The list of names is ordinary input, and the locals block turns it into three useful values. The for expression transforms every element by trimming spaces and changing case. Join then puts the title cased values into one sentence. Try supplies a fallback when an access fails, so an empty list would produce a safe word instead of an error. Read these from the inside out. First identify the value being passed to a function, then ask what type comes back. Terraform is strongly typed enough to catch many mistakes, but it cannot guess whether a list or a string is what your provider argument needs.

## Files

- [`starter/locals.tf`](starter/locals.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-02/starter`
2. Read `locals.tf` the way the lesson builds it:
   - Lines 1: the list of names
   - Lines 2: the locals block turns it into three useful values
   - Lines 3–18: The list of names is ordinary input
3. Notes from the lesson:
   - Line 8: for expression transforms every element
   - Line 10: try supplies a fallback when an access fails
4. Edit `locals.tf` and check it: `terraform init; terraform validate`.
5. Check it from the repository root: `./check m03l03-02`.

## How to check

`./check m03l03-02` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
