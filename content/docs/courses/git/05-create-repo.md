---
title: First Git Repository
weight: 5
---

# 🚀 Your First Git Repository & Basic Workflow

You've got Git installed and configured with your identity – well done! Now it's time for the exciting part: creating your very first Git repository, making your first "commit" (a saved snapshot of your work), and understanding the fundamental workflow you'll use every day with Git.

In this module, we'll walk through:
* Initializing a repository.
* Understanding the key areas: your **Working Directory**, the **Staging Area**, and the **Repository** itself.
* The "two-phase commit" process using `git add` and `git commit`.
* Checking the status of your project with `git status`.
* Viewing your project's history with `git log` and `git show`.
* Understanding the different states a file can be in.

Let's get started!

---
## 🌳🌳🌳 The Three Core Areas of Your Project 

Before we type any commands, it's crucial to understand the three main conceptual areas Git manages for your project:

1.  **Working Directory (or Working Tree):**
    * This is your project folder on your filesystem – the actual files and directories you see and edit with your code editor or other tools. It's your live workspace.

2.  **Staging Area (also known as the "Index"):**
    * Think of this as a "waiting room" or a "drafting table." It's an intermediate area where you prepare and gather the specific changes from your Working Directory that you want to include in your *next* commit.
    * You don't directly edit files here; instead, you use the `git add` command to take changes from your Working Directory and place them onto the Staging Area.
    * This allows you to craft your commits carefully, choosing only related changes for a single snapshot, rather than committing everything you've modified at once. This is the heart of Git's **two-phase commit** process.

3.  **Repository (`.git` directory):**
    * This is where Git permanently stores your project's history. It contains all your commits (snapshots), branches, tags, and the underlying objects that make up your project's different versions.
    * When you initialized Git (or when you run `git init`), Git created a hidden `.git` subdirectory in your project's root folder. This `.git` directory *is* your local repository.

The general flow is: You make changes in your **Working Directory**, then you selectively add those changes to the **Staging Area**, and finally, you commit what's in the Staging Area to your **Repository**.

---
## 📂✨ Creating Your First Repository: `git init`

A Git repository is simply a project directory that Git is tracking.

1.  **Open your terminal** (Git Bash, Terminal, Command Prompt, etc.).
2.  **Navigate to where you want to create your project.** You can create a new folder for this tutorial:
    ```bash
    mkdir my-git-basics-project
    cd my-git-basics-project
    ```
3.  **Initialize the Git repository:**
    ```bash
    git init
    ```

You'll see a message like: `Initialized empty Git repository in /path/to/your/my-git-basics-project/.git/`

* **What just happened?** The `git init` command created a new, hidden subdirectory named `.git` inside your `my-git-basics-project` folder. This `.git` folder contains all the files and information Git needs to start tracking versions of your project. Your project is now officially a Git repository!

---
## 📊 Checking the Status: `git status` 

The `git status` command is your best friend in Git. It tells you the current state of your repository, including which files have been modified, which are staged, and which are untracked.

Let's run it now in our empty repository:
```bash
git status
```

You'll likely see something like:
`
On branch main #

No commits yet

nothing to commit (create/copy files and use "git add" to track)
`

