# m02l02-06 · The flags worth knowing

**Lesson:** [Initialising The Working Directory](https://learnsome.tech/learn/terraform-course/m02l02) (lesson 2.2, module 2: Your First Resource) · Pro  
**Check:** Read along

## Goal

You can explain the four jobs the initialise command does, say what is in the hidden directory it creates, and know which flag to reach for when re-initialising is not enough.

In the lesson: Five flags cover everything you will need. Upgrade is how you deliberately take newer provider versions: it re-resolves the constraints, picks the newest that still satisfies them, and rewrites the lock file, which you then commit as its own reviewable change. Reconfigure and migrate state are the two possible answers when the backend has moved, and the difference between them is whether you want the existing state carried across or not. Backend equals false skips the state connection entirely, which is how a pipeline can validate and test a configuration with no credentials at all. And input equals false turns off every interactive question, because a pipeline that stops to ask something just hangs until it times out.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/the-flags-worth-knowing.txt`](starter/the-flags-worth-knowing.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/the-flags-worth-knowing.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l02-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
