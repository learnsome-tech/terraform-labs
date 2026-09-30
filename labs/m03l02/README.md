# m03l02 · Return Values: Outputs And Locals

Module 3: Variables, Outputs And Expressions · lesson 3.2 · Pro · [Open the lesson](https://learnsome.tech/learn/terraform-course/m03l02)

**Goal:** You can declare outputs and read them from the command line in raw and JSON form, use locals to name an expression once, and explain why a sensitive output is still plain text in state.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l02-02](m03l02-02/) | Declaring outputs | Checker |
| [m03l02-03](m03l02-03/) | Locals: name an expression once | Read along |
| [m03l02-04](m03l02-04/) | Apply, and see the outputs | Runs, not graded |
| [m03l02-05](m03l02-05/) | Reading outputs from a script | Runs, not graded |
| [m03l02-06](m03l02-06/) | Sensitive outputs, and the honest warning | Read along |
| [m03l02-07](m03l02-07/) | Locals are not variables: this is refused | Graded |

## Check yourself

- What are the three audiences for an output?
- Which flag would you use to put an output into a shell variable, and which to feed a program?
- What is the difference in control between a variable and a local?
- If an output is marked sensitive, where is the value still in plain text?
- Why must an output built from a sensitive value also be marked sensitive?

---

[Course README](../../README.md) · [Infrastructure as Code with Terraform on LearnSome.tech](https://learnsome.tech/courses/terraform-course)
