---
title: Git Configuration
weight: 4
---

# 🆔✍️ First-Time Git Configuration 

Great job on getting Git installed! Before you dive into making your first commits and tracking your projects, there's one small but essential setup step: telling Git who you are.

Every time you make a commit (a snapshot of your project), Git embeds your name and email address into that commit. This is how you, your team, and anyone else looking at the project history can see who made what changes. It’s like signing your work!

This module will show you how to set up your user identity and a few other helpful defaults.

{{< figure src="/images/anonymous-artist.png" width="450" alt="Anonymous Artist" class="left" >}}

---
## ⚙️ The `git config` Command:

Git uses the `git config` command to manage its settings. You can set configurations at three different levels:

1.  **`--system`**: Settings for every user on the system and all their repositories. (You'll rarely touch this).
2.  **`--global`**: Settings for you, the current user, across all of your repositories. This is what we'll mostly use for user identity.
3.  **`--local`**: Settings for the specific repository you are currently in. (This overrides global and system settings).

For now, we'll focus on the `--global` settings as these are the ones you typically set once.

---
##  👤📧 Setting Your Identity: Name and Email

These are the two most important settings. Open your terminal (Git Bash, Terminal, Command Prompt, etc.) and let's get started.

### 1. 👤 Your Name

This is the name that will be displayed as the "Author" of your commits.

```bash
git config --global user.name "Your Full Name"
```

### 2. 📧 Your Email Address

This email address will be associated with your commits. It's good practice to use an email address that you also use for Git hosting services like GitHub, GitLab, or Bitbucket, as this helps them link your commits to your account on their platform.

```bash
git config --global user.email "youremail@example.com"
```

## 🌿 Setting Your Default Branch (Highly Recommended!)

Historically, the default branch name Git created in a new repository was master. However, the community and many platforms (including GitHub and GitLab) have shifted to using main as the preferred default.

You can tell Git to use main for any new repository you initialize:

```bash
git config --global init.defaultBranch main
```
This is a good practice for consistency with modern workflows.

## 📝 Choosing Your Default Text Editor (Optional, but Good to Know)
Sometimes, Git will need to open a text editor for you. For example, if you type git commit without the -m "message" flag, Git will open an editor for you to write a longer commit message. It also uses an editor for things like interactive rebasing or merge commit messages.

The default editor is often Vim, which can be confusing for beginners. You can configure Git to use an editor you're more comfortable with. Here are a few examples (make sure the editor is installed and in your system's PATH):

* Visual Studio Code:
```bash
git config --global core.editor "code --wait"
```
* Nano:
```bash
git config --global core.editor "nano"
```
* Notepad++ (Windows - ensure path is correct)
```bash
git config --global core.editor "'C:\Program Files\Notepad++\notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
```
(The exact path and flags for Notepad++ might vary. You might need to experiment or look up specific instructions for your editor.)

## ✅ Checking Your Configuration:
To see all your global configuration settings, type:
```bash
git config --global --list
```

To check a specific setting, like your username:
```bash
git config --global user.name
```

##  📄 Where Are These Settings Stored?

When you use the --global flag, Git writes these settings to a configuration file in your user's home directory.

* On Linux and macOS, this file is typically located at ~/.gitconfig.
* On Windows, it's usually at C:\Users\<YourUsername>\.gitconfig.

You can open this file with a text editor to see your settings, but it's generally safer to modify it using `git config` commands.

## ❗ Why This All Matters:

Setting your `user.name` and `user.email` is fundamental because:

* Attribution: This information is permanently embedded in every commit you create.
* Collaboration: It allows others (and your future self) to see who authored specific changes.
* Integration: Hosting services like GitHub use this information to associate your commits with your account.