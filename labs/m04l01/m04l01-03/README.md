# m04l01-03 · The module contract

**Lesson:** [Why Modules: Composition Versus Monoliths](https://learnsome.tech/learn/terraform-course/m04l01) (lesson 4.1, module 4: Building A Network Module) · Pro  
**Check:** Read along

## Goal

You can explain module boundaries and choose a useful interface for a reusable network component.

In the lesson: The module contract starts as prose. Name the purpose, list the inputs, and say what the outputs mean. Put that README beside the Terraform files so a caller can understand the boundary without opening every implementation file. The wording matters because an interface is a promise. If the module later changes from a local demonstration to a cloud implementation, the contract should stay recognizable even when the provider resources underneath it change.

## Files

- [`starter/README.md`](starter/README.md): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/README.md` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m04l01-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
