# m02l03-01 · A plan is a comparison of three things

**Lesson:** [Predicting Changes, Then Applying Them](https://learnsome.tech/learn/terraform-course/m02l03) (lesson 2.3, module 2: Your First Resource) · Pro  
**Check:** Read along

## Goal

You can read an execution plan line by line, name every change symbol, save a plan to a file and apply exactly that plan, and explain why a plan is a prediction rather than a promise.

In the lesson: Planning compares three things, not two. There is your configuration, which says what should exist. There is the state, which is Terraform's record of what it created last time. And there is reality, which is whatever the provider reports right now. A plan begins by refreshing: it goes and asks about every resource in state, so that it is comparing against the world rather than against its own memory. Then it works out what actions would make reality match your configuration, and prints them. Nothing changes. You can run this on production, in the middle of the afternoon, as often as you like, and the only cost is a few API calls.

## Files

- [`starter/a-plan-is-a-comparison-of-three-things.tf`](starter/a-plan-is-a-comparison-of-three-things.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/a-plan-is-a-comparison-of-three-things.tf` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m02l03-01` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
