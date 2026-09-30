# m02l03-06 · Change one character and plan again

**Lesson:** [Predicting Changes, Then Applying Them](https://learnsome.tech/learn/terraform-course/m02l03) (lesson 2.3, module 2: Your First Resource) · Pro  
**Check:** Runs, not graded

## Goal

You can read an execution plan line by line, name every change symbol, save a plan to a file and apply exactly that plan, and explain why a plan is a prediction rather than a promise.

In the lesson: Change the content of the file and plan again. This is the moment to look closely at the symbols, because a local file cannot have its content edited in place by this provider: the change forces a replacement. The plan says so plainly, with the pair of symbols joined by a slash, and it names the attribute that forced it, with a comment saying forces replacement. That phrase is the most useful string in the whole output. When a plan surprises you, search for it: it tells you exactly which attribute is responsible, and therefore exactly which line of your configuration to reconsider.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/hello.txt`](starter/hello.txt)
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`starter/terraform.tfstate`](starter/terraform.tfstate)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-06/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform plan`.
4. Check it from the repository root: `./check m02l03-06`.

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
local_file.greeting: Refreshing state... [id=2ee5d2acea249b250d0c5886f5016929abd6d1b7]

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # local_file.greeting must be replaced
-/+ resource "local_file" "greeting" {
      ~ content              = <<-EOT # forces replacement
          - Hello from Terraform
          + Hello from Terraform, again
        EOT
      ~ content_base64sha256 = "IqBLfRwOUQN7HJwOD9wkP5aYGVSFYOHa8qi2LZz+OPc=" -> (known after apply)
      ~ content_base64sha512 = "xb4mOvwXK/4IgkIdf9RKeIXP0766mT+tXnmgRLXVUAJ1hewbs65AwxTUcqVsNLuWVKA5daQ2wzWgwkB3j7Y5Ww==" -> (known after apply)
      ~ content_md5          = "a1a47e3cb3032413a5e0c8d70113a312" -> (known after apply)
      ~ content_sha1         = "2ee5d2acea249b250d0c5886f5016929abd6d1b7" -> (known after apply)
      ~ content_sha256       = "22a04b7d1c0e51037b1c9c0e0fdc243f969819548560e1daf2a8b62d9cfe38f7" -> (known after apply)
      ~ content_sha512       = "c5be263afc172bfe0882421d7fd44a7885cfd3beba993fad5e79a044b5d550027585ec1bb3ae40c314d472a56c34bb9654a03975a436c335a0c240778fb6395b" -> (known after apply)
      ~ id                   = "2ee5d2acea249b250d0c5886f5016929abd6d1b7" -> (known after apply)
        # (3 unchanged attributes hidden)
    }

Plan: 1 to add, 0 to change, 1 to destroy.
```

## How to check

`./check m02l03-06` copies `starter/` into a scratch directory and runs `terraform init; terraform plan` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
