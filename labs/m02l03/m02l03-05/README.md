# m02l03-05 · Something real happened

**Lesson:** [Predicting Changes, Then Applying Them](https://learnsome.tech/learn/terraform-course/m02l03) (lesson 2.3, module 2: Your First Resource) · Pro  
**Check:** Runs, not graded

## Goal

You can read an execution plan line by line, name every change symbol, save a plan to a file and apply exactly that plan, and explain why a plan is a prediction rather than a promise.

In the lesson: The file is really there, on your disk, with the content you asked for. That is the point of using this provider to learn with: everything is real, and nothing costs anything. Now plan a second time. No changes, and a sentence saying your infrastructure matches the configuration. That is idempotence, seen rather than described. Terraform refreshed the file, found it exactly as recorded, compared it with the configuration, and found nothing to do. A team that has this property can run the same pipeline on every commit without worrying about what the pipeline will do when nothing has changed: the answer is nothing.

## Files

- [`starter/hello.txt`](starter/hello.txt)
- [`starter/main.tf`](starter/main.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/terraform.tfstate`](starter/terraform.tfstate)
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   cat hello.txt
   terraform plan
   ```
4. Run it: `terraform init; sh session.sh`.
5. Check it from the repository root: `./check m02l03-05`.

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
Hello from Terraform
local_file.greeting: Refreshing state... [id=2ee5d2acea249b250d0c5886f5016929abd6d1b7]

No changes. Your infrastructure matches the configuration.

Terraform has compared your real infrastructure against your configuration
and found no differences, so no changes are needed.
```

## How to check

`./check m02l03-05` copies `starter/` into a scratch directory and runs `terraform init; sh session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
