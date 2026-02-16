<div align="center">
  <img src="https://img.shields.io/badge/gemini-cli-purple" />
  <img src="https://img.shields.io/badge/gemini-extension-purple" />
</div>


# Agent Sounds Red Alert Gemini Extension

This Gemini CLI extension plays random Red Alert sounds before and after the agent executes a task.

![command-and-conquer-red-alert-2-image](https://github.com/user-attachments/assets/bc63f0bf-8cf6-408e-b8ba-92b5eb052807)

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
