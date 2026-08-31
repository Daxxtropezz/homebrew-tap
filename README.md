<div align="center">

# Daxxtropezz Homebrew Tap

**Official Homebrew tap for tools maintained by Daxxtropezz**

[![Homebrew](https://img.shields.io/badge/Homebrew-Tap-FBB040?logo=homebrew\&logoColor=black)](https://brew.sh/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![GitHub](https://img.shields.io/badge/GitHub-Daxxtropezz-181717?logo=github)](https://github.com/Daxxtropezz)
[![Homebrew CI](https://github.com/Daxxtropezz/homebrew-tap/actions/workflows/tests.yml/badge.svg?branch=main)](https://github.com/Daxxtropezz/homebrew-tap/actions/workflows/tests.yml)

Install and manage Daxxtropezz command-line tools through Homebrew on supported Linux and macOS systems.

</div>

---

## Overview

This repository is the official Homebrew tap for open-source tools maintained by **Daxxtropezz**.

It provides Homebrew formulae for installing, upgrading, and managing supported projects without requiring users to manually clone repositories or copy executables into their system.

```text
homebrew-tap/
└── Formula/
    ├── ghostwipe.rb
    └── ztk.rb
```

---

## Available Formulae

| Formula     | Project                                                     | Description                                                                                          | Platforms     |
| ----------- | ----------------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | ------------- |
| `ztk`       | [ZeroTrustKit](https://github.com/Daxxtropezz/ZeroTrustKit) | DevSecOps bootstrap platform for cloud, containers, Kubernetes, security, and infrastructure tooling | Linux / macOS |
| `ghostwipe` | [Ghostwipe](https://github.com/Daxxtropezz/ghostwipe)       | Cross-platform system maintenance and cleanup utility                                                | Linux / macOS |

---

## Installation

Homebrew can install formulae from this tap directly.

### ZeroTrustKit

```bash
brew install Daxxtropezz/tap/ztk
```

Verify:

```bash
ztk --version
ztk --help
```

### Ghostwipe

```bash
brew install Daxxtropezz/tap/ghostwipe
```

Verify:

```bash
ghostwipe --version
ghostwipe --help
```

---

## Tap Installation

You can also add the repository as a Homebrew tap first:

```bash
brew tap Daxxtropezz/tap
```

Then install packages using their shorter names:

```bash
brew install ztk
brew install ghostwipe
```

List the formulae provided by the tap:

```bash
brew search Daxxtropezz/tap
```

---

## Updating

Homebrew handles updates through its normal package-management workflow.

Refresh Homebrew and tap metadata:

```bash
brew update
```

Upgrade ZeroTrustKit:

```bash
brew upgrade ztk
```

Upgrade Ghostwipe:

```bash
brew upgrade ghostwipe
```

Or upgrade all outdated Homebrew packages:

```bash
brew upgrade
```

---

## Uninstallation

### ZeroTrustKit

```bash
brew uninstall ztk
```

### Ghostwipe

```bash
brew uninstall ghostwipe
```

To remove the tap itself:

```bash
brew untap Daxxtropezz/tap
```

---

## Formula Verification

Each release formula references a versioned upstream source archive and its corresponding SHA-256 checksum.

For example:

```ruby
url "https://github.com/Daxxtropezz/ZeroTrustKit/archive/refs/tags/v1.2.0.tar.gz"
sha256 "<release-sha256>"
```

Homebrew verifies the checksum before installation, helping ensure that the downloaded source archive matches the release expected by the formula.

---

## Supported Platforms

| Tool         | macOS Intel | macOS Apple Silicon | Linux AMD64 | Linux ARM64 |
| ------------ | :---------: | :-----------------: | :---------: | :---------: |
| ZeroTrustKit |      ✅      |          ✅          |      ✅      |      ✅      |
| Ghostwipe    |      ✅      |          ✅          |      ✅      |      ✅      |

Platform-specific functionality may vary. Individual project repositories contain more detailed compatibility and dependency information.

---

## Requirements

### Homebrew

This repository requires a working Homebrew installation.

Check your installation:

```bash
brew --version
```

If Homebrew is not installed, follow the installation instructions on the [official Homebrew website](https://brew.sh/).

### Bash

The tools distributed through this tap may depend on a modern version of Bash.

The relevant Homebrew formula declares Bash as a dependency when required, allowing Homebrew to install and manage the appropriate version.

---

## Repository Structure

```text
homebrew-tap/
├── Formula/
│   ├── ghostwipe.rb
│   └── ztk.rb
├── LICENSE
└── README.md
```

Each Ruby file under `Formula/` defines how Homebrew downloads, verifies, installs, and tests the corresponding project.

The application source code itself remains in its respective upstream repository.

---

## Projects

### ZeroTrustKit

**ZeroTrustKit (ZTK)** is a DevSecOps bootstrap platform designed to simplify the installation and management of cloud, container, Kubernetes, security, infrastructure, and development tooling.

Repository:

https://github.com/Daxxtropezz/ZeroTrustKit

Homebrew:

```bash
brew install Daxxtropezz/tap/ztk
```

---

### Ghostwipe

**Ghostwipe** is a cross-platform maintenance and cleanup utility designed to provide safer and more transparent system housekeeping on supported Linux and macOS systems.

Repository:

https://github.com/Daxxtropezz/ghostwipe

Homebrew:

```bash
brew install Daxxtropezz/tap/ghostwipe
```

---

## Release Process

Formulae in this tap track versioned releases from their respective upstream repositories.

A typical release follows this workflow:

```text
Application Repository
        │
        ├── Commit release
        │
        ├── Create version tag
        │
        ▼
GitHub Release Archive
        │
        ├── Calculate SHA-256
        │
        ▼
Homebrew Tap
        │
        ├── Update Formula/<tool>.rb
        │
        └── Publish
        │
        ▼
brew install / brew upgrade
```

Release archives are immutable from the tap's perspective. Once a formula has been published with a SHA-256 checksum, an existing release tag should not be recreated or modified. Fixes should be published under a new version.

---

## Formula Development

After modifying a formula, validate it with Homebrew:

```bash
brew style Daxxtropezz/tap/ztk
brew test Daxxtropezz/tap/ztk
brew audit --strict Daxxtropezz/tap/ztk
```

For Ghostwipe:

```bash
brew style Daxxtropezz/tap/ghostwipe
brew test Daxxtropezz/tap/ghostwipe
brew audit --strict Daxxtropezz/tap/ghostwipe
```

A clean installation can also be tested with:

```bash
brew uninstall <formula>
brew install Daxxtropezz/tap/<formula>
```

---

## Issues and Contributions

Issues relating to an application's functionality should generally be reported in that application's upstream repository.

* **ZeroTrustKit:** https://github.com/Daxxtropezz/ZeroTrustKit/issues
* **Ghostwipe:** https://github.com/Daxxtropezz/ghostwipe/issues

Issues specifically related to Homebrew installation, formula definitions, checksums, or tap behavior may be reported in this repository.

Pull requests for formula improvements and compatibility fixes are welcome.

---

## Security

Do not submit credentials, access tokens, API keys, private keys, passwords, or other secrets in issues, pull requests, formulae, or logs.

SHA-256 release checksums contained in Homebrew formulae are intentionally public and are used for release integrity verification.

If you discover a security issue in one of the projects, avoid publishing sensitive exploitation details in a public issue.

---

## License

Formula definitions and repository content are distributed under the terms specified in this repository's [LICENSE](LICENSE).

Individual projects may define their own licensing terms in their respective repositories.

---

<div align="center">

### Daxxtropezz

Open-source tooling for **DevOps · DevSecOps · Cloud · Security · Linux**

[GitHub](https://github.com/Daxxtropezz)

</div>
