# mono-public Homebrew Tap

This repository hosts the public Homebrew tap for selected tools released from the private [neongreen/mono](https://github.com/neongreen/mono) monorepo. Releases are mirrored automatically and published here via the tap.

## Available Formulae

| Formula  | Latest Version | Binary Platforms |
|----------|----------------|------------------|
| `want`   | `main.15`      | macOS (arm64, amd64), Linux (arm64, amd64) |
| `ingest` | `main.3`       | macOS (arm64, amd64), Linux (arm64, amd64) |
| `printpdf` | `main.8`     | macOS (arm64, amd64), Linux (arm64, amd64) |

> Older releases stay available via tags (`ingest--main.3`, `printpdf--main.8`, etc.). New projects will appear here once they ship public binaries.

## Getting Started

### 1. Add the Tap

```bash
brew tap neongreen/mono-public https://github.com/neongreen/mono-public
```

### 2. Install a Tool

Pick any formula from the table above:

```bash
brew install neongreen/mono-public/want
brew install neongreen/mono-public/ingest
brew install neongreen/mono-public/printpdf
```

Homebrew fetches the mirrored binaries from this repository and installs them to your `$PATH`.

### 3. Upgrade

All new releases from the private mono repository are mirrored automatically. To upgrade an installed tool:

```bash
brew update
brew upgrade neongreen/mono-public/want
```

Repeat with `ingest` or `printpdf` as needed. `brew upgrade` pulls the latest mirrored release (e.g. `want main.15`).

### 4. Verify Installation

```bash
want --help
ingest --help
printpdf --help
```

Each binary ships as a self-contained executable; formulas install directly without extra dependencies.

## Notes

- Tap updates run automatically as part of the private `mono` release workflow. If you need to republish a specific tag, rerun the workflow from the private repository.
- Additional tools from `mono` will appear here once they publish public releases and Homebrew formulas.
- Questions or issues should be filed in [neongreen/mono](https://github.com/neongreen/mono).
