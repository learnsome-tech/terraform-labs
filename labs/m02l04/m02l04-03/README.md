# m02l04-03 · Confirm there is something to destroy

**Lesson:** [Tearing It Down With Destroy](https://learnsome.tech/learn/terraform-course/m02l04) (lesson 2.4, module 2: Your First Resource) · Pro  
**Check:** Read along

## Goal

You can preview and run a destroy, explain why destroy is a first class part of the workflow rather than an accident, and name the three ways a team stops the wrong thing being destroyed.

In the lesson: Two quick confirmations before we take it away. The file exists, with the content the configuration asked for. And the state agrees: listing what is in state gives one address, the same address you wrote in the file. Those two facts together are what destroy works from. It does not go hunting your disk for files that look like they might have come from Terraform; it reads the state, finds the resources recorded there, and removes exactly those. Anything you made by hand is invisible to it, which is a safety property and occasionally an annoyance.

## Files

- [`starter/hello.txt`](starter/hello.txt)
- [`starter/main.tf`](starter/main.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/terraform.tfstate`](starter/terraform.tfstate)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m02l04-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
