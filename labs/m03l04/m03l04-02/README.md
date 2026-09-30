# m03l04-02 · A local data source

**Lesson:** [Querying Existing Infrastructure With Data Sources](https://learnsome.tech/learn/terraform-course/m03l04) (lesson 3.4, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Checker

## Goal

You can use a data source to read existing information, distinguish refresh from creation, and feed the result into a local resource safely.

In the lesson: The provider requirement comes first, then a resource writes a file that stands in for an object managed by another team. The data block is a read, not a second file. It asks the local provider for the content at the filename. The resource reference in that filename makes ordering explicit: Terraform must create the stand in before the data source can read it. The output reads the content through the data namespace, which is how every data source is addressed. In a cloud configuration, the same pattern might look up a network, an image, or a secret that this configuration should never own.

## Files

- [`starter/data.tf`](starter/data.tf): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l04/m03l04-02/starter`
2. Read `data.tf` the way the lesson builds it:
   - Lines 1: the provider requirement
   - Lines 2: the data block
   - Lines 3–18: the output reads
3. Notes from the lesson:
   - Line 16: data is a read, not a second file
   - Line 17: the resource reference makes ordering explicit
4. Edit `data.tf` and check it: `terraform init; terraform validate`.
5. Check it from the repository root: `./check m03l04-02`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l04-02 --command=<id>`:
   - `validate` (Validate): `terraform validate`
   - `init` (Init): `terraform init`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## How to check

`./check m03l04-02` copies `starter/` into a scratch directory and runs `terraform init; terraform validate` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

This is a checker lab: it initialises the configuration (the local, null and random providers) and runs `terraform validate`: it passes when the configuration is valid. The site shows the checker's report without grading; `./check` passes when the checker finds no errors.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
