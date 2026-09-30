# m04l01-01 · A module is a small Terraform program

**Lesson:** [Why Modules: Composition Versus Monoliths](https://learnsome.tech/learn/terraform-course/m04l01) (lesson 4.1, module 4: Building A Network Module) · Pro  
**Check:** Read along

## Goal

You can explain module boundaries and choose a useful interface for a reusable network component.

In the lesson: A module is a directory of Terraform files with an interface. The caller supplies inputs, the module manages its internal resources, and outputs publish the few values a caller may use. The root configuration is also a module, which means the same rules apply at every level. A useful boundary groups things that change together and hides provider details that callers should not repeat. A network is a good first boundary because its subnets and routing rules share a lifecycle.

## Files

- [`starter/a-module-is-a-small-terraform-program.txt`](starter/a-module-is-a-small-terraform-program.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/a-module-is-a-small-terraform-program.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m04l01-01` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
