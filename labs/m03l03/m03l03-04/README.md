# m03l03-04 · Conditionals, maps, and encoding

**Lesson:** [Functions And Expressions In HCL](https://learnsome.tech/learn/terraform-course/m03l03) (lesson 3.3, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Read along

## Goal

You can combine Terraform expressions with collection, string, numeric, and encoding functions to derive predictable resource arguments.

In the lesson: Four more tools cover a surprising amount of real work. A conditional chooses one value from two branches, which is useful for a production size or a development size. Merge combines maps, and a key in the later map wins when both maps use the same name. Json encode turns Terraform values into document text, which is handy for a manifest or a policy file. Format makes stable names from a template and several values. Keep the type of both conditional branches compatible, and remember that map precedence is intentional. These functions are deterministic, so the same inputs always produce the same plan.

## Files

- [`starter/conditionals-maps-and-encoding.tf`](starter/conditionals-maps-and-encoding.tf): the listing from the lesson
- [`starter/locals.tf`](starter/locals.tf)
- [`starter/main.tf`](starter/main.tf)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/conditionals-maps-and-encoding.tf` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m03l03-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
