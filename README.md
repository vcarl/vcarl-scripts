# vcarl-scripts

## Problem

There's a bunch of boilerplate to setting up a new library, and I want to share improvements to testing or build steps across libraries.

## Solution

A github repo that self-ejects leaving you with a pristine setup for a new project (Except it doesn't rename the parent folder). It also gets published as an NPM package for the resulting project to use.

## Usage

```
git clone ssh://git@github.com/vcarl/vcarl-scripts
cd vcarl-scripts
npm eject
```

After ejecting,

* Finish `package.json`
  * name
  * repository
* Rename containing folder

