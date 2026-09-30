<p>
  <a href="https://learnsome.tech/courses/terraform-course">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset=".github/assets/wordmark-inverse.svg">
      <img src=".github/assets/wordmark.svg" alt="LearnSome.tech" width="260">
    </picture>
  </a>
</p>

# Infrastructure as Code with Terraform

**Declarative Cloud Provisioning, State Locking & Reusable Modules**

A video course on Terraform: 8 modules, 37 lessons, each lesson one video of five to ten minutes. The screen is a single session - an editor writing HCL on one side, a terminal running the real `terraform` CLI on the other - and the captions highlight the word being spoken. Intermediate level, about 2 hours.

This repository holds the labs of the LearnSome.tech course [Infrastructure as Code with Terraform](https://learnsome.tech/courses/terraform-course): each lab's starter files, a README with the goal, the steps and the expected output, and `./check`, which tests your work the way the site does.

## Start

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/learnsome-tech/terraform-labs?quickstart=1)

- **Codespaces:** the badge opens this repository in a dev container with Python 3.14.7, Terraform 1.16.4 and actionlint 1.7.12, as in the site's lab sandbox.
- **On your machine:**

  ```sh
  git clone https://github.com/learnsome-tech/terraform-labs.git
  cd terraform-labs
  ./check m01l02-04
  ```

  You need Python 3 for `./check`, and for the labs themselves Python 3.14.7, Terraform 1.16.4 and actionlint 1.7.12. Other versions mostly work, but only the sandbox's versions are sure to print what the site prints. VS Code's Dev Containers extension builds the same container as Codespaces (x86-64).

## Doing a lab

1. Open the lesson on LearnSome.tech and the lab folder beside it: `labs/<lesson>/<lab>/`. The lab README has the goal, the steps and the expected output.
2. Work in the lab's `starter/` folder.
3. From the repository root, run `./check <lab>` (for example `./check m01l02-04`), or `./check <lesson>` for all labs of a lesson, or `./check --all`. `./check --list` shows every lab and how it is checked.

`./check` runs your starter the way the site's lab sandbox does: in a scratch copy that is its working directory and `HOME`, with `LANG=C.UTF-8`, `TZ=UTC`, `input.txt` on standard input, 10 seconds and 256 KiB of output per stream. It then compares the output with the site's own rules, so a pass here is a pass on the site.

| Check | What `./check` does | Labs |
| --- | --- | --- |
| Graded | Runs the program and compares its output with `expected.txt`. | 26 |
| Checker | Validates the file with the checker the site uses (hadolint, kubeconform, actionlint, yamllint, `ansible-playbook --syntax-check` or `terraform validate`); passes when it finds no errors. | 31 |
| Runs, not graded | Runs the program and shows its output; the site gives no pass or fail, and the lab README says why. | 7 |
| Read along | Nothing to run here: the site shows the listing read-only, and the lab README says honestly what it needs (Docker, a cluster, a cloud account...). | 33 |

## What is published, and what is not

Every lab's starter is the code the lesson shows on screen, which is also what the lab editor on the site opens with. Where that code is the whole program, such as a recorded shell session or a script from the video, it is published as it is: it is the lesson content. Nothing beyond the lesson is published. There are no reference solutions and no answers to the lesson exercises, and nothing the site keeps private.

Pro lessons' labs are here as starters too. LearnSome.tech runs and grades your labs in its sandbox, hosts the videos and keeps your progress; running and grading a Pro lab on the site needs Pro.

## Modules and lessons

