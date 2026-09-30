# m03l02-05 · Reading outputs from a script

**Lesson:** [Return Values: Outputs And Locals](https://learnsome.tech/learn/terraform-course/m03l02) (lesson 3.2, module 3: Variables, Outputs And Expressions) · Pro  
**Check:** Runs, not graded

## Goal

You can declare outputs and read them from the command line in raw and JSON form, use locals to name an expression once, and explain why a sensitive output is still plain text in state.

In the lesson: Outputs are not only printed at the end of an apply; you can ask for them again at any time, because they are stored in state. Plain, you get the same human readable list. With the raw flag and a name, you get just the value with no quotes and no newline, which is exactly what you want inside a shell variable. With the json flag you get machine readable output, and that is what a pipeline should consume, because parsing the human format with a text tool will betray you the first time a value contains a space. Raw for people, json for programs.

## Files

- [`starter/main.tf`](starter/main.tf)
- [`starter/outputs.tf`](starter/outputs.tf)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
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

## What the lesson recorded

Shown for reference; the check does not compare it.

```text
╷
│ Warning: No outputs found
│
│ The state file either has no outputs defined, or all the defined outputs
│ are empty. Please define an output in your configuration with the `output`
│ keyword and run `terraform refresh` for it to become available. If you are
│ using interpolation, please verify the interpolated value is not empty. You
│ can use the `terraform console` command to assist.
╵
╷
│ Error: Output "machine_names" not found
│
│ The output variable requested could not be found in the state file. If you
│ recently added this to your configuration, be sure to run `terraform
│ apply`, since the state won't be updated with new output variables until
│ that command is run.
╵
```

## How to check

`./check m03l02-05` copies `starter/` into a scratch directory and runs `terraform init; sh session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It runs without a pass or fail: what the listing prints in the lab sandbox differs from the output recorded for the lesson (it depends on the machine, the clock or the network), so the site runs it without a pass or fail. `./check` shows the output and the exit code.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/terraform-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
