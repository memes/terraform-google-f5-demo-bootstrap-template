# F5 demo bootstrap template for Google Cloud

![GitHub release](https://img.shields.io/github/v/release/f5-architects/terraform-google-f5-demo-bootstrap-template?sort=semver)
![GitHub last commit](https://img.shields.io/github/last-commit/f5-architects/terraform-google-f5-demo-bootstrap-template)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)

This repository contains common settings and actions that are typical F5 on Google Cloud demo projects and is designed
to be used with the [bootstrap](https://github.com/f5-architect/terraform-google-f5-demo-bootstrap) module as a starting
point for automated deployments.

## Setup

> NOTE: TODOs are sprinkled in the files and can be used to find where changes
> may be necessary.

1. Use as a template when creating a new GitHub repo, or copy the contents into
   a bare-repo directory.
1. Update `.pre-commit-config.yml` to add/remove plugins as necessary.
1. Modify README.md and CONTRIBUTING.md, change LICENSE as needed.
1. Review GitHub PR and issue templates.
1. If using `release-please` action, make these changes:
   1. In GitHub Settings:
      * _Settings_ > _Actions_ > _General_  > _Allow GitHub Actions to create and approve pull requests_ is checked
   1. Modify [release-please action](.github/workflows/release-please.yml) to enable it
   1. Modify [release-please-config.json](release-please-config.json)] as needed
   1. Reset [.release-please-manifest.json](.release-please-manifest.json) to an empty file or suitable starting version
      for package(s).
1. Remove all [CHANGELOG](CHANGELOG.md) entries.
1. Modify [devcontainer](.devcontainer/devcontainer.json) name, etc., as needed, test.
1. Commit changes.
