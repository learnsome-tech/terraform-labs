# m01l03-02 · Confirm it is installed and know what you have

**Lesson:** [Installing Terraform And Meeting The CLI](https://learnsome.tech/learn/terraform-course/m01l03) (lesson 1.3, module 1: Core Concepts And Context) · Free  
**Check:** Runs, not graded

## Goal

You can install Terraform, confirm the version you are running, and use the two commands that cost nothing and catch most mistakes: format and validate.

In the lesson: Open a terminal and ask it for its version. You want two things from this. The first is confirmation that the binary is on your path at all, because a command not found here means the install did not finish, not that anything is broken. The second is the number itself. Several things in this course need a reasonably recent version: the test framework needs version one point six, mocking in tests needs one point seven, and the state locking mechanism we will use needs one point ten. If the number you see is older than those, upgrade now rather than being confused later. Write the number down somewhere, because in a moment we will pin it inside the configuration itself.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   terraform version
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l03-02`.

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
Terraform v1.16.4
on linux_amd64
```

## How to check

`./check m01l03-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
