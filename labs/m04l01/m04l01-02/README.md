# m04l01-02 · Monoliths leak decisions

**Lesson:** [Why Modules: Composition Versus Monoliths](https://learnsome.tech/learn/terraform-course/m04l01) (lesson 4.1, module 4: Building A Network Module) · Pro  
**Check:** Read along

## Goal

You can explain module boundaries and choose a useful interface for a reusable network component.

In the lesson: A monolith puts every provider detail and every environment choice in one directory. It can work at first, but review becomes slow and reuse becomes copy and paste. A module creates one place to fix a rule and many callers that benefit from the fix. Keep the interface small. An input should represent a decision the caller truly owns, while an output should represent a value the caller genuinely needs.

## Files

- [`starter/monoliths-leak-decisions.txt`](starter/monoliths-leak-decisions.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/monoliths-leak-decisions.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m04l01-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
