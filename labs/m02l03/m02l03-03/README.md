# m02l03-03 · Every symbol in a plan

**Lesson:** [Predicting Changes, Then Applying Them](https://learnsome.tech/learn/terraform-course/m02l03) (lesson 2.3, module 2: Your First Resource) · Pro  
**Check:** Read along

## Goal

You can read an execution plan line by line, name every change symbol, save a plan to a file and apply exactly that plan, and explain why a plan is a prediction rather than a promise.

In the lesson: Here is the full vocabulary, and it is worth memorising because it is the difference between a safe afternoon and an incident. Plus is create, minus is destroy, and the tilde is an update that happens in place with nothing being recreated. The two symbols joined by a slash mean replacement: the thing cannot be changed as it stands, so it will be torn down and built again. Read which side of the slash comes first. Destroy then create means a gap where the resource does not exist. Create then destroy means the new one is stood up before the old one goes away. When a replacement appears against anything holding data, stop and find out which attribute forced it.

## Files

- [`starter/every-symbol-in-a-plan.txt`](starter/every-symbol-in-a-plan.txt): the listing from the lesson
- [`starter/main.tf`](starter/main.tf)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/every-symbol-in-a-plan.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l03-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
