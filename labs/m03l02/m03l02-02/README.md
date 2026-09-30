# m03l02-02 · Declaring outputs

**Lesson:** [Return Values: Outputs And Locals](https://learnsome.tech/learn/terraform-course/m03l02) (lesson 3.2, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Read along

## Goal

You can declare outputs and read them from the command line in raw and JSON form, use locals to name an expression once, and explain why a sensitive output is still plain text in state.

In the lesson: Outputs live in outputs dot t f by convention. The simplest kind takes an attribute off a resource: here, the name of the file that was written. The second reads a local value, which we come to in a moment. The third builds a sentence out of two variables, because an output does not have to be an attribute of anything; it is any expression at all. Describe every one. When this becomes a module, these descriptions are its published interface, and a module whose outputs have no descriptions is a module nobody else can use without reading its source.

## Files

- [`starter/outputs.tf`](starter/outputs.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/outputs.tf` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1: the simplest kind
   - Lines 2: the second reads a local value
   - Lines 3–12: the third builds a sentence
3. Notes from the lesson:
   - Line 2: descriptions on outputs are how a module documents its interface

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m03l02-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
