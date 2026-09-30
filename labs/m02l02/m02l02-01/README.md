# m02l02-01 · Four jobs, one command

**Lesson:** [Initialising The Working Directory](https://learnsome.tech/learn/terraform-course/m02l02) (lesson 2.2, module 2: Your First Resource) · Pro  
**Check:** Read along

## Goal

You can explain the four jobs the initialise command does, say what is in the hidden directory it creates, and know which flag to reach for when re-initialising is not enough.

In the lesson: The initialise command does four separate jobs, and knowing which one failed is most of debugging it. It resolves your provider requirements and downloads the plugins. It fetches any modules your configuration calls, from disk or from a registry or from git. It works out where the state for this configuration lives and connects to it. And it prepares the working directory itself. Two things follow. This command is safe: it reads your configuration and it writes into a hidden directory, and it never creates or changes infrastructure. And it is not optional. A freshly cloned repository has none of those four things in place, which is why the first command anybody runs is always this one.

## Files

- [`starter/four-jobs-one-command.txt`](starter/four-jobs-one-command.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/four-jobs-one-command.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l02-01` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
