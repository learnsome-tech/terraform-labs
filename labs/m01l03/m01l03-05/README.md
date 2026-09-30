# m01l03-05 · Format it, and let the tool own the style

**Lesson:** [Installing Terraform And Meeting The CLI](https://learnsome.tech/learn/terraform-course/m01l03) (lesson 1.3, module 1: Core Concepts And Context) · Free  
**Check:** Graded

## Goal

You can install Terraform, confirm the version you are running, and use the two commands that cost nothing and catch most mistakes: format and validate.

In the lesson: Run the format command. It prints the name of every file it changed, and nothing at all when there was nothing to do, which makes it easy to use in a check on a pull request. What it did was rewrite the file in the canonical style: one indentation rule, and the equals signs in a block lined up with each other. Do not argue with it and do not configure it, because there is nothing to configure. That is the point of having a formatter in the tool rather than in a plugin: the style question is settled for everybody, and the diff in a review shows only what actually changed.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-05/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform fmt`.
4. Check it from the repository root: `./check m01l03-05`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m01l03-05 --command=<id>`:
   - `recorded` (Lesson command): `terraform init; terraform fmt`
   - `init` (Init): `terraform init`
   - `validate` (Validate): `terraform validate`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## Expected output

```text
main.tf
```

## How to check

`./check m01l03-05` copies `starter/` into a scratch directory and runs `terraform init; terraform fmt` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
