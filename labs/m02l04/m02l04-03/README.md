# m02l04-03 · Confirm there is something to destroy

**Lesson:** [Tearing It Down With Destroy](https://learnsome.tech/learn/terraform-course/m02l04) (lesson 2.4, module 2: Your First Resource) · Pro  
**Check:** Graded

## Goal

You can preview and run a destroy, explain why destroy is a first class part of the workflow rather than an accident, and name the three ways a team stops the wrong thing being destroyed.

In the lesson: Two quick confirmations before we take it away. The file exists, with the content the configuration asked for. And the state agrees: listing what is in state gives one address, the same address you wrote in the file. Those two facts together are what destroy works from. It does not go hunting your disk for files that look like they might have come from Terraform; it reads the state, finds the resources recorded there, and removes exactly those. Anything you made by hand is invisible to it, which is a safety property and occasionally an annoyance.

## Files

- [`starter/hello.txt`](starter/hello.txt)
- [`starter/main.tf`](starter/main.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/terraform.tfstate`](starter/terraform.tfstate)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   cat hello.txt
   terraform state list
   ```
4. Run it: `terraform init; sh session.sh`.
5. Check it from the repository root: `./check m02l04-03`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l04-03 --command=<id>`:
   - `recorded` (Recorded session): `terraform init; sh session.sh`
   - `init` (Init): `terraform init`
   - `validate` (Validate): `terraform validate`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## Expected output

```text
Hello from Terraform
local_file.greeting
```

## How to check

`./check m02l04-03` copies `starter/` into a scratch directory and runs `terraform init; sh session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
