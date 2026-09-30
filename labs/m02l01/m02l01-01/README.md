# m02l01-01 · The whole grammar is blocks and arguments

**Lesson:** [Writing Your First Configuration In HCL](https://learnsome.tech/learn/terraform-course/m02l01) (lesson 2.1, module 2: Your First Resource) · Pro  
**Check:** Read along

## Goal

You can read and write the four kinds of thing that appear in a Terraform file: blocks, arguments, expressions and comments, and you can refer to one resource from another.

In the lesson: The configuration language has almost no grammar, and this screen is nearly all of it. There are blocks, and there are arguments. A block starts with its type, then however many labels that type requires, then a pair of braces. Inside the braces are arguments, each one a name, an equals sign, and an expression that produces a value. Blocks can contain other blocks. That is the lot. The one thing to unlearn immediately is order. This is not a script, so the order of blocks in the file means nothing at all, and neither does the order of the files. Terraform reads everything, then works out the order for itself from the references between them.

## Files

- [`starter/the-whole-grammar-is-blocks-and-arguments.tf`](starter/the-whole-grammar-is-blocks-and-arguments.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/the-whole-grammar-is-blocks-and-arguments.tf` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m02l01-01` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
