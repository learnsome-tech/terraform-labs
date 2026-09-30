# m04l03-03 · Types make calls safer

**Lesson:** [Calling Your Module And Passing Variables](https://learnsome.tech/learn/terraform-course/m04l03) (lesson 4.3, module 4: Building A Network Module) · Pro  
**Check:** Read along

## Goal

You can call a child module, pass typed values, and consume its outputs from a root configuration.

In the lesson: Input types are checked at the module boundary. A set of strings is different from a list, and Terraform can report the mismatch before it changes anything. Give variables descriptions and useful defaults only when a default is genuinely safe. Keep environment choices in the root, where the team can see them. Keep resource mechanics in the child, where the module can evolve without forcing every caller to understand it.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/types-make-calls-safer.txt`](starter/types-make-calls-safer.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/types-make-calls-safer.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m04l03-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
