# m04l05-02 · Local paths and registry versions

**Lesson:** [Versioning And Pinning Modules](https://learnsome.tech/learn/terraform-course/m04l05) (lesson 4.5, module 4: Building A Network Module) · Pro  
**Check:** Read along

## Goal

You can version a module interface, pin a dependency, and plan an upgrade without surprising callers.

In the lesson: A local source is useful while developing a module in the same repository. A registry source is useful when releases need independent ownership and reuse. Move between them deliberately. The caller should keep the same input and output names when possible, so the source change is a packaging decision rather than a redesign. Test the module in its own repository and test the caller after changing the source.

## Files

- [`starter/local-paths-and-registry-versions.txt`](starter/local-paths-and-registry-versions.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/local-paths-and-registry-versions.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m04l05-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
