# m02l01-02 · One resource, read left to right

**Lesson:** [Writing Your First Configuration In HCL](https://learnsome.tech/learn/terraform-course/m02l01) (lesson 2.1, module 2: Your First Resource) · Pro  
**Check:** Checker

## Goal

You can read and write the four kinds of thing that appear in a Terraform file: blocks, arguments, expressions and comments, and you can refer to one resource from another.

In the lesson: Here is the file we will work from. At the top the terraform block again, which you met in the last module. Below it, the resource block, and it takes two labels. The type comes from the provider: the local provider offers a type called local underscore file, and the part before the underscore is how Terraform knows which plugin to ask. The second label is your own name for it, and it only has to be unique among resources of that same type. Inside, two arguments. Which arguments are allowed, which are required, and what each one means is decided entirely by the provider, and the provider's documentation in the registry is the reference you will live in.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-02/starter`
2. Read `main.tf` the way the lesson builds it:
   - Lines 1–10: the terraform block again
   - Lines 11–15: the resource block
3. Notes from the lesson:
   - Line 12: local_file is the type; the provider decides what types exist
   - Line 12: greeting is your name for it, unique within this type
4. Edit `main.tf` and check it: `terraform init; terraform validate`.
5. Check it from the repository root: `./check m02l01-02`.

## How to check

`./check m02l01-02` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
