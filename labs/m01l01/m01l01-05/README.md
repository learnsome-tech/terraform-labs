# m01l01-05 · The loop this course teaches

**Lesson:** [What Is Infrastructure As Code?](https://learnsome.tech/learn/terraform-course/m01l01) (lesson 1.1, module 1: Core Concepts And Context) · Free  
**Check:** Read along

## Goal

You can explain what infrastructure as code is, say what a declarative tool does that a script does not, and name what Terraform is for and what it is not for.

In the lesson: Here is the loop, so you know where the course is going. You write configuration files. You initialise the working directory, which fetches the plugins your configuration needs. You plan, which compares your files with reality and prints the difference without touching anything. You read that plan, because reading it is the job. Then you apply, which is the only command in the list that changes the world. And when you are done with an experiment, you destroy, which removes what you created, so that learning this costs you nothing. Three of these you will type hundreds of times. The habit to build from today is simple: never apply anything you have not read the plan for.

## Files

- [`starter/the-loop-this-course-teaches.txt`](starter/the-loop-this-course-teaches.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/the-loop-this-course-teaches.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m01l01-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
