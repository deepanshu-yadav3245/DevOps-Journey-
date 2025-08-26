📘 Git - A DevOps Essential
🚀 Introduction

In the world of DevOps, version control is the backbone of collaboration and automation.
Git is the most widely used distributed version control system that helps teams track changes in source code, collaborate efficiently, and maintain project history.

With Git, developers can:

Work independently and later merge code into the main branch.

Roll back to any previous stable version when needed.

Collaborate on large-scale projects across multiple teams.

Integrate with CI/CD pipelines to achieve continuous integration and continuous delivery.

🔑 Why Git is Important in DevOps?

✅ Collaboration → Enables multiple developers to work on the same project.

✅ Version Control → Keeps history of every change, commit, and release.

✅ Branching & Merging → Allows experimentation without disturbing the main codebase.

✅ Integration with CI/CD → Git repositories (like GitHub, GitLab, Bitbucket) are directly linked to DevOps pipelines.

✅ Infrastructure as Code (IaC) → Configuration files and automation scripts can also be managed in Git.

# Initialize a repository
git init

# Clone a repository from GitHub
git clone <repository-url>

# Check repository status
git status

# Stage changes
git add <filename>   # Add specific file
git add .            # Add all files

# Commit changes with message
git commit -m "Your commit message"

# Set remote origin (GitHub repo link)
git remote add origin <repository-url>

# Push code to GitHub
git push -u origin main

⚡ “Master Git, and you master the foundation of DevOps.”