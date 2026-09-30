# m04l03-02 · Call the network module

**Lesson:** [Calling Your Module And Passing Variables](https://learnsome.tech/learn/terraform-course/m04l03) (lesson 4.3, module 4: Building A Network Module) · Pro  
**Check:** Checker

## Goal

You can call a child module, pass typed values, and consume its outputs from a root configuration.

In the lesson: The root calls the child with a relative source and passes two variables. The output blocks read through the module namespace, followed by the child output name. Notice what is absent: there is no reference to a null resource, no provider specific identifier, and no knowledge of how the child creates its objects. That is composition. The root describes what it needs, and the child owns how it provides it. In a larger repository, the same call could point at a versioned registry module instead of a local directory.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`starter/modules/network/main.tf`](starter/modules/network/main.tf)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l03/m04l03-02/starter`
2. Read `main.tf`.
3. Edit `main.tf` and check it: `terraform init; terraform validate`.
4. Check it from the repository root: `./check m04l03-02`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m04l03-02 --command=<id>`:
   - `validate` (Validate): `terraform validate`
   - `init` (Init): `terraform init`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## How to check

`./check m04l03-02` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
