# m02l04-06 · What is left behind

**Lesson:** [Tearing It Down With Destroy](https://learnsome.tech/learn/terraform-course/m02l04) (lesson 2.4, module 2: Your First Resource) · Pro  
**Check:** Graded

## Goal

You can preview and run a destroy, explain why destroy is a first class part of the workflow rather than an accident, and name the three ways a team stops the wrong thing being destroyed.

In the lesson: The file is gone. The state file is still there, but it is empty, and asking Terraform to show it says exactly that. This is worth understanding: destroying does not delete your state, it records that nothing exists any more. That is the honest position, because the state is the record and the record now says the environment is empty. Your configuration files are of course untouched, which is the whole point. You can apply again, right now, and get an identical environment back. Try it: the round trip from nothing to something to nothing is the fastest way to build real confidence in the tool.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/terraform.tfstate`](starter/terraform.tfstate)
- [`starter/terraform.tfstate.backup`](starter/terraform.tfstate.backup)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   ls
   terraform show
   ```
4. Run it: `terraform init; sh session.sh`.
5. Check it from the repository root: `./check m02l04-06`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l04-06 --command=<id>`:
   - `recorded` (Recorded session): `terraform init; sh session.sh`
   - `init` (Init): `terraform init`
   - `validate` (Validate): `terraform validate`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## Expected output

```text
main.tf
session.sh
terraform.tfstate
terraform.tfstate.backup
The state file is empty. No resources are represented.
```

## How to check

`./check m02l04-06` copies `starter/` into a scratch directory and runs `terraform init; sh session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
