<div align="center">
  <img src="https://img.shields.io/badge/gemini-cli-purple" />
  <img src="https://img.shields.io/badge/gemini-extension-purple" />
</div>


# Agent Sounds Red Alert Gemini Extension

This Gemini CLI extension plays random Red Alert sounds before and after the agent executes a task.

<img width="616" height="353" alt="image" src="https://github.com/user-attachments/assets/539e7eb6-9787-4c45-b70b-4ff9ed0582be" />

## Features

- Plays a random sound from a predefined set before the agent starts ("BeforeAgent" hook).
- Plays a random sound from a different set after the agent finishes ("AfterAgent" hook).

## Installation

You can install this extension directly from GitHub:

```bash
gemini extensions install https://github.com/lirantal/agent-sounds-redalert-gemini-extension
```

Or clone it and link it for development:

```bash
git clone https://github.com/lirantal/agent-sounds-redalert-gemini-extension.git
cd agent-sounds-redalert-gemini-extension
gemini extensions link .
```

## Requirements

- macOS (uses `afplay`)
- Gemini CLI

## Credits

The sound assets in this extension were generated using [fish.audio/discovery/](https://fish.audio/discovery/).

## Contributing

Please consult [CONTRIBUTING](./CONTRIBUTING.md) for guidelines on contributing to this project.
