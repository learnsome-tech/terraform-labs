# m03l02-07 · Locals are not variables: this is refused

**Lesson:** [Return Values: Outputs And Locals](https://learnsome.tech/learn/terraform-course/m03l02) (lesson 3.2, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Graded

## Goal

You can declare outputs and read them from the command line in raw and JSON form, use locals to name an expression once, and explain why a sensitive output is still plain text in state.

In the lesson: One error worth meeting on purpose. Define a local with the same name as something that already exists in this configuration and Terraform refuses, telling you the name is taken and where the other one is. This is worth seeing because the mistake underneath it is a real one: people reach for a local when they mean a variable, or the other way round. The test is simple. If somebody outside this configuration should be able to choose the value, it is a variable. If it is derived from other values and nobody outside has any business setting it, it is a local.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/extra.tf`](starter/extra.tf): the listing from the lesson
- [`starter/main.tf`](starter/main.tf)
- [`starter/outputs.tf`](starter/outputs.tf)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-07/starter`
2. Read `extra.tf`.
3. Run it: `terraform init; terraform plan -var environment=dev 2>&1|head -1`.
4. Check it from the repository root: `./check m03l02-07`.

## Expected output

```text
var.instance_count
```

## How to check

`./check m03l02-07` copies `starter/` into a scratch directory and runs `terraform init; terraform plan -var environment=dev 2>&1|head -1` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
