# m03l01-08 · Validation stops a bad value before anything is built

**Lesson:** [Parameterising With Input Variables](https://learnsome.tech/learn/terraform-course/m03l01) (lesson 3.1, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Graded

## Goal

You can declare typed input variables with defaults, descriptions and validation rules, supply values in all five ways, and say which way wins when two of them disagree.

In the lesson: Now the validation rule earns its place. Somebody writes the word production, which is not on the list of three allowed values, and plans. The run stops before a single resource is considered, and the message they get is the message you wrote, naming the variable, the value they supplied, and what was expected. Compare that with the alternative, where the wrong word flows through and creates a set of resources with the wrong name. Validation blocks are cheap to write and they are the difference between a mistake that costs a second and a mistake that costs an afternoon.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf)
- [`starter/terraform.tfvars`](starter/terraform.tfvars): the listing from the lesson
- [`starter/variables.tf`](starter/variables.tf)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-08/starter`
2. Read `terraform.tfvars`.
3. Run it: `terraform init; terraform plan 2>&1`.
4. Check it from the repository root: `./check m03l01-08`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l01-08 --command=<id>`:
   - `recorded` (Lesson command): `terraform init; terraform plan 2>&1`
   - `init` (Init): `terraform init`
   - `validate` (Validate): `terraform validate`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## Expected output

```text
Planning failed. Terraform encountered an error while generating this plan.


Error: Invalid value for variable

  on terraform.tfvars line 1:
   1: environment    = "production"
    ├────────────────
    │ var.environment is "production"

The environment must be dev, staging or prod.

This was checked by the validation rule at variables.tf:4,3-13.
```

## How to check

`./check m03l01-08` copies `starter/` into a scratch directory and runs `terraform init; terraform plan 2>&1` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
