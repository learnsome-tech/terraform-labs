# m04l02-03 · Keep cloud code clearly separate

**Lesson:** [Writing A Custom Network Module](https://learnsome.tech/learn/terraform-course/m04l02) (lesson 4.2, module 4: Building A Network Module) · Pro  
**Check:** Read along

## Goal

You can build a local only network module with variables, resources, and outputs that a caller can compose.

In the lesson: The real cloud module in the artifact uses a cloud provider and is marked no verify in lesson panels because it needs an account. Its versions file pins the provider and its tests use provider mocking. The local module remains the runnable path for practice. Read the cloud code to learn the real resource shapes, then return to the local module when you want to run init, validate, plan, apply, or destroy on your own machine.

## Files

- [`starter/keep-cloud-code-clearly-separate.txt`](starter/keep-cloud-code-clearly-separate.txt): the listing from the lesson
- [`starter/modules/network/main.tf`](starter/modules/network/main.tf)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/keep-cloud-code-clearly-separate.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m04l02-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
