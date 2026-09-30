# m02l04-04 · Previewing a destroy before doing it

**Lesson:** [Tearing It Down With Destroy](https://learnsome.tech/learn/terraform-course/m02l04) (lesson 2.4, module 2: Your First Resource) · Pro  
**Check:** Graded

## Goal

You can preview and run a destroy, explain why destroy is a first class part of the workflow rather than an accident, and name the three ways a team stops the wrong thing being destroyed.

In the lesson: Plan with the destroy flag first. This is the same planning machinery pointed the other way: rather than working out how to make reality match your configuration, it works out how to make reality empty. Every resource is listed with a minus sign, each attribute shown with its current value and an arrow to nothing, and the summary at the bottom counts what would be destroyed. On a real system this is the command to run before you say anything out loud in a meeting, because the count at the bottom is the number you will be asked about. One to destroy here. If that number ever surprises you, do not continue.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/hello.txt`](starter/hello.txt)
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`starter/terraform.tfstate`](starter/terraform.tfstate)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-04/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform plan -destroy`.
4. Check it from the repository root: `./check m02l04-04`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l04-04 --command=<id>`:
   - `recorded` (Lesson command): `terraform init; terraform plan -destroy`
   - `init` (Init): `terraform init`
   - `validate` (Validate): `terraform validate`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## Expected output

```text
local_file.greeting: Refreshing state... [id=2ee5d2acea249b250d0c5886f5016929abd6d1b7]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # local_file.greeting will be destroyed
  - resource "local_file" "greeting" {
      - content              = <<-EOT
            Hello from Terraform
        EOT -> null
      - content_base64sha256 = "IqBLfRwOUQN7HJwOD9wkP5aYGVSFYOHa8qi2LZz+OPc=" -> null
      - content_base64sha512 = "xb4mOvwXK/4IgkIdf9RKeIXP0766mT+tXnmgRLXVUAJ1hewbs65AwxTUcqVsNLuWVKA5daQ2wzWgwkB3j7Y5Ww==" -> null
      - content_md5          = "a1a47e3cb3032413a5e0c8d70113a312" -> null
      - content_sha1         = "2ee5d2acea249b250d0c5886f5016929abd6d1b7" -> null
      - content_sha256       = "22a04b7d1c0e51037b1c9c0e0fdc243f969819548560e1daf2a8b62d9cfe38f7" -> null
      - content_sha512       = "c5be263afc172bfe0882421d7fd44a7885cfd3beba993fad5e79a044b5d550027585ec1bb3ae40c314d472a56c34bb9654a03975a436c335a0c240778fb6395b" -> null
      - directory_permission = "0777" -> null
      - file_permission      = "0777" -> null
      - filename             = "hello.txt" -> null
      - id                   = "2ee5d2acea249b250d0c5886f5016929abd6d1b7" -> null
    }

Plan: 0 to add, 0 to change, 1 to destroy.
```

## How to check

`./check m02l04-04` copies `starter/` into a scratch directory and runs `terraform init; terraform plan -destroy` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
