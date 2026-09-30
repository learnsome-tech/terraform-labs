# m02l03-04 · Apply, and watch the plan become actions

**Lesson:** [Predicting Changes, Then Applying Them](https://learnsome.tech/learn/terraform-course/m02l03) (lesson 2.3, module 2: Your First Resource) · Pro  
**Check:** Graded

## Goal

You can read an execution plan line by line, name every change symbol, save a plan to a file and apply exactly that plan, and explain why a plan is a prediction rather than a promise.

In the lesson: Now apply it. By default this prints the plan again and then stops to ask you to type the word yes, which is the safety rail and you should leave it in place when you are working by hand. Here I have passed the flag that skips the question, because a recording cannot type. Underneath the familiar plan you get the actions themselves: the resource being created, then a line saying creation is complete with the identifier the provider assigned. Then the summary: one added, none changed, none destroyed. That is the whole workflow. Everything else in this course is about doing this safely with other people, at a larger size, and for things that matter.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-04/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform apply -auto-approve`.
4. Check it from the repository root: `./check m02l03-04`.

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
local_file.greeting: Creating...
local_file.greeting: Creation complete after 0s [id=2ee5d2acea249b250d0c5886f5016929abd6d1b7]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
```

## How to check

`./check m02l03-04` copies `starter/` into a scratch directory and runs `terraform init; terraform apply -auto-approve` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
