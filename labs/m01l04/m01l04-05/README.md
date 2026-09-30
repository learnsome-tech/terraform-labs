# m01l04-05 · The lock file records exactly what was chosen

**Lesson:** [Providers And The required_providers Block](https://learnsome.tech/learn/terraform-course/m01l04) (lesson 1.4, module 1: Core Concepts And Context) · Free  
**Check:** Graded

## Goal

You can declare the providers a configuration needs, explain the difference between requiring a provider and configuring one, read a version constraint, and say what the dependency lock file is for.

In the lesson: Initialising wrote a file called dot terraform dot lock dot h c l, and here are the first few lines of it. For each provider it records three things: the exact version that was selected, the constraint it was selected under, and a set of checksums for the packages. Commit this file. It is the difference between everybody on the team getting the same plugin and everybody getting whatever was newest on the day they first initialised. The checksums also mean that a plugin which has been tampered with in transit will be rejected rather than run. When you deliberately want newer versions, you ask for them, with the upgrade flag on the initialise command.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-05/starter`
2. Read `main.tf`.
3. Run it: `terraform init; sed -n '1,12p' .terraform.lock.hcl`.
4. Check it from the repository root: `./check m01l04-05`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m01l04-05 --command=<id>`:
   - `recorded` (Lesson command): `terraform init; sed -n '1,12p' .terraform.lock.hcl`
   - `init` (Init): `terraform init`
   - `validate` (Validate): `terraform validate`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## Expected output

```text
# This file is maintained automatically by "terraform init".
# Manual edits may be lost in future updates.

provider "registry.terraform.io/hashicorp/local" {
  version     = "2.9.1"
  constraints = "~> 2.5"
  hashes = [
    "h1:qGLHCuYSus+uHNnoEL4SuJqOs5yrNOcB7gnuHoVqizo=",
  ]
}

provider "registry.terraform.io/hashicorp/random" {
```

## How to check

`./check m01l04-05` copies `starter/` into a scratch directory and runs `terraform init; sed -n '1,12p' .terraform.lock.hcl` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
