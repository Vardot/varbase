# Varbase Install Theme

A minimal theme that extends Gin with Varbase's original install page styling.

## Overview

This theme is designed to be used **only during Varbase installation**. It:

- Extends Gin theme (keeps all Gin functionality and styling)
- Adds Varbase's original install-page.css and install-scripts.js
- Is automatically disabled after installation completes

## Features

- **Minimal Override**: Only adds Varbase install styling, keeps Gin as base
- **Installation-Only**: Automatically disabled after installation
- **Original Assets**: Uses the original Varbase install-page.css and install-scripts.js

## File Structure

```
varbase_installer_theme/
├── css/
│   └── install-page.css                 # Original Varbase install CSS
├── js/
│   └── install-scripts.js               # Original Varbase install JS
├── varbase_installer_theme.info.yml       # Minimal theme info
├── varbase_installer_theme.libraries.yml  # Just install styling/scripts
└── README.md                            # This file
```

## How It Works

1. **Base Theme**: Extends Gin (inherits all Gin styling and functionality)
2. **Install Only**: Theme functions check for install routes before applying
3. **Library Override**: Adds Varbase install styling to Gin's install-page library

The theme is completely minimal and only adds the necessary Varbase install styling while keeping the full Gin experience.