### Module 1: Core Concepts And Context

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 1.1 | [What Is Infrastructure As Code?](https://learnsome.tech/learn/terraform-course/m01l01) | [2 labs](labs/m01l01/) | Free |
| 1.2 | [The Licence, OpenTofu And IBM](https://learnsome.tech/learn/terraform-course/m01l02) | [2 labs](labs/m01l02/) | Free |
| 1.3 | [Installing Terraform And Meeting The CLI](https://learnsome.tech/learn/terraform-course/m01l03) | [7 labs](labs/m01l03/) | Free |
| 1.4 | [Providers And The required_providers Block](https://learnsome.tech/learn/terraform-course/m01l04) | [7 labs](labs/m01l04/) | Free |

### Module 2: Your First Resource

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 2.1 | [Writing Your First Configuration In HCL](https://learnsome.tech/learn/terraform-course/m02l01) | [6 labs](labs/m02l01/) | Pro |
| 2.2 | [Initialising The Working Directory](https://learnsome.tech/learn/terraform-course/m02l02) | [5 labs](labs/m02l02/) | Pro |
| 2.3 | [Predicting Changes, Then Applying Them](https://learnsome.tech/learn/terraform-course/m02l03) | [7 labs](labs/m02l03/) | Pro |
| 2.4 | [Tearing It Down With Destroy](https://learnsome.tech/learn/terraform-course/m02l04) | [6 labs](labs/m02l04/) | Pro |

### Module 3: Variables, Outputs And Expressions

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 3.1 | [Parameterising With Input Variables](https://learnsome.tech/learn/terraform-course/m03l01) | [8 labs](labs/m03l01/) | Pro |
| 3.2 | [Return Values: Outputs And Locals](https://learnsome.tech/learn/terraform-course/m03l02) | [6 labs](labs/m03l02/) | Pro |
| 3.3 | [Functions And Expressions In HCL](https://learnsome.tech/learn/terraform-course/m03l03) | [4 labs](labs/m03l03/) | Pro |
| 3.4 | [Querying Existing Infrastructure With Data Sources](https://learnsome.tech/learn/terraform-course/m03l04) | [2 labs](labs/m03l04/) | Pro |

### Module 4: Building A Network Module

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 4.1 | [Why Modules: Composition Versus Monoliths](https://learnsome.tech/learn/terraform-course/m04l01) | [3 labs](labs/m04l01/) | Pro |
| 4.2 | [Writing A Custom Network Module](https://learnsome.tech/learn/terraform-course/m04l02) | [3 labs](labs/m04l02/) | Pro |
| 4.3 | [Calling Your Module And Passing Variables](https://learnsome.tech/learn/terraform-course/m04l03) | [3 labs](labs/m04l03/) | Pro |
| 4.4 | [The Terraform Registry And Public Modules](https://learnsome.tech/learn/terraform-course/m04l04) | [3 labs](labs/m04l04/) | Pro |
| 4.5 | [Versioning And Pinning Modules](https://learnsome.tech/learn/terraform-course/m04l05) | [3 labs](labs/m04l05/) | Pro |

### Module 5: Compute And Meta Arguments

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 5.1 | [Scaling Resources With Count](https://learnsome.tech/learn/terraform-course/m05l01) | [1 lab](labs/m05l01/) | Pro |
| 5.2 | [Iterating Over Maps With For Each](https://learnsome.tech/learn/terraform-course/m05l02) | [1 lab](labs/m05l02/) | Pro |
| 5.3 | [Explicit Dependencies With Depends On](https://learnsome.tech/learn/terraform-course/m05l03) | [1 lab](labs/m05l03/) | Pro |
| 5.4 | [Safe Changes With Lifecycle Rules](https://learnsome.tech/learn/terraform-course/m05l04) | [1 lab](labs/m05l04/) | Pro |
| 5.5 | [Provisioners: Why They Are A Last Resort](https://learnsome.tech/learn/terraform-course/m05l05) | [1 lab](labs/m05l05/) | Pro |

### Module 6: State, Drift And Databases

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 6.1 | [What State Really Is And Why It Is Needed](https://learnsome.tech/learn/terraform-course/m06l01) | [1 lab](labs/m06l01/) | Pro |
| 6.2 | [Simulating A Managed Database](https://learnsome.tech/learn/terraform-course/m06l02) | [1 lab](labs/m06l02/) | Pro |
| 6.3 | [Detecting And Fixing Configuration Drift](https://learnsome.tech/learn/terraform-course/m06l03) | [1 lab](labs/m06l03/) | Pro |
| 6.4 | [Importing Existing Resources](https://learnsome.tech/learn/terraform-course/m06l04) | [1 lab](labs/m06l04/) | Pro |
| 6.5 | [Forcing Replacement](https://learnsome.tech/learn/terraform-course/m06l05) | [1 lab](labs/m06l05/) | Pro |

### Module 7: Remote State And Locking

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 7.1 | [The Problem With Local State](https://learnsome.tech/learn/terraform-course/m07l01) | [1 lab](labs/m07l01/) | Pro |
| 7.2 | [Configuring A Remote Backend](https://learnsome.tech/learn/terraform-course/m07l02) | [1 lab](labs/m07l02/) | Pro |
| 7.3 | [State Locking With Use Lockfile](https://learnsome.tech/learn/terraform-course/m07l03) | [1 lab](labs/m07l03/) | Pro |
| 7.4 | [Workspaces For Multiple Environments](https://learnsome.tech/learn/terraform-course/m07l04) | [1 lab](labs/m07l04/) | Pro |
| 7.5 | [Security: Secrets In State And Ephemeral Values](https://learnsome.tech/learn/terraform-course/m07l05) | [1 lab](labs/m07l05/) | Pro |

### Module 8: CI CD Testing And Policy

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 8.1 | [Running Terraform In CI](https://learnsome.tech/learn/terraform-course/m08l01) | [1 lab](labs/m08l01/) | Pro |
| 8.2 | [Native Testing With Tftest Files](https://learnsome.tech/learn/terraform-course/m08l02) | [1 lab](labs/m08l02/) | Pro |
| 8.3 | [Provider Mocking For Tests](https://learnsome.tech/learn/terraform-course/m08l03) | [1 lab](labs/m08l03/) | Pro |
| 8.4 | [Policy As Code With OPA](https://learnsome.tech/learn/terraform-course/m08l04) | [1 lab](labs/m08l04/) | Pro |
| 8.5 | [Releasing The Real Cloud Artifact](https://learnsome.tech/learn/terraform-course/m08l05) | [1 lab](labs/m08l05/) | Pro |

**Free** lessons are open to anyone with a free LearnSome.tech account; **Pro** lessons need a Pro membership to watch, run and grade on the site.

## Licence

- **Code** (starter files, `check` and `.learnsome/`, the dev container and the workflows) is under the [MIT licence](LICENSE).
- **Written text** (the READMEs, lab instructions, lesson text, exercises and questions) is under [CC BY-NC-SA 4.0](LICENSE-text.md): share and adapt it with attribution to LearnSome.tech, not commercially, under the same licence.
- The LearnSome.tech name and logo are not covered by either licence.

## Contributing and security

This repository is generated from the course. Report a broken lab or a content error [as an issue](../../issues/new/choose); see [CONTRIBUTING.md](CONTRIBUTING.md). Security reports go to [SECURITY.md](SECURITY.md).

© 2026 LearnSome.tech
