# m03l01-09 · Types, sensitivity and the optional modifier

**Lesson:** [Parameterising With Input Variables](https://learnsome.tech/learn/terraform-course/m03l01) (lesson 3.1, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Read along

## Goal

You can declare typed input variables with defaults, descriptions and validation rules, supply values in all five ways, and say which way wins when two of them disagree.

In the lesson: Three more things worth knowing now. Types come in three families: the primitives, the collections, and the structural types, object and tuple, which let you describe a shape precisely. Inside an object type you can mark an attribute optional and give it a default, which is how a module offers a rich settings block without forcing every caller to fill in all of it. Marking a variable sensitive keeps its value out of plan output and out of the console, and I want to be very clear that it does not keep it out of the state file, which is a lesson of its own later. And nullable set to false refuses an explicit null, which is occasionally exactly what you need.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/terraform.tfvars`](starter/terraform.tfvars)
- [`starter/types-sensitivity-and-the-optional-modifier.tf`](starter/types-sensitivity-and-the-optional-modifier.tf): the listing from the lesson
- [`starter/variables.tf`](starter/variables.tf)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/types-sensitivity-and-the-optional-modifier.tf` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m03l01-09` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
