# m03l02-06 · Sensitive outputs, and the honest warning

**Lesson:** [Return Values: Outputs And Locals](https://learnsome.tech/learn/terraform-course/m03l02) (lesson 3.2, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Read along

## Goal

You can declare outputs and read them from the command line in raw and JSON form, use locals to name an expression once, and explain why a sensitive output is still plain text in state.

In the lesson: An output can be marked sensitive, and then Terraform refuses to print it, showing a placeholder instead. Two consequences follow immediately. Any other output that is built from it must also be marked sensitive, or the plan fails, which is Terraform propagating the taint for you. And the raw flag still prints the real value, because the whole point of that flag is to hand the value to something else, and refusing would make the feature useless. Now the part every course should say out loud and most do not: the value is in the state file in plain text regardless. Sensitive is about the terminal, not about storage.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/outputs.tf`](starter/outputs.tf)
- [`starter/sensitive-outputs-and-the-honest-warning.tf`](starter/sensitive-outputs-and-the-honest-warning.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/sensitive-outputs-and-the-honest-warning.tf` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m03l02-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
