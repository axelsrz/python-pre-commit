
## Using pre-commit with autopep8 and flake8
This repo gives an example on how to add a pre-commit hook using pre-commit, autopep8 and flake8. 

## What is what

**[autopep8](https://pypi.org/project/autopep8/)**

> autopep8 automatically formats Python code to conform to the PEP 8 style guide. It uses the pycodestyle utility to determine what parts of the code needs to be formatted. autopep8 is capable of fixing most of the formatting issues that can be reported by pycodestyle.

**[flake8](http://flake8.pycqa.org/en/latest/)**
> Flake8 is a wrapper around these tools: PyFlakes, pycodestyle and Ned Batchelder's McCabe script. Flake8 runs all the tools by launching the single flake8 command. It displays the warnings in a per-file, merged output.

**[pre-commit](https://pre-commit.com/)**
>We built pre-commit to solve our hook issues. It is a multi-language package manager for pre-commit hooks. You specify a list of hooks you want and pre-commit manages the installation and execution of any hook written in any language before every commit.
