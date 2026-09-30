# m02l03-02 · The first plan: everything is new

**Lesson:** [Predicting Changes, Then Applying Them](https://learnsome.tech/learn/terraform-course/m02l03) (lesson 2.3, module 2: Your First Resource) · Pro  
**Check:** Graded

## Goal

You can read an execution plan line by line, name every change symbol, save a plan to a file and apply exactly that plan, and explain why a plan is a prediction rather than a promise.

In the lesson: Initialise, then plan it. Read the output from the bottom, because the summary line is the thing you check first: one to add, none to change, none to destroy. Now read upwards. Each resource that will change gets a heading with its address and what will happen to it, then the whole resource as Terraform intends it to be, with a plus sign against every attribute being set. Notice the attributes you did not write. The provider knows about permissions and checksums and an identifier, and it has filled in its defaults. Several of them say known after apply, which is Terraform being honest: it cannot know a checksum of a file that does not exist yet.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-02/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform init -input=false >/dev/null && terraform plan`.
4. Check it from the repository root: `./check m02l03-02`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l03-02 --command=<id>`:
   - `recorded` (Lesson command): `terraform init; terraform init -input=false >/dev/null && terraform plan`
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

  # local_file.greeting will be created
  + resource "local_file" "greeting" {
      + content              = <<-EOT
            Hello from Terraform
        EOT
      + content_base64sha256 = (known after apply)
      + content_base64sha512 = (known after apply)
      + content_md5          = (known after apply)
      + content_sha1         = (known after apply)
      + content_sha256       = (known after apply)
      + content_sha512       = (known after apply)
      + directory_permission = "0777"
      + file_permission      = "0777"
      + filename             = "hello.txt"
      + id                   = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.
```

## How to check

`./check m02l03-02` copies `starter/` into a scratch directory and runs `terraform init; terraform init -input=false >/dev/null && terraform plan` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
