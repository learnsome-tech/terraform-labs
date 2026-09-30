# m03l04 · Querying Existing Infrastructure With Data Sources

Module 3: Variables, Outputs And Expressions · lesson 3.4 · Pro · [Open the lesson](https://learnsome.tech/learn/terraform-course/m03l04)

**Goal:** You can use a data source to read existing information, distinguish refresh from creation, and feed the result into a local resource safely.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l04-02](m03l04-02/) | A local data source | Checker |
| [m03l04-03](m03l04-03/) | Refresh the lookup and apply | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Practice the ownership boundary

1. Replace the local file with a data source for a file you create by hand
2. Add an output that reports the file content length
3. Explain which object Terraform owns and which object it only reads

> **Hint:** Use the length function and keep the hand made file outside state. 

## Check yourself

- When should you choose a data source instead of a resource?
- How does a reference create ordering for a data read?
- What does unknown during plan mean?
- Why is depends on usually unnecessary for a data source?
- What should you do when a lookup fails?

---

[Course README](../../README.md) · [Infrastructure as Code with Terraform on LearnSome.tech](https://learnsome.tech/courses/terraform-course)
