# m03l02-05 · Reading outputs from a script

**Lesson:** [Return Values: Outputs And Locals](https://learnsome.tech/learn/terraform-course/m03l02) (lesson 3.2, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Graded

## Goal

You can declare outputs and read them from the command line in raw and JSON form, use locals to name an expression once, and explain why a sensitive output is still plain text in state.

In the lesson: Outputs are not only printed at the end of an apply; you can ask for them again at any time, because they are stored in state. Plain, you get the same human readable list. With the raw flag and a name, you get just the value with no quotes and no newline, which is exactly what you want inside a shell variable. With the json flag you get machine readable output, and that is what a pipeline should consume, because parsing the human format with a text tool will betray you the first time a value contains a space. Raw for people, json for programs.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/outputs.tf`](starter/outputs.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/staging.json`](starter/staging.json)
- [`starter/terraform.tfstate`](starter/terraform.tfstate)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   terraform output
   terraform output -raw summary
   terraform output -json machine_names
   ```
4. Run it: `terraform init; sh session.sh`.
5. Check it from the repository root: `./check m03l02-05`.
6. The site offers these commands for this lab; the first is the default, and the only one graded. Run another with `./check m03l02-05 --command=<id>`:
   - `recorded` (Recorded session): `terraform init; sh session.sh`
   - `init` (Init): `terraform init`
   - `validate` (Validate): `terraform validate`
   - `plan` (Plan): `terraform plan`
   - `apply` (Apply): `terraform apply -auto-approve`
   - `fmt` (Format check): `terraform fmt -check -diff`
   - `output` (Output): `terraform apply -auto-approve && terraform output`

## Expected output

```text
machine_names = [
  "staging-orders-0",
  "staging-orders-1",
]
manifest_path = "staging.json"
summary = "staging: 2 machines"
staging: 2 machines["staging-orders-0","staging-orders-1"]
```

## How to check

`./check m03l02-05` copies `starter/` into a scratch directory and runs `terraform init; sh session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
