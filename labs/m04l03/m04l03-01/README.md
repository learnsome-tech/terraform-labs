# m04l03-01 · The root module calls the child

**Lesson:** [Calling Your Module And Passing Variables](https://learnsome.tech/learn/terraform-course/m04l03) (lesson 4.3, module 4: Building A Network Module) · Pro  
**Check:** Read along

## Goal

You can call a child module, pass typed values, and consume its outputs from a root configuration.

In the lesson: A module call is a block named module followed by the local name you choose. The source points at a directory, and the other arguments are inputs declared by the child. Terraform loads the child during initialization and evaluates the call as part of the same dependency graph. The root does not reach into child resources directly. It passes values in and reads declared outputs out. That rule keeps the boundary visible in code review.

## Files

- [`starter/the-root-module-calls-the-child.txt`](starter/the-root-module-calls-the-child.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/the-root-module-calls-the-child.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m04l03-01` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
