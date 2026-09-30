# m03l03-03 · Evaluate the expressions

**Lesson:** [Functions And Expressions In HCL](https://learnsome.tech/learn/terraform-course/m03l03) (lesson 3.3, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Graded

## Goal

You can combine Terraform expressions with collection, string, numeric, and encoding functions to derive predictable resource arguments.

In the lesson: Run the expressions by applying this small configuration. The provider receives one plain string, even though the value was built from a list, a loop, two string functions, and a join. That is the practical role of expressions: keep the configuration readable while producing the exact primitive shape a resource needs. The local file is useful here because it has no cloud account, and its content is visible on your own disk. When you change the input list and plan again, Terraform compares the new expression result with the recorded value and proposes the smallest change needed to make the file agree.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/locals.tf`](starter/locals.tf)
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-03/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform init>/dev/null;terraform apply -auto-approve`.
4. Check it from the repository root: `./check m03l03-03`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l03-03 --command=<id>`:
   - `recorded` (Lesson command): `terraform init; terraform init>/dev/null;terraform apply -auto-approve`
   - `init` (Init): `terraform init`
   - `validate` (Validate): `terraform validate`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## Expected output

```text
Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # local_file.summary will be created
  + resource "local_file" "summary" {
      + content              = "Ada, Linus, Grace"
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "summary.txt"
      + id                   = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + first_name = "ada"
  + headline   = "Ada, Linus, Grace"
local_file.summary: Creating...
local_file.summary: Creation complete after 0s [id=12d55a1f56665653f0b22bf5655bdc2b6e146ba1]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

first_name = "ada"
headline = "Ada, Linus, Grace"
```

## How to check

`./check m03l03-03` copies `starter/` into a scratch directory and runs `terraform init; terraform init>/dev/null;terraform apply -auto-approve` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
