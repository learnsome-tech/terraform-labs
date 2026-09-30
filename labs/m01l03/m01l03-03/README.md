# m01l03-03 · The command line surface, in one screen

**Lesson:** [Installing Terraform And Meeting The CLI](https://learnsome.tech/learn/terraform-course/m01l03) (lesson 1.3, module 1: Core Concepts And Context) · Free  
**Check:** Read along

## Goal

You can install Terraform, confirm the version you are running, and use the two commands that cost nothing and catch most mistakes: format and validate.

In the lesson: Here is the whole surface you need for now. Six commands. Notice how they divide. Format rewrites your files into the canonical style and never looks at infrastructure. Validate checks that your configuration makes internal sense and never looks at infrastructure either. Plan looks at both but changes nothing. Only apply and destroy alter anything real. One more thing that catches everybody at the start: these commands operate on a directory, not on a file. Terraform reads every file ending in dot t f in the current directory and treats them as one configuration. There is no main file, no entry point, and no import statement between them.

## Files

- [`starter/the-command-line-surface-in-one-screen.txt`](starter/the-command-line-surface-in-one-screen.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/the-command-line-surface-in-one-screen.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m01l03-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
