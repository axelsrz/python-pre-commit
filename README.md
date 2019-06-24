
## Using pre-commit with autopep8 and flake8
This repo gives an example on how to add a pre-commit hook using pre-commit, autopep8 and flake8 to ensure PEP 8 compliance.

## What is what

**[autopep8](https://pypi.org/project/autopep8/)**

> autopep8 automatically formats Python code to conform to the PEP 8 style guide. It uses the pycodestyle utility to determine what parts of the code needs to be formatted. autopep8 is capable of fixing most of the formatting issues that can be reported by pycodestyle.

**[flake8](http://flake8.pycqa.org/en/latest/)**
> Flake8 is a wrapper around these tools: PyFlakes, pycodestyle and Ned Batchelder's McCabe script. Flake8 runs all the tools by launching the single flake8 command. It displays the warnings in a per-file, merged output.

**[pre-commit](https://pre-commit.com/)**
>We built pre-commit to solve our hook issues. It is a multi-language package manager for pre-commit hooks. You specify a list of hooks you want and pre-commit manages the installation and execution of any hook written in any language before every commit.

## How it works
We wanted to show an example of how these tools works on a multilanguage repository. This example has two folders: [folder_to_check](https://github.com/Aliandi/pytest/tree/master/folder_to_check), which contains a fibonacci example written on python, and [folder_to_ignore](https://github.com/Aliandi/pytest/tree/master/folder_to_ignore), with the same example but on javascript.
We want our pre-commit hook only to apply the style changes to the python file.

Locally, our code looks like this:
_JavaScript_
```
function fibonacci(num){
    var a = 1, b = 0, temp;
  
    while (num >= 0){
      temp = a;
      a=a+b; 
      b=temp;
      num--;
    }
  
    return b;
  }
```
_Python_
```
def fibonacci(n):
    if n<0:
        print("Incorrect input")
    elif n==1:
        return 0
    elif n==2:
        return 1
    else:
        return fibonacci(n-1) + fibonacci(n-2)
```
However, after we commit it (and push), the [Javascript](https://github.com/Aliandi/pytest/blob/master/folder_to_ignore/fibonacci.ts) code has not changed while the [Python](https://github.com/Aliandi/pytest/blob/master/folder_to_check/fibonacci.py) code has now been styled.

The message the commit produces recognizes the lint errors first and then fixes them.
![imagen](https://user-images.githubusercontent.com/22912283/60032833-bdbefe80-967d-11e9-853c-f1a6f86a7f8d.png)


