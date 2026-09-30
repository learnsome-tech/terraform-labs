# m07l01 · The Problem With Local State

Module 7: Remote State And Locking · lesson 7.1 · Pro · [Open the lesson](https://learnsome.tech/learn/terraform-course/m07l01)

**Goal:** You can design a safe local state workflow and explain the tradeoffs before adopting it.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m07l01-02](m07l01-02/) | Make the backend choice explicit | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Write the recovery plan

1. Name the state store and its readers.
2. Describe the lock and backup path.
3. List one value that must be rotated if exposed.

## Check yourself

- What does local state protect or coordinate?
- Why is locking separate from storage?
- What can sensitive fail to hide?
- What belongs in a recovery plan?

---

[Course README](../../README.md) · [Infrastructure as Code with Terraform on LearnSome.tech](https://learnsome.tech/courses/terraform-course)
