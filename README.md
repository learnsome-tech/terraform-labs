<img src="https://learnsome.tech/logo.png" width="48" alt="LearnSome.tech">

# Infrastructure as Code with Terraform

A video course on Terraform: 8 modules, 37 lessons, each lesson one video of five to ten minutes. The screen is a single session - an editor writing HCL on one side, a terminal running the real `terraform` CLI on the other - and the captions highlight the word being spoken.

## Watch and read

- **Course page**: [https://learnsome.tech/courses/terraform-course](https://learnsome.tech/courses/terraform-course)
- **Video player**: [https://learnsome.tech/courses/terraform-course/watch](https://learnsome.tech/courses/terraform-course/watch)
- **Handbook PDF**: [https://learnsome.tech/handbooks/terraform/book.pdf](https://learnsome.tech/handbooks/terraform/book.pdf)
- **On-site handbook**: [https://learnsome.tech/courses/terraform-course/book](https://learnsome.tech/courses/terraform-course/book)

## What is in this repository

This repository contains code artifacts, exercises and reference files for the lessons in this course.
37 lessons include a `labs/<lessonId>/` folder.
Each folder is named after the lesson identifier (e.g. `labs/m01l01/`) and contains the
artifact files shown in the course video, an `EXERCISES.md` with hands-on tasks, and
sub-directories named by artifact reference (e.g. `m01l01-02/`).

## Lessons

| # | Lesson | Watch | Labs | Handbook |
|---|--------|-------|------|----------|
| | **Core Concepts And Context** | | | |
| 1 | What Is Infrastructure As Code? | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m01l01) | [labs/m01l01/](labs/m01l01/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-1-1) |
| 2 | The Licence, OpenTofu And IBM | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m01l02) | [labs/m01l02/](labs/m01l02/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-1-2) |
| 3 | Installing Terraform And Meeting The CLI | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m01l03) | [labs/m01l03/](labs/m01l03/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-1-3) |
| 4 | Providers And The required_providers Block | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m01l04) | [labs/m01l04/](labs/m01l04/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-1-4) |
| | **Your First Resource** | | | |
| 5 | Writing Your First Configuration In HCL | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m02l01) | [labs/m02l01/](labs/m02l01/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-2-1) |
| 6 | Initialising The Working Directory | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m02l02) | [labs/m02l02/](labs/m02l02/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-2-2) |
| 7 | Predicting Changes, Then Applying Them | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m02l03) | [labs/m02l03/](labs/m02l03/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-2-3) |
| 8 | Tearing It Down With Destroy | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m02l04) | [labs/m02l04/](labs/m02l04/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-2-4) |
| | **Variables, Outputs And Expressions** | | | |
| 9 | Parameterising With Input Variables | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m03l01) | [labs/m03l01/](labs/m03l01/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-3-1) |
| 10 | Return Values: Outputs And Locals | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m03l02) | [labs/m03l02/](labs/m03l02/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-3-2) |
| 11 | Functions And Expressions In HCL | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m03l03) | [labs/m03l03/](labs/m03l03/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-3-3) |
| 12 | Querying Existing Infrastructure With Data Sources | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m03l04) | [labs/m03l04/](labs/m03l04/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-3-4) |
| | **Building A Network Module** | | | |
| 13 | Why Modules: Composition Versus Monoliths | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m04l01) | [labs/m04l01/](labs/m04l01/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-4-1) |
| 14 | Writing A Custom Network Module | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m04l02) | [labs/m04l02/](labs/m04l02/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-4-2) |
| 15 | Calling Your Module And Passing Variables | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m04l03) | [labs/m04l03/](labs/m04l03/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-4-3) |
| 16 | The Terraform Registry And Public Modules | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m04l04) | [labs/m04l04/](labs/m04l04/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-4-4) |
| 17 | Versioning And Pinning Modules | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m04l05) | [labs/m04l05/](labs/m04l05/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-4-5) |
| | **Compute And Meta Arguments** | | | |
| 18 | Scaling Resources With Count | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m05l01) | [labs/m05l01/](labs/m05l01/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-5-1) |
| 19 | Iterating Over Maps With For Each | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m05l02) | [labs/m05l02/](labs/m05l02/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-5-2) |
| 20 | Explicit Dependencies With Depends On | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m05l03) | [labs/m05l03/](labs/m05l03/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-5-3) |
| 21 | Safe Changes With Lifecycle Rules | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m05l04) | [labs/m05l04/](labs/m05l04/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-5-4) |
| 22 | Provisioners: Why They Are A Last Resort | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m05l05) | [labs/m05l05/](labs/m05l05/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-5-5) |
| | **State, Drift And Databases** | | | |
| 23 | What State Really Is And Why It Is Needed | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m06l01) | [labs/m06l01/](labs/m06l01/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-6-1) |
| 24 | Simulating A Managed Database | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m06l02) | [labs/m06l02/](labs/m06l02/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-6-2) |
| 25 | Detecting And Fixing Configuration Drift | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m06l03) | [labs/m06l03/](labs/m06l03/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-6-3) |
| 26 | Importing Existing Resources | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m06l04) | [labs/m06l04/](labs/m06l04/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-6-4) |
| 27 | Forcing Replacement | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m06l05) | [labs/m06l05/](labs/m06l05/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-6-5) |
| | **Remote State And Locking** | | | |
| 28 | The Problem With Local State | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m07l01) | [labs/m07l01/](labs/m07l01/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-7-1) |
| 29 | Configuring A Remote Backend | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m07l02) | [labs/m07l02/](labs/m07l02/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-7-2) |
| 30 | State Locking With Use Lockfile | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m07l03) | [labs/m07l03/](labs/m07l03/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-7-3) |
| 31 | Workspaces For Multiple Environments | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m07l04) | [labs/m07l04/](labs/m07l04/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-7-4) |
| 32 | Security: Secrets In State And Ephemeral Values | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m07l05) | [labs/m07l05/](labs/m07l05/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-7-5) |
| | **CI CD Testing And Policy** | | | |
| 33 | Running Terraform In CI | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m08l01) | [labs/m08l01/](labs/m08l01/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-8-1) |
| 34 | Native Testing With Tftest Files | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m08l02) | [labs/m08l02/](labs/m08l02/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-8-2) |
| 35 | Provider Mocking For Tests | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m08l03) | [labs/m08l03/](labs/m08l03/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-8-3) |
| 36 | Policy As Code With OPA | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m08l04) | [labs/m08l04/](labs/m08l04/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-8-4) |
| 37 | Releasing The Real Cloud Artifact | [▶](https://learnsome.tech/courses/terraform-course/watch?lesson=m08l05) | [labs/m08l05/](labs/m08l05/) | [§](https://learnsome.tech/courses/terraform-course/book#lesson-8-5) |

## Exercises

Each lesson folder contains an `EXERCISES.md` with hands-on tasks drawn directly from the course material.
Open the file for a lesson to see the tasks and, where provided, hints.

---

© LearnSome.tech · support@iwantto.learnsome.tech
