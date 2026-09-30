# m07l04 · Workspaces For Multiple Environments

Module 7: Remote State And Locking · lesson 7.4 · Pro · [Open the lesson](https://learnsome.tech/learn/terraform-course/m07l04)

**Goal:** You can design a safe workspaces workflow and explain the tradeoffs before adopting it.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m07l04-02](m07l04-02/) | Make the backend choice explicit | Checker |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Write the recovery plan

1. Name the state store and its readers.
2. Describe the lock and backup path.
3. List one value that must be rotated if exposed.

## Check yourself

- What does workspaces protect or coordinate?
- Why is locking separate from storage?
- What can sensitive fail to hide?
- What belongs in a recovery plan?

---

[Course README](../../README.md) · [Infrastructure as Code with Terraform on LearnSome.tech](https://learnsome.tech/courses/terraform-course)
