# m03l02-04 · Apply, and see the outputs

**Lesson:** [Return Values: Outputs And Locals](https://learnsome.tech/learn/terraform-course/m03l02) (lesson 3.2, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Graded

## Goal

You can declare outputs and read them from the command line in raw and JSON form, use locals to name an expression once, and explain why a sensitive output is still plain text in state.

In the lesson: Here is the whole configuration in one file, which you would normally split across three, and I have put the variables inline to keep it on one screen. Apply it and read the bottom. After the summary line, Terraform prints every output with its value. That block is the part a human reads. Notice that the list of machine names was computed by the for expression in the locals block, which counted from zero, added one, and formatted each number with a leading zero. None of that logic is written twice, because it has a name.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`starter/outputs.tf`](starter/outputs.tf)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-04/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform init>/dev/null;terraform apply -auto-approve`.
4. Check it from the repository root: `./check m03l02-04`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l02-04 --command=<id>`:
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

  # local_file.manifest will be created
  + resource "local_file" "manifest" {
      + content              = jsonencode(
            {
              + machines = [
                  + "staging-orders-0",
                  + "staging-orders-1",
                ]
              + tags     = {
                  + Environment = "staging"
                }
            }
        )
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "staging.json"
      + id                   = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + machine_names = [
      + "staging-orders-0",
      + "staging-orders-1",
    ]
  + manifest_path = "staging.json"
  + summary       = "staging: 2 machines"
local_file.manifest: Creating...
local_file.manifest: Creation complete after 0s [id=f7aa8ae93bf1876f13b37dcff2d96407c1d3ea4f]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

machine_names = [
  "staging-orders-0",
  "staging-orders-1",
]
manifest_path = "staging.json"
summary = "staging: 2 machines"
```

## How to check

`./check m03l02-04` copies `starter/` into a scratch directory and runs `terraform init; terraform init>/dev/null;terraform apply -auto-approve` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
