# m01l03-06 · What formatting actually did

**Lesson:** [Installing Terraform And Meeting The CLI](https://learnsome.tech/learn/terraform-course/m01l03) (lesson 1.3, module 1: Core Concepts And Context) · Free  
**Check:** Runs, not graded

## Goal

You can install Terraform, confirm the version you are running, and use the two commands that cost nothing and catch most mistakes: format and validate.

In the lesson: Look at the middle of the file and you can see the result: the nested block is indented one level, and the two arguments inside it have their equals signs aligned. Now the check flag. It does not rewrite anything; it exits quietly when every file is already formatted and complains when one is not. That is exactly what you want in continuous integration, where rewriting files behind somebody's back would be rude and failing the build is the correct response. We will put this exact command into a pipeline in the last module of the course.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   sed -n '3,9p' main.tf
   terraform fmt -check
   ```
4. Run it: `terraform init; sh session.sh`.
5. Check it from the repository root: `./check m01l03-06`.

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}
```

## How to check

`./check m01l03-06` copies `starter/` into a scratch directory and runs `terraform init; sh session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
