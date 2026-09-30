# m02l03-07 · Saving a plan and applying exactly that

**Lesson:** [Predicting Changes, Then Applying Them](https://learnsome.tech/learn/terraform-course/m02l03) (lesson 2.3, module 2: Your First Resource) · Pro  
**Check:** Runs, not graded

## Goal

You can read an execution plan line by line, name every change symbol, save a plan to a file and apply exactly that plan, and explain why a plan is a prediction rather than a promise.

In the lesson: One more thing, and it is how every serious pipeline works. Write the plan to a file with the out flag. That file is a binary record of exactly the actions that were decided, against exactly the state that existed at the time. You can read it back, show it to a reviewer, or store it as an artefact. Then apply the saved plan, and notice what does not happen: no question, no second plan. Terraform applies precisely what was in that file, or refuses if the world has moved underneath it. That closes the gap between what was reviewed and what was done, which on a shared system is the whole game.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   terraform plan -out=tfplan
   terraform show tfplan | tail -n 5
   terraform apply tfplan
   ```
4. Run it: `terraform init; sh session.sh`.
5. Check it from the repository root: `./check m02l03-07`.

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
      ~ id                   = "2ee5d2acea249b250d0c5886f5016929abd6d1b7" -> (known after apply)
        # (3 unchanged attributes hidden)
    }

Plan: 1 to add, 0 to change, 1 to destroy.
local_file.greeting: Destroying... [id=2ee5d2acea249b250d0c5886f5016929abd6d1b7]
local_file.greeting: Destruction complete after 0s
local_file.greeting: Creating...
local_file.greeting: Creation complete after 0s [id=bb4669738fd3a802e161ff113920212a90aae44a]

Apply complete! Resources: 1 added, 0 changed, 1 destroyed.
```

## How to check

`./check m02l03-07` copies `starter/` into a scratch directory and runs `terraform init; sh session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
