# m07l01-02 · Make the backend choice explicit

**Lesson:** [The Problem With Local State](https://learnsome.tech/learn/terraform-course/m07l01) (lesson 7.1, module 7: Remote State And Locking) · Pro  
**Check:** Checker

## Goal

You can design a safe local state workflow and explain the tradeoffs before adopting it.

In the lesson: The Problem With Local State The Problem With Local State second focus. This small backend block makes the storage choice explicit. A local backend is useful for a sandbox, but it does not solve collaboration, locking, or recovery for a team. A remote backend moves those concerns to a service with access control and versioned storage. The syntax varies by backend, while the design questions stay stable: who can read state, who can write it, how is a lock acquired, and how do you recover an earlier version after a mistake? Write those answers down beside the configuration.

## Files

- [`starter/backend.tf`](starter/backend.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m07l01/m07l01-02/starter`
2. Read `backend.tf`.
3. Edit `backend.tf` and check it: `terraform init; terraform validate`.
4. Check it from the repository root: `./check m07l01-02`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m07l01-02 --command=<id>`:
   - `validate` (Validate): `terraform validate`
   - `init` (Init): `terraform init`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## How to check

`./check m07l01-02` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m07l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
