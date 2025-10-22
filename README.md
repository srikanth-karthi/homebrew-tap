# homebrew-tap

A Homebrew tap for installing custom formulae, currently hosting the [Timesheet CLI application](https://github.com/srikanth-karthi/Timesheet-cli-application).

## What is a Homebrew Tap?

A Homebrew tap is a third-party repository that allows you to install software not included in Homebrew's core formulae. This tap provides easy installation of custom tools via the `brew` command.

## Available Formulae

### Timesheet

A CLI timesheet tracker backed by Google Sheets that helps you track your work time directly from the terminal.

**Features:**
- Track work hours from the command line
- Automatic sync with Google Sheets
- Support for macOS (Intel & Apple Silicon) and Linux (x64)
- Simple and intuitive CLI interface

**Current Version:** 2.3.0

## Installation

### Step 1: Add the Tap

First, add this tap to your Homebrew installation:

```bash
brew tap srikanth-karthi/tap
```

### Step 2: Install the Formula

Once the tap is added, you can install the timesheet CLI:

```bash
brew install timesheet
```

## Usage

After installation, you can use the timesheet command:

```bash
timesheet --help
```

For detailed usage instructions, please refer to the [Timesheet CLI documentation](https://github.com/srikanth-karthi/Timesheet-cli-application).

## Supported Platforms

| Platform | Architecture | Supported |
|----------|-------------|-----------|
| macOS | Intel (x64) | ✅ |
| macOS | Apple Silicon (ARM64) | ✅ |
| Linux | x64 | ✅ |

## Updating

To update to the latest version of any installed formula:

```bash
brew update
brew upgrade timesheet
```

## Uninstalling

To uninstall the timesheet CLI:

```bash
brew uninstall timesheet
```

To remove this tap entirely:

```bash
brew untap srikanth-karthi/tap
```

## Development

### Formula Structure

Formulae are stored in the `Formula/` directory. Each formula is a Ruby file that defines:
- Package description and metadata
- Download URLs for different platforms
- SHA256 checksums for verification
- Installation instructions
- Test procedures

### Contributing

If you encounter any issues or have suggestions for improvements:

1. Check the [existing issues](https://github.com/srikanth-karthi/homebrew-tap/issues)
2. Create a new issue if your problem hasn't been reported
3. For formula-specific issues, please report them in the [Timesheet CLI repository](https://github.com/srikanth-karthi/Timesheet-cli-application/issues)

## License

This tap is available under the MIT License. Individual formulae may have their own licenses - please check the specific formula for details.

- Timesheet: MIT License

## Related Links

- [Homebrew Documentation](https://docs.brew.sh/)
- [Creating Taps](https://docs.brew.sh/How-to-Create-and-Maintain-a-Tap)
- [Timesheet CLI Repository](https://github.com/srikanth-karthi/Timesheet-cli-application)

## Acknowledgments

Built with [GoReleaser](https://goreleaser.com/) for automated release management.
