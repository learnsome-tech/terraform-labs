# m03l01-07 · The environment beats the file, the flag beats both

**Lesson:** [Parameterising With Input Variables](https://learnsome.tech/learn/terraform-course/m03l01) (lesson 3.1, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Graded

## Goal

You can declare typed input variables with defaults, descriptions and validation rules, supply values in all five ways, and say which way wins when two of them disagree.

In the lesson: Watch the precedence rather than trusting the list. Set it in the environment and plan, filtering the output down to the line that names the file, and you get the production name even though the tfvars file says staging. Now add the flag as well, and the flag wins over both. Once you have seen this you can debug the most common confusion in any team using Terraform, which is somebody swearing that they changed a value and nothing happened. Nine times in ten, something further down this list is overriding them, and usually it is an environment variable set in their shell profile months ago.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/terraform.tfvars`](starter/terraform.tfvars)
- [`starter/variables.tf`](starter/variables.tf)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   TF_VAR_environment=prod terraform plan | grep filename
   terraform plan -var environment=dev | grep filename
   ```
4. Run it: `terraform init; sh session.sh`.
5. Check it from the repository root: `./check m03l01-07`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l01-07 --command=<id>`:
   - `recorded` (Recorded session): `terraform init; sh session.sh`
   - `init` (Init): `terraform init`
   - `validate` (Validate): `terraform validate`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## Expected output

```text
      + filename             = "staging.json"
      + filename             = "dev.json"
```

## How to check

`./check m03l01-07` copies `starter/` into a scratch directory and runs `terraform init; sh session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
