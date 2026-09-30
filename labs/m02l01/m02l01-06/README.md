# m02l01-06 · Strings, comments and the things you will need soon

**Lesson:** [Writing Your First Configuration In HCL](https://learnsome.tech/learn/terraform-course/m02l01) (lesson 2.1, module 2: Your First Resource) · Pro  
**Check:** Read along

## Goal

You can read and write the four kinds of thing that appear in a Terraform file: blocks, arguments, expressions and comments, and you can refer to one resource from another.

In the lesson: A short tour of the rest of what you will type. Comments: the hash to the end of the line is the one to use, and the formatter will rewrite the alternative into it. Strings are double quoted, always; there is no single quoted form, which trips up anybody coming from a shell. For text that runs over several lines there is the heredoc, opened with two less than signs and a marker word, and closed by that word on its own line. Write a dash after the two less than signs and the leading indentation is stripped, which keeps the file tidy. And any string at all can contain an interpolation, which is the dollar sign and braces you have already used.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/strings-comments-and-the-things-you-will-nee.tf`](starter/strings-comments-and-the-things-you-will-nee.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/strings-comments-and-the-things-you-will-nee.tf` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m02l01-06` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
