<div align="center">
  <a href="https://www.eonik.ai">
    <img src="https://www.eonik.ai/logo.svg" alt="eonik" width="160" />
  </a>
  <h1>eonik for Mac</h1>
  <p><strong>Finished, on-brand ads — without the busywork.</strong></p>
  <p>
    <a href="https://www.eonik.ai">Website</a> ·
    <a href="https://www.eonik.ai/download">Download</a> ·
    <a href="https://github.com/eonik-ai/eonik-mcp">Connect Claude</a>
  </p>
</div>

---

eonik is a **Mac app for making ads**. The editor is free. You approve every cut.

## Install

```sh
brew install --cask eonik-ai/tap/eonik
```

Use the full `eonik-ai/tap/eonik` name. A bare `brew install --cask eonik` asks you to
run `brew trust` first on Homebrew 6 and later; the full name installs directly.

**Already have eonik from the website?** Homebrew stops rather than overwrite an app it
did not place. Adopt the existing one:

```sh
brew install --cask --adopt eonik-ai/tap/eonik
```

Or, without Homebrew:

```sh
curl -fsSL https://eonik.ai/install | sh
```

Either way, eonik lands in Applications and keeps itself up to date.

## Requirements

macOS 15 (Sequoia) or later, Apple silicon.

## Uninstall

```sh
brew uninstall --cask eonik
```

To remove projects, generated clips, and settings:

```sh
brew uninstall --zap --cask eonik
```

## The eonik family

| | |
|---|---|
| Mac app | [Download](https://www.eonik.ai/download) |
| Claude / Cursor / Codex | [eonik-mcp](https://github.com/eonik-ai/eonik-mcp) |
| Assistant playbook | [eonik-mcp-skill](https://github.com/eonik-ai/eonik-mcp-skill) |
| Save ads you see | [Chrome extension](https://chromewebstore.google.com/detail/eonik/ikjbopcpohlogfbccbpcoglefjlbdcie) |

[connect@eonik.ai](mailto:connect@eonik.ai)
