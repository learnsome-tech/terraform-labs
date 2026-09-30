# m03l01-06 · Five sources, and which one wins

**Lesson:** [Parameterising With Input Variables](https://learnsome.tech/learn/terraform-course/m03l01) (lesson 3.1, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Read along

## Goal

You can declare typed input variables with defaults, descriptions and validation rules, supply values in all five ways, and say which way wins when two of them disagree.

In the lesson: There are six places a value can come from, and when two disagree the one further down this list wins. The default is the weakest. Then an environment variable whose name is T F underscore V A R underscore and the variable name, which is how a pipeline injects a secret without putting it in a file. Then the tfvars file that is loaded automatically. Then any file whose name ends in auto dot tfvars, in alphabetical order. Then files you name explicitly with the var file flag. Then the var flag itself, which beats everything. And if there is no value anywhere and no default, an interactive run stops and asks, while a pipeline with input turned off fails, which is what you want.

## Files

- [`starter/five-sources-and-which-one-wins.txt`](starter/five-sources-and-which-one-wins.txt): the listing from the lesson
- [`starter/main.tf`](starter/main.tf)
- [`starter/terraform.tfvars`](starter/terraform.tfvars)
- [`starter/variables.tf`](starter/variables.tf)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/five-sources-and-which-one-wins.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m03l01-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
