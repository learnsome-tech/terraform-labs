# m04l05-03 · Pin a release in the caller

**Lesson:** [Versioning And Pinning Modules](https://learnsome.tech/learn/terraform-course/m04l05) (lesson 4.5, module 4: Building A Network Module) · Pro  
**Check:** Read along

## Goal

You can version a module interface, pin a dependency, and plan an upgrade without surprising callers.

In the lesson: Pinning a local path does not make a version field valid, because version belongs to registry and other package sources. This listing shows the intended registry shape and is marked no verify as a transcript. For a local path, version the module repository with a tag and change the source when you deliberately move to a release. The lesson is to match the pinning mechanism to the source type instead of adding a version field that Terraform cannot interpret.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/main.tf` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m04l05-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
