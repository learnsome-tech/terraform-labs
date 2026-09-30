# m01l04-06 · Reading a version constraint

**Lesson:** [Providers And The required_providers Block](https://learnsome.tech/learn/terraform-course/m01l04) (lesson 1.4, module 1: Core Concepts And Context) · Free  
**Check:** Read along

## Goal

You can declare the providers a configuration needs, explain the difference between requiring a provider and configuring one, read a version constraint, and say what the dependency lock file is for.

In the lesson: Version constraints have their own small grammar and it is worth five minutes now. A bare number means exactly that version. Greater than or equal means that version or anything newer, forever, including the next major release that changes everything. The squiggly arrow, which everybody calls the pessimistic constraint, allows the rightmost part you wrote to increase and nothing further left. So the third line accepts new minor releases but never the next major one, and the fourth line accepts only patch releases. That third form is the one to reach for by default. Remember that the lock file already pins the exact version for reproducibility, so the constraint is about which upgrades you are willing to accept when you ask for them.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/reading-a-version-constraint.tf`](starter/reading-a-version-constraint.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/reading-a-version-constraint.tf` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m01l04-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
