# CONTEXT FOR AGENTS

## Project Overview
This is the config directory for the application `Rofi`. This directory will focus on decorating Rofi for app launching.

## Files
| File | Usage |
| --- | --- |
| [base_config.rasi](/base_config.rasi) | The config extracted using `rofi -dump-config`. |
| [CONFIG.md](/config.md) | The official Rofi config guide. |
| [colors.css](/colors.css) | Main color palette and name convention for styling. Can be used as theme for config.rasi. |
| config.rasi | The main config file. |

## Guidelines
1. Do not remove or modify any file in [files](#files) except for the main config file `config.rasi`.
2. Make sure the new theme has been applied after editing the config file.
3. There is already a theme in `config.rasi`. Your job is to expand upon the style using the skill `frontend-design`.
