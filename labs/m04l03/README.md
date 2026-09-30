# m04l03 · Calling Your Module And Passing Variables

Module 4: Building A Network Module · lesson 4.3 · Pro · [Open the lesson](https://learnsome.tech/learn/terraform-course/m04l03)

**Goal:** You can call a child module, pass typed values, and consume its outputs from a root configuration.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l03-01](m04l03-01/) | The root module calls the child | Read along |
| [m04l03-02](m04l03-02/) | Call the network module | Read along |
| [m04l03-03](m04l03-03/) | Types make calls safer | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Wire a second caller

1. Create a second module call with a different name and subnet set. Add an output that combine

## Check yourself

- How does a module call identify its child?
- Why can the root read outputs but not child resources?
- Where should environment choices live?
- What does a type check protect at the module boundary?

---

[Course README](../../README.md) · [Infrastructure as Code with Terraform on LearnSome.tech](https://learnsome.tech/courses/terraform-course)
