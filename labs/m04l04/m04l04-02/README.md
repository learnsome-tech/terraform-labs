# m04l04-02 · A registry call is explicit

**Lesson:** [The Terraform Registry And Public Modules](https://learnsome.tech/learn/terraform-course/m04l04) (lesson 4.4, module 4: Building A Network Module) · Pro  
**Check:** Read along

## Goal

You can evaluate a public registry module by source address, documentation, inputs, outputs, and ownership risk.

In the lesson: This is a real registry call, but it is a cloud configuration and cannot run on this machine without an account and a downloaded module tree. The screen is a transcript of the shape, marked no verify in the course materials. Notice the pinned version and the explicit inputs. A production repository should review the module source, lock compatible provider versions, and test the resulting plan before allowing an apply. The registry makes distribution easy; responsibility for the result stays with you.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/main.tf` alongside the lesson.

## How to check

**Read along.** It uses the Terraform module `terraform-aws-modules/vpc/aws` from a registry, and the lab sandbox has no network access to download it.

There is nothing to check: `./check m04l04-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
