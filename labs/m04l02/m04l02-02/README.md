# m04l02-02 · A small network module

**Lesson:** [Writing A Custom Network Module](https://learnsome.tech/learn/terraform-course/m04l02) (lesson 4.2, module 4: Building A Network Module) · Pro  
**Check:** Checker

## Goal

You can build a local only network module with variables, resources, and outputs that a caller can compose.

In the lesson: Start with the contract, then implement the network. The name is a string and the subnet names are a set, so the caller cannot accidentally request the same subnet twice. The network resource records the name. The subnet resource uses the for each meta argument to create one object per name and refers to the network identifier, which gives Terraform an inferred dependency. The outputs return the network identifier and a map of subnet identifiers. This is a complete module even though the provider is local and the objects are safe placeholders.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l02/m04l02-02/starter`
2. Read `main.tf`.
3. Edit `main.tf` and check it: `terraform init; terraform validate`.
4. Check it from the repository root: `./check m04l02-02`.

## How to check

`./check m04l02-02` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
