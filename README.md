# Nimbus for Homebrew

The official Homebrew tap for [Nimbus](https://usenimbus.app), an AI browser companion.

## Install

```sh
brew install --cask syllogismos/tap/nimbus
```

Requires an Apple Silicon Mac running macOS 13 (Ventura) or later.

On Homebrew 7+, you can also add the tap and trust this cask once, then use the short name:

```sh
brew tap syllogismos/tap
brew trust --cask syllogismos/tap/nimbus
brew install --cask nimbus
```

Nimbus supports in-app updates. To update through Homebrew:

```sh
brew update
brew upgrade --cask --greedy nimbus
```

[Public releases and checksums](https://github.com/syllogismos/nimbus/releases) · [Report an issue](https://github.com/syllogismos/nimbus/issues)
