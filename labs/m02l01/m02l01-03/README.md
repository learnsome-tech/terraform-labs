# m02l01-03 · The address is how everything is referred to

**Lesson:** [Writing Your First Configuration In HCL](https://learnsome.tech/learn/terraform-course/m02l01) (lesson 2.1, module 2: Your First Resource) · Pro  
**Check:** Read along

## Goal

You can read and write the four kinds of thing that appear in a Terraform file: blocks, arguments, expressions and comments, and you can refer to one resource from another.

In the lesson: Join the two labels with a dot and you have the address of that resource. You will see this address everywhere: in the plan output, in the state file, in error messages, and in commands that operate on one resource. From the address you can read attributes. Some of them are arguments you wrote yourself, which is occasionally useful. The interesting ones are the attributes you did not write, the ones the provider fills in once the thing exists: an identifier, a hostname, a generated address. Those cannot be known until the resource has actually been created, and the way Terraform handles that not yet knowing is the single most important idea in the next few lessons.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/the-address-is-how-everything-is-referred-to.tf`](starter/the-address-is-how-everything-is-referred-to.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/the-address-is-how-everything-is-referred-to.tf` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m02l01-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
