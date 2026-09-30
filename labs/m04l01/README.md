# m04l01 · Why Modules: Composition Versus Monoliths

Module 4: Building A Network Module · lesson 4.1 · Pro · [Open the lesson](https://learnsome.tech/learn/terraform-course/m04l01)

**Goal:** You can explain module boundaries and choose a useful interface for a reusable network component.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l01-01](m04l01-01/) | A module is a small Terraform program | Read along |
| [m04l01-02](m04l01-02/) | Monoliths leak decisions | Read along |
| [m04l01-03](m04l01-03/) | The module contract | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Choose a boundary

1. Decide which resources belong in a network module. Name two inputs and two outputs. Explain 

## Check yourself

- Why is the root configuration also a module?
- What makes an input part of a useful interface?
- Which resources should share a module boundary?
- Why should provider details stay private?

---

[Course README](../../README.md) · [Infrastructure as Code with Terraform on LearnSome.tech](https://learnsome.tech/courses/terraform-course)
