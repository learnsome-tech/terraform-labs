# m02l02-02 · Running it, and reading what it says

**Lesson:** [Initialising The Working Directory](https://learnsome.tech/learn/terraform-course/m02l02) (lesson 2.2, module 2: Your First Resource) · Pro  
**Check:** Graded

## Goal

You can explain the four jobs the initialise command does, say what is in the hidden directory it creates, and know which flag to reach for when re-initialising is not enough.

In the lesson: Run it on the directory holding that file. The output is a report of those jobs in order. It mentions the backend first, and since we have not asked for anything else it uses the local one, meaning state will be a file on your disk. Then the provider work: finding versions that match, installing the one it chose, and confirming the download was signed by the publisher. Then the note about the lock file, which you met in the last module and which you commit. And finally the line that matters: initialisation succeeded. If you ever see this command finish without that last line, stop and read upwards, because something in the middle did not work.

## Files

- [`starter/cmd.sh`](starter/cmd.sh): the Terraform commands the lesson ran
- [`starter/main.tf`](starter/main.tf): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-02/starter`
2. Read `main.tf`.
3. Run it: `terraform init; terraform init`.
4. Check it from the repository root: `./check m02l02-02`.

## Expected output

```text
Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/local versions matching "~> 2.5"...
- Installing hashicorp/local v2.9.1...
- Installed hashicorp/local v2.9.1 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!
```

## How to check

`./check m02l02-02` copies `starter/` into a scratch directory and runs `terraform init; terraform init` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after Terraform's machine-specific noise is set aside: provider download lines, advisory text, colour and blank lines are dropped, and resource ids, versions, durations, timestamps and working directories are masked. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
