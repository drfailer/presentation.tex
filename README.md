# Presentation template

## Requirements

- `pygments` if using minted for code blocks.
- `biber` for references (if you don't use it, update the makefile and remove
  the references part in the main file).

## Usage

- All the compile commands are in the Makefile.
- Put the different sections of your presentation in the `section` directory and
  import them in the main file using the import package.
- The example section shows how to create a basic presentation.

## Troubleshooting

### `xcolor` issue

With older version of latex, there is an issue with `xcolor` and the `table`
option. To solve this, the `table` option must be global:

```tex
% \documentclass[aspectratio=169]{beamer} % --- default
\documentclass[aspectratio=169,table]{beamer} % +++ use table as a global option
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{import} % import sub files
\usepackage{listings} % for code listings
\usepackage{minted} % for code highlighting
% \usepackage[table]{xcolor} % --- default
\usepackage{xcolor} % +++ use xcolor without option
\usepackage{config/presentation}
```
