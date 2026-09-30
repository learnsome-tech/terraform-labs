# m03l04-03 · Refresh the lookup and apply

**Lesson:** [Querying Existing Infrastructure With Data Sources](https://learnsome.tech/learn/terraform-course/m03l04) (lesson 3.4, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Graded

## Goal

You can use a data source to read existing information, distinguish refresh from creation, and feed the result into a local resource safely.

In the lesson: Apply and watch the order. Terraform creates the source file, reads it through the data source, and then writes the copy. The data source is refreshed during the same operation, so the copy receives the current content. On a later plan, Terraform refreshes the read again and compares the result with the copy recorded in state. If somebody changes the source outside Terraform, the next plan can detect that the copy is now different and propose an update. That is a useful boundary: the data source observes external truth, while the copy remains managed by this configuration.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/data.tf`](starter/data.tf)
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l04/m03l04-03/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform init>/dev/null;terraform apply -auto-approve`.
4. Check it from the repository root: `./check m03l04-03`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l04-03 --command=<id>`:
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
 <= read (data resources)

Terraform will perform the following actions:

  # data.local_file.source will be read during apply
  # (depends on a resource or a module with changes pending)
 <= data "local_file" "source" {
      + content              = (known after apply)
      + content_base64       = (known after apply)
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + filename             = "source.txt"
      + id                   = (known after apply)
    }

  # local_file.copy will be created
  + resource "local_file" "copy" {
      + content              = (known after apply)
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "copy.txt"
      + id                   = (known after apply)
    }

  # local_file.source will be created
  + resource "local_file" "source" {
      + content              = "managed elsewhere"
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "source.txt"
      + id                   = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + read_content = (known after apply)
local_file.source: Creating...
local_file.source: Creation complete after 0s [id=a69651e86f93b0ebbc034f22b64520ab35d2c1c3]
data.local_file.source: Reading...
data.local_file.source: Read complete after 0s [id=a69651e86f93b0ebbc034f22b64520ab35d2c1c3]
```

(8 more lines in `expected.txt`.)

## How to check

`./check m03l04-03` copies `starter/` into a scratch directory and runs `terraform init; terraform init>/dev/null;terraform apply -auto-approve` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
