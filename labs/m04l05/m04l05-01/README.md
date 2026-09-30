# m04l05-01 · Version the interface, not just the files

**Lesson:** [Versioning And Pinning Modules](https://learnsome.tech/learn/terraform-course/m04l05) (lesson 4.5, module 4: Building A Network Module) · Pro  
**Check:** Read along

## Goal

You can version a module interface, pin a dependency, and plan an upgrade without surprising callers.

In the lesson: A module release is a promise about inputs, outputs, and behavior. Follow semantic versioning when the team agrees to it: compatible additions can use a minor release, while breaking changes require a major release. Pin callers to a reviewed range or exact release according to the risk. Keep a changelog that says what changed and how a caller should migrate. A version number without a clear interface is decoration.

## Files

- [`starter/version-the-interface-not-just-the-files.txt`](starter/version-the-interface-not-just-the-files.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/version-the-interface-not-just-the-files.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m04l05-01` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
