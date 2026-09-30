# m03l02-03 · Locals: name an expression once

**Lesson:** [Return Values: Outputs And Locals](https://learnsome.tech/learn/terraform-course/m03l02) (lesson 3.2, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Read along

## Goal

You can declare outputs and read them from the command line in raw and JSON form, use locals to name an expression once, and explain why a sensitive output is still plain text in state.

In the lesson: A local value is a name for an expression. You compute something once, give it a name, and use the name everywhere. The difference from a variable is who controls it: a variable is set from outside, and a local is computed inside and cannot be overridden. The three here are the ones you will write in every project. A name prefix, so that renaming an environment is one edit. A derived list, built with a for expression. And a merged map of tags, combining what the caller asked for with what the configuration insists on. Note the spelling trap: the block is plural, and the reference is singular.

## Files

- [`starter/locals-name-an-expression-once.tf`](starter/locals-name-an-expression-once.tf): the listing from the lesson
- [`starter/outputs.tf`](starter/outputs.tf)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/locals-name-an-expression-once.tf` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m03l02-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
