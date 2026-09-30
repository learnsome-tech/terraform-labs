# m02l04-05 · Destroying it

**Lesson:** [Tearing It Down With Destroy](https://learnsome.tech/learn/terraform-course/m02l04) (lesson 2.4, module 2: Your First Resource) · Pro  
**Check:** Runs, not graded

## Goal

You can preview and run a destroy, explain why destroy is a first class part of the workflow rather than an accident, and name the three ways a team stops the wrong thing being destroyed.

In the lesson: Now run the destroy itself. Interactively it asks you to type yes, exactly as apply does, and again I am skipping that because a recording cannot answer. It refreshes first, so it is working from what is really there, prints the same plan you just saw, then does it: destroying, destruction complete, and a summary of one destroyed. Dependencies are honoured in reverse. When you have a network and a machine inside it, the machine is removed before the network, because the graph that decided the creation order is walked backwards. You never write that order down in either direction.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-05/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform destroy -auto-approve`.
4. Check it from the repository root: `./check m02l04-05`.

## What the lesson recorded

Shown for reference; the check does not compare it.

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
local_file.greeting: Destroying... [id=2ee5d2acea249b250d0c5886f5016929abd6d1b7]
local_file.greeting: Destruction complete after 0s

Destroy complete! Resources: 1 destroyed.
```

## How to check

`./check m02l04-05` copies `starter/` into a scratch directory and runs `terraform init; terraform destroy -auto-approve` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
