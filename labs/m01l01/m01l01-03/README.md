# m01l01-03 · What that looks like on the page

**Lesson:** [What Is Infrastructure As Code?](https://learnsome.tech/learn/terraform-course/m01l01) (lesson 1.1, module 1: Core Concepts And Context) · Free  
**Check:** Read along

## Goal

You can explain what infrastructure as code is, say what a declarative tool does that a script does not, and name what Terraform is for and what it is not for.

In the lesson: Here is a real example, so the idea stops being abstract. The first block asks for a network with a particular address range and a name tag. Read it out loud and it says what it is: the word resource, then the type of thing you want, then a name you are giving it so you can refer to it later. Three parts, always in that order. The second block asks for a subnet inside that network. Look at the line where the subnet reaches into the network for its identifier. You did not look that identifier up and paste it in, because it does not exist yet. You referred to the other block, and that reference is what tells the tool which one has to be built first. This is the whole language in miniature.

## Files

- [`starter/network.tf`](starter/network.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/network.tf` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1–7: the first block
   - Lines 8–13: the second block
3. Notes from the lesson:
   - Line 1: resource, then the type, then a name you choose
   - Line 10: this reference is what creates the dependency between them

## How to check

**Read along.** Its Terraform configuration uses the `aws` provider, which needs a real cloud account. The lab sandbox has only the local, null and random providers.

There is nothing to check: `./check m01l01-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
