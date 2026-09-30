# m04l02-01 · The network module we can run locally

**Lesson:** [Writing A Custom Network Module](https://learnsome.tech/learn/terraform-course/m04l02) (lesson 4.2, module 4: Building A Network Module) · Pro  
**Check:** Read along

## Goal

You can build a local only network module with variables, resources, and outputs that a caller can compose.

In the lesson: Cloud networks need an account, but module composition does not. Our course artifact uses local and null resources to model a network and its subnets without cost. The shape is the same as a cloud module: variables define the contract, resources implement it, and outputs expose identifiers. Treat the local version as a safe laboratory. The later cloud version is clearly marked and keeps the same interface so you can transfer the design without pretending a laptop created a real network.

## Files

- [`starter/the-network-module-we-can-run-locally.txt`](starter/the-network-module-we-can-run-locally.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/the-network-module-we-can-run-locally.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m04l02-01` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
