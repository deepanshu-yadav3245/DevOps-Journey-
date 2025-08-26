🏷️ Versioning in DevOps

🚀 Introduction
In DevOps, versioning is one of the most critical practices to manage software releases.
It ensures that every release, feature, or hotfix is traceable, predictable, and reliable.

(1) A proper versioning strategy allows teams to:

(2) Track changes in the software lifecycle.

(3) Communicate new features, bug fixes, and breaking changes.

(4) Automate deployments with CI/CD pipelines.

(5) Rollback to stable versions in case of failures.


🔑 Why Versioning Matters in DevOps?
✅ Consistency → Ensures uniform version tags across builds and environments.

✅ Traceability → Helps in tracking which version is deployed in which environment.

✅ Automation → CI/CD pipelines can trigger builds based on version changes.

✅ Rollback Safety → Easily revert to a stable version if production fails.


📌 Semantic Versioning (SemVer)
The most commonly used standard in DevOps is Semantic Versioning (SemVer):

MAJOR.MINOR.PATCH

🔹 Rules:
MAJOR → Increases when you make incompatible API changes.

MINOR → Increases when you add functionality in a backward-compatible manner.

PATCH → Increases when you make backward-compatible bug fixes.

🔹 Examples:
1.0.0 → First stable release

1.1.0 → Added a new feature

1.1.1 → Fixed a bug in the feature

2.0.0 → Major changes with breaking updates


🛠️ Versioning with Git Tags
Git allows us to tag versions so they can be deployed or referenced in pipelines.

# Create a new tag
git tag v1.0.0

# Push tag to remote
git push origin v1.0.0

# List all tags
git tag

# Delete a tag
git tag -d v1.0.0
git push origin :refs/tags/v1.0.0


🔗 Tags are often used in CI/CD pipelines to trigger production deployments.
🌳 Branching & Release Strategy

A professional DevOps setup often follows a branching strategy like:

main → Always production-ready code

develop → Pre-production / integration testing

release/* → Candidate release branches

feature/* → New features before merging

hotfix/* → Urgent fixes directly applied to production
⚡ “Without versioning, DevOps pipelines are blind.”