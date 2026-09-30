# m05l05-02 · A focused example

**Lesson:** [Provisioners: Why They Are A Last Resort](https://learnsome.tech/learn/terraform-course/m05l05) (lesson 5.5, module 5: Compute And Meta Arguments) · Pro  
**Check:** Checker

## Goal

You can explain why provisioners are fragile and identify a managed alternative first.

In the lesson: second provisioner focus. provisioners: why they are a last resort provisioners: why they are a last resort provisioners: why they are a last resort. Here is a small configuration to keep the idea visible. The resource has one trigger, and the variable supplies the value. In the real lesson topic you would add the relevant meta argument around this resource, then plan twice while changing the input. Watch whether Terraform keeps the existing identity or proposes a new one. The text on screen is intentionally small because the important skill is reading the graph and the replacement markers, not memorising a large provider resource.

## Files

- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l05/m05l05-02/starter`
2. Read `main.tf`.
3. Edit `main.tf` and check it: `terraform init; terraform validate`.
4. Check it from the repository root: `./check m05l05-02`.

## How to check

`./check m05l05-02` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m05l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
