# m02l04-07 · Three ways teams stop the wrong destroy

**Lesson:** [Tearing It Down With Destroy](https://learnsome.tech/learn/terraform-course/m02l04) (lesson 2.4, module 2: Your First Resource) · Pro  
**Check:** Read along

## Goal

You can preview and run a destroy, explain why destroy is a first class part of the workflow rather than an accident, and name the three ways a team stops the wrong thing being destroyed.

In the lesson: Three defences, in increasing order of how much they actually help. The lifecycle setting called prevent destroy makes the plan fail outright if anything would remove that resource, which is right for a database and wrong for almost everything else, because it also blocks the replacements you legitimately need. The target flag narrows a command to one resource or module; it is a surgical tool, and using it routinely hides drift rather than fixing it. The defence that works is organisational: nobody holds credentials that can destroy production from a laptop, and the pipeline that can requires a second person to approve. Tools cannot give you that; process can.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/three-ways-teams-stop-the-wrong-destroy.tf`](starter/three-ways-teams-stop-the-wrong-destroy.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/three-ways-teams-stop-the-wrong-destroy.tf` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m02l04-07` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
