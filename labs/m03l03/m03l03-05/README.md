# m03l03-05 · Inspect a value while you work

**Lesson:** [Functions And Expressions In HCL](https://learnsome.tech/learn/terraform-course/m03l03) (lesson 3.3, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Runs, not graded

## Goal

You can combine Terraform expressions with collection, string, numeric, and encoding functions to derive predictable resource arguments.

In the lesson: When an expression is not behaving as you expect, open the console in an initialised directory and evaluate a small value in isolation. It is a scratchpad, so it does not change state. You can test a function, inspect a variable, or copy a complicated expression from a local value. Then read the values as json when you want an exact machine representation, including collection types and nesting. The console is a debugging tool, not a place to hide business logic. Once the expression is clear, put it in a local with a useful name and let the plan show the result.

## Files

- [`starter/locals.tf`](starter/locals.tf)
- [`starter/main.tf`](starter/main.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   terraform console
   terraform output -json
   ```
4. Run it: `terraform init; sh session.sh`.
5. Check it from the repository root: `./check m03l03-05`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l03-05 --command=<id>`:
   - `recorded` (Recorded session): `terraform init; sh session.sh`
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
│   on main.tf line 12, in locals:
│   12:   headline = join(", ", [for name in local.normalised : title(name)])
│
│ A local value named "headline" was already defined at locals.tf:8,3-71.
│ Local value names must be unique within a module.
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
```

(16 more lines.)

## How to check

`./check m03l03-05` copies `starter/` into a scratch directory and runs `terraform init; sh session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: the recorded output depends on the machine it ran on, so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
