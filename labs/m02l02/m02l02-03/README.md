# m02l02-03 · What appeared in the directory

**Lesson:** [Initialising The Working Directory](https://learnsome.tech/learn/terraform-course/m02l02) (lesson 2.2, module 2: Your First Resource) · Pro  
**Check:** Read along

## Goal

You can explain the four jobs the initialise command does, say what is in the hidden directory it creates, and know which flag to reach for when re-initialising is not enough.

In the lesson: List everything, hidden files included, and you will see two new entries beside your configuration. There is a hidden directory, and a lock file. Look inside the hidden directory and you find the downloaded plugins, kept under a path made from the registry host, the namespace, the provider name, the version and your platform. That path is why the same plugin can be shared between projects by a cache, and why two directories can safely use two different versions of the same provider. The hidden directory is disposable: delete it and initialise again and you are back where you were. The lock file beside it is not disposable, and it belongs in git.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m02l02-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
