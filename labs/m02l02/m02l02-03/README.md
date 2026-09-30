# m02l02-03 · What appeared in the directory

**Lesson:** [Initialising The Working Directory](https://learnsome.tech/learn/terraform-course/m02l02) (lesson 2.2, module 2: Your First Resource) · Pro  
**Check:** Graded

## Goal

You can explain the four jobs the initialise command does, say what is in the hidden directory it creates, and know which flag to reach for when re-initialising is not enough.

In the lesson: List everything, hidden files included, and you will see two new entries beside your configuration. There is a hidden directory, and a lock file. Look inside the hidden directory and you find the downloaded plugins, kept under a path made from the registry host, the namespace, the provider name, the version and your platform. That path is why the same plugin can be shared between projects by a cache, and why two directories can safely use two different versions of the same provider. The hidden directory is disposable: delete it and initialise again and you are back where you were. The lock file beside it is not disposable, and it belongs in git.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   ls -a
   ls .terraform
   ```
4. Run it: `terraform init; sh session.sh`.
5. Check it from the repository root: `./check m02l02-03`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l02-03 --command=<id>`:
   - `recorded` (Recorded session): `terraform init; sh session.sh`
   - `init` (Init): `terraform init`
   - `validate` (Validate): `terraform validate`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## Expected output

```text
.
..
.terraform
.terraform.lock.hcl
main.tf
session.sh
providers
```

## How to check

`./check m02l02-03` copies `starter/` into a scratch directory and runs `terraform init; sh session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
