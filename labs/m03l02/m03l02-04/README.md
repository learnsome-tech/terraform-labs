# m03l02-04 · Apply, and see the outputs

**Lesson:** [Return Values: Outputs And Locals](https://learnsome.tech/learn/terraform-course/m03l02) (lesson 3.2, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Runs, not graded

## Goal

You can declare outputs and read them from the command line in raw and JSON form, use locals to name an expression once, and explain why a sensitive output is still plain text in state.

In the lesson: Here is the whole configuration in one file, which you would normally split across three, and I have put the variables inline to keep it on one screen. Apply it and read the bottom. After the summary line, Terraform prints every output with its value. That block is the part a human reads. Notice that the list of machine names was computed by the for expression in the locals block, which counted from zero, added one, and formatted each number with a leading zero. None of that logic is written twice, because it has a name.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`starter/outputs.tf`](starter/outputs.tf)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-04/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform init>/dev/null;terraform apply -auto-approve|head -1`.
4. Check it from the repository root: `./check m03l02-04`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l02-04 --command=<id>`:
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
var.environment
╷
│ Error: Failed to query available provider packages
│
│ Could not retrieve the list of available versions for provider
│ hashicorp/local: could not connect to registry.terraform.io: failed to
│ request discovery document: GET
│ https://registry.terraform.io/.well-known/terraform.json giving up after 4
│ attempt(s): Get "https://registry.terraform.io/.well-known/terraform.json":
│ dial tcp: lookup registry.terraform.io: no such host
│
│ To see which modules are currently depending on hashicorp/local and what
│ versions are specified, run the following command:
│     terraform providers
╵
╷
│ Error: No value for required variable
│
│   on main.tf line 1:
│    1: variable "environment" { type = string }
│
│ The root module input variable "environment" is not set, and has no default
│ value. Use a -var or -var-file command line argument to provide a value for
│ this variable.
╵
╷
│ Error: No value for required variable
│
│   on main.tf line 2:
│    2: variable "instance_count" { type = number }
│
│ The root module input variable "instance_count" is not set, and has no
│ default value. Use a -var or -var-file command line argument to provide a
│ value for this variable.
╵
```

## How to check

`./check m03l02-04` copies `starter/` into a scratch directory and runs `terraform init; terraform init>/dev/null;terraform apply -auto-approve|head -1` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: the recorded output depends on the machine it ran on, so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
