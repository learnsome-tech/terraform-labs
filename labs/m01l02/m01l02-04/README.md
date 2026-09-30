# m01l02-04 · Which one is on this machine?

**Lesson:** [The Licence, OpenTofu And IBM](https://learnsome.tech/learn/terraform-course/m01l02) (lesson 1.2, module 1: Core Concepts And Context) · Free  
**Check:** Runs, not graded

## Goal

You can explain what the business source licence changed in twenty twenty three, what OpenTofu is and where it came from, who owns Terraform now, and choose between the two tools for a given team with reasons.

In the lesson: You can always ask the tool itself. The version command prints the name, the version number and the platform it was built for, and that is the quickest way to know which of the two you are actually running, because the two command names are different but everything after that looks alike. Get into the habit of checking it when you join a project, and of pinning it somewhere the whole team shares, because a configuration written for a newer version will refuse to run on an older one. This course is recorded against the version you see here, and every command in it works on anything reasonably recent.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   terraform version
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l02-04`.

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
Terraform v1.16.0
on darwin_arm64
```

## How to check

`./check m01l02-04` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
