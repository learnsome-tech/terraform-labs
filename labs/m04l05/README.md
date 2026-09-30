# m04l05 · Versioning And Pinning Modules

Module 4: Building A Network Module · lesson 4.5 · Pro · [Open the lesson](https://learnsome.tech/learn/terraform-course/m04l05)

**Goal:** You can version a module interface, pin a dependency, and plan an upgrade without surprising callers.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l05-01](m04l05-01/) | Version the interface, not just the files | Read along |
| [m04l05-02](m04l05-02/) | Local paths and registry versions | Read along |
| [m04l05-03](m04l05-03/) | Pin a release in the caller | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Plan a breaking change

1. Rename one internal resource without changing outputs. Then propose a second release that re

## Check yourself

- What does a module release promise?
- When is a major version appropriate?
- Why is version invalid for a local path?
- What belongs in a migration note?

---

[Course README](../../README.md) · [Infrastructure as Code with Terraform on LearnSome.tech](https://learnsome.tech/courses/terraform-course)
