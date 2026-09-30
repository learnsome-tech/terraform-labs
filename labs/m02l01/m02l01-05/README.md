# m02l01-05 · The formatter shows you the canonical style

**Lesson:** [Writing Your First Configuration In HCL](https://learnsome.tech/learn/terraform-course/m02l01) (lesson 2.1, module 2: Your First Resource) · Pro  
**Check:** Graded

## Goal

You can read and write the four kinds of thing that appear in a Terraform file: blocks, arguments, expressions and comments, and you can refer to one resource from another.

In the lesson: Before we go further, one small habit. The formatter will rewrite your file, and with the diff flag it also shows you what it changed, which is a quick way to learn the conventions rather than being corrected by them. Two rules do most of the work. Two spaces of indentation per level, never a tab. And inside a block, the equals signs of consecutive arguments are lined up in a column. That second rule is why a well formatted Terraform file is so easy to skim: the names are in one column and the values are in another, and a missing argument is visible as a gap.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-05/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform fmt -diff`.
4. Check it from the repository root: `./check m02l01-05`.
5. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m02l01-05 --command=<id>`:
   - `recorded` (Lesson command): `terraform init; terraform fmt -diff`
   - `init` (Init): `terraform init`
   - `validate` (Validate): `terraform validate`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## Expected output

```text
main.tf
--- old/main.tf
+++ new/main.tf
@@ -1,9 +1,9 @@
 resource "local_file" "greeting" {
-  filename="hello.txt"
-  content = "Hello from Terraform\n"
+  filename = "hello.txt"
+  content  = "Hello from Terraform\n"
 }

 resource "local_file" "receipt" {
-    filename = "receipt.txt"
-    content = "wrote ${local_file.greeting.filename}\n"
+  filename = "receipt.txt"
+  content  = "wrote ${local_file.greeting.filename}\n"
 }
```

## How to check

`./check m02l01-05` copies `starter/` into a scratch directory and runs `terraform init; terraform fmt -diff` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
