# m04l03-02 · Call the network module

**Lesson:** [Calling Your Module And Passing Variables](https://learnsome.tech/learn/terraform-course/m04l03) (lesson 4.3, module 4: Building A Network Module) · Pro  
**Check:** Read along

## Goal

You can call a child module, pass typed values, and consume its outputs from a root configuration.

In the lesson: The root calls the child with a relative source and passes two variables. The output blocks read through the module namespace, followed by the child output name. Notice what is absent: there is no reference to a null resource, no provider specific identifier, and no knowledge of how the child creates its objects. That is composition. The root describes what it needs, and the child owns how it provides it. In a larger repository, the same call could point at a versioned registry module instead of a local directory.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`starter/modules/network/main.tf`](starter/modules/network/main.tf)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/main.tf` alongside the lesson.

## How to check

**Read along.** The listing does not run cleanly in the lab sandbox (it relies on something the sandbox cannot provide), so the site shows it read-only.

There is nothing to check: `./check m04l03-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
