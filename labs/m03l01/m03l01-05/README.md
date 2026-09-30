# m03l01-05 · The file everybody actually uses

**Lesson:** [Parameterising With Input Variables](https://learnsome.tech/learn/terraform-course/m03l01) (lesson 3.1, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Graded

## Goal

You can declare typed input variables with defaults, descriptions and validation rules, supply values in all five ways, and say which way wins when two of them disagree.

In the lesson: Create a file called terraform dot t f vars. It is loaded without being asked for, every time, and it holds ordinary name equals value assignments with no blocks and no types. Plan again with no flags at all and the values come from that file. This is how a real project supplies values, and notice that it is a file, so it is reviewed and versioned like everything else. One warning that costs people dearly: if any of these values are secret, this file is the wrong place for them, because it is committed. Secrets come from the environment or from a secret manager, and we return to that in the module on state.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf)
- [`starter/terraform.tfvars`](starter/terraform.tfvars): the listing from the lesson
- [`starter/variables.tf`](starter/variables.tf)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-05/starter`
2. Read `terraform.tfvars`.
3. Run it: `terraform init; terraform plan`.
4. Check it from the repository root: `./check m03l01-05`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l01-05 --command=<id>`:
   - `recorded` (Lesson command): `terraform init; terraform plan`
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
              + environment = "staging"
              + machines    = 4
              + tags        = {
                  + Owner = "platform"
                  + Team  = "orders"
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
```

## How to check

`./check m03l01-05` copies `starter/` into a scratch directory and runs `terraform init; terraform plan` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
