## Motivation

Oftentimes when working on a large project, it is useful to have a designated types folder which can be accessed across server/client boundaries, and can avoid circular dependencies.

However, it becomes tedious to manage multiple type files and have to require each one manually. On the contrary, having a single large types file can become disorganized quite quickly.

typecollect aims to solve this problem by allowing you to define a directory of type files, then run a simple command to export them all into a single file.

## Install

Install via Pesde:

```
pesde add sporblord/typecollect
pesde install
```

## Usage

Simply pass the path to your types directory as the `-o` argument.

```
typecollect -o src/common/types
```

You can also use the `-f` argument to bypass the confirmation prompt.
