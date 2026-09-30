# m03l03-03 · Evaluate the expressions

**Lesson:** [Functions And Expressions In HCL](https://learnsome.tech/learn/terraform-course/m03l03) (lesson 3.3, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Runs, not graded

## Goal

You can combine Terraform expressions with collection, string, numeric, and encoding functions to derive predictable resource arguments.

In the lesson: Run the expressions by applying this small configuration. The provider receives one plain string, even though the value was built from a list, a loop, two string functions, and a join. That is the practical role of expressions: keep the configuration readable while producing the exact primitive shape a resource needs. The local file is useful here because it has no cloud account, and its content is visible on your own disk. When you change the input list and plan again, Terraform compares the new expression result with the recorded value and proposes the smallest change needed to make the file agree.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/locals.tf`](starter/locals.tf)
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-03/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform init>/dev/null;terraform apply -auto-approve|head -1`.
4. Check it from the repository root: `./check m03l03-03`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l03-03 --command=<id>`:
   - `recorded` (Lesson command): `terraform init; terraform init>/dev/null;terraform apply -auto-approve|head -1`
   - `init` (Init): `terraform init`
   - `validate` (Validate): `terraform validate`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
╷
│ Error: Terraform encountered problems during initialisation, including problems
│ with the configuration, described below.
│
│ The Terraform configuration must be valid before initialization so that
│ Terraform can determine which modules and providers need to be installed.
│
│
╵
╷
│ Error: Duplicate variable declaration
│
│   on main.tf line 9:
│    9: variable "names" { default = ["Ada", "Linus", "Grace"] }
│
│ A variable named "names" was already declared at locals.tf:1,1-17. Variable
│ names must be unique within a module.
╵
╷
│ Error: Duplicate variable declaration
│
│   on main.tf line 9:
│    9: variable "names" { default = ["Ada", "Linus", "Grace"] }
│
│ A variable named "names" was already declared at locals.tf:1,1-17. Variable
│ names must be unique within a module.
╵
╷
│ Error: Duplicate local value definition
│
│   on main.tf line 11, in locals:
│   11:   normalised = [for name in var.names : lower(trimspace(name))]
│
│ A local value named "normalised" was already defined at locals.tf:7,3-64.
│ Local value names must be unique within a module.
╵
╷
│ Error: Duplicate local value definition
│
│   on main.tf line 11, in locals:
```

(50 more lines.)

## How to check

`./check m03l03-03` copies `starter/` into a scratch directory and runs `terraform init; terraform init>/dev/null;terraform apply -auto-approve|head -1` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: the recorded output depends on the machine it ran on, so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
