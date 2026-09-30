# m01l04-02 · Declaring what this configuration needs

**Lesson:** [Providers And The required_providers Block](https://learnsome.tech/learn/terraform-course/m01l04) (lesson 1.4, module 1: Core Concepts And Context) · Free  
**Check:** Checker

## Goal

You can declare the providers a configuration needs, explain the difference between requiring a provider and configuring one, read a version constraint, and say what the dependency lock file is for.

In the lesson: Every configuration says which providers it needs, inside the terraform block, in a block called required providers. Look closely at the first entry, because two different things are going on in three lines. The name on the left is the local name. It is the word you will type in front of an underscore in a resource type, and the word you use if you write a provider block later. The source address is the real identity of the plugin: a namespace, then a name, in the public registry. They usually match, and when they do not, it is the source address that decides what gets downloaded. Underneath it, a second provider, declared the same way, because a configuration may use as many as it needs.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-02/starter`
2. Read `main.tf` the way the lesson builds it:
   - Lines 1–9: the first entry
   - Lines 10–15: a second provider
3. Notes from the lesson:
   - Line 5: the local name: what you type in resource types and provider blocks
   - Line 6: the source address: namespace and name in the registry
4. Edit `main.tf` and check it: `terraform init; terraform validate`.
5. Check it from the repository root: `./check m01l04-02`.

## How to check

`./check m01l04-02` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
