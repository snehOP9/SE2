# Log Monitor and Alert System

A Linux-based automation system to monitor system logs (`/var/log/syslog`), filter out critical errors, and send alerts via email. Built with modular shell scripting principles and integrates standard Linux utilities.

## Features

- Monitors logs in real-time or periodically via `cron`
- Filters critical error keywords (e.g., "error", "fail", "panic")
- Sends email alerts using `mail`
- Logs all activity with timestamps
- Fully modular and maintainable

## Prerequisites

- `mailutils` installed (`sudo apt install mailutils`)
- Bash version 4+
- Linux-based system

## Setup

```bash
git clone https://github.com/yourusername/log-monitor.git
cd log-monitor
chmod +x setup.sh
./setup.sh
```

## Directory Structure

```
scripts/        # Shell scripts
docs/           # Software documentation
test/           # Automated test cases
```

## Versioning

- v1.0: Initial working version
- v1.1: Added email alerts
- v1.2: Performance improvements

## License

MIT License
