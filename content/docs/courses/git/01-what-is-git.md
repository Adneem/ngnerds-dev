---
title: What is Git
weight: 1
---
# ✨ Introduction to Git and Version Control

## 💾 What is Version Control?

Imagine you're working on a project – it could be writing code, designing a website, or even crafting a novel. As you make changes, don't you wish you had a way to:

* See exactly what you changed last Tuesday?
* Go back to a version from three weeks ago that you know worked perfectly?
* Safely experiment with new ideas without messing up your current progress?
* Work with other people on the same project without overwriting one another's work?

That's exactly what Version Control Systems (VCS) are designed for!
{{< figure src="/images/file-chaos-vs-git.png" width="350" alt="Files Chaos vs Git" class="left" >}}

A VCS is a tool that meticulously tracks and manages changes to a collection of files (often called a repository or project directory). Instead of just keeping the latest version, it records snapshots of your files at different points in time.

Think of it like this:

* Each time you reach a significant point in your work, you tell the VCS to take a snapshot.
* This snapshot captures the state of all your files at that moment.
* You can then look back at any previous snapshot, compare versions, or even revert your entire project to an older state if something goes wrong.

Beyond just saving files, a VCS also helps with:

* **Collaboration:** When multiple people are working on the same project, a VCS helps merge their contributions and understand who changed what.
* **History & Context:** It keeps a detailed log of who made changes, when they made them, and (importantly) why they made them (through descriptive messages).

In short, a version control system is an indispensable tool for managing the evolution of any project, especially when dealing with code or collaborative efforts.

## 💻  What is Git? (The Modern Standard for Version Control) 

So, we know what version control is. Now, let's talk about Git.

Chances are, if you are learning about version control today (in 2025), Git is the system you'll be using. It is by far the most popular and widely adopted version control system in the world.

### 📜 A little background (The Story of Git's Creation): 
{{< figure src="/images/git-inception.png" width="350" alt="Birth of Git" class="right" >}}

Git was created by Linus Torvalds (the same person who created the Linux operating system kernel) in 2005. He designed Git to manage the development of the Linux kernel itself, which was already a massive project with many contributors, and it critically needed a robust version control system.

For a time, the Linux kernel project used a proprietary (commercial) version control system called BitKeeper. While BitKeeper was powerful, its free-use license came with strict conditions. One condition was that developers using the free version of BitKeeper could not contribute to or work on competing version control tools.

This situation arose when a key developer in the Linux community began work that BitMover (the company behind BitKeeper) perceived as reverse-engineering their software's protocol. In response, BitMover revoked the Linux kernel project's free access to BitKeeper. This licensing crisis is the reason behind the birth of Git.

With BitKeeper gone, Torvalds knew that the Linux project needed a new kind of version control system. He had certain requirements in mind : 
* Distributed, with no single point of failure.
* Fast, even with a huge codebase like the Linux kernel.
* Secure, with strong integrity checks.
* Free and open source, with no strings attached.

But nothing on the market met all those criteria. This prompted Torvalds to write a new version control system himself. In just 10 days, the first version of Git came out.

### 📈 Why did Git Become So Popular? 

Before Git, and even contemporary to its creation, other version control systems existed. While they helped manage changes and supported collaboration, they often came with significant drawbacks.

* **Dependency on Centralized Servers:** Most of the older version control systems were centralized. This meant there was one main server holding all the project history. If the central server went down, no one could save their changes (commit) or access older versions. You would need to be connected to the server to even perform basic version control tasks.

* **Clumsy Branching and Merging:** Creating different lines of development (branches) or combining them (merging) was a complex, slow, and risky process. Developers avoided creating branches because of the complexity and the risks, thereby seriously limiting their ability to experiment with alternative options.

### 💡 How Git Changed the Game (Its Key Advantages): 

Git was designed to overcome the limitations of the competing VCS tools of that time. 
Torvalds didn’t just want to fix version control. He wanted to redefine it.

> “Every clone is equal.” – Linus Torvalds

Git treats every copy of a repository as a full-fledged version. You don’t need permission to experiment. You don’t need to be online. You don’t even need to ask anyone to start contributing.

This was radical. It turned version control from a centralized bottleneck into a decentralized enabler.

#### ✅💨🛡️ Simplicity, Speed, and Safety 

Behind the scenes, Git is surprisingly simple:
- It stores your code history using SHA-1 hashes for integrity.
- It makes branching and merging effortless, so you’re encouraged to do them often.
- It’s lightning-fast, even the massive Linux kernel repository runs smoothly on Git.

These qualities made Git not just better, but fundamentally different from anything that came before.

#### 👐 Collaboration Without Gatekeeping

One of Git’s most powerful features isn’t technical, it’s cultural.

In centralized systems, only a few people had the keys to the main repository. In Git, everyone starts with a full copy, and contributions flow through a network of trust.

Anyone can fork, branch, commit, and share their ideas, and the best ideas naturally rise to the top. This model democratized open source development and changed how software is built.