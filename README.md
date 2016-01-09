[![Build Status](https://travis-ci.org/envygeeks/simple-ansi.svg?branch=master)][travis]
[![Test Coverage](https://codeclimate.com/github/envygeeks/simple-ansi/badges/coverage.svg)][coverage]
[![Code Climate](https://codeclimate.com/github/envygeeks/simple-ansi/badges/gpa.svg)][codeclimate]
[![Dependency Status](https://gemnasium.com/envygeeks/simple-ansi.svg)][gemnasium]

[gemnasium]: https://gemnasium.com/envygeeks/simple-ansi
[codeclimate]: https://codeclimate.com/github/envygeeks/simple-ansi
[coverage]: https://codeclimate.com/github/envygeeks/simple-ansi/coverage
[travis]: https://travis-ci.org/envygeeks/simple-ansi

# Simple ANSI

Provides a key set of colors and ANSI for your projects, it's simple, it's meant to be used at the most basic level, and was originally embedded into Docker-Template but has become encapsulated to use across all my projects.

## Current Helpers

* `clear`: Clear the current view.
* `has?`: Tells you whether the given string has ANSI.
* `red`, `green`, `black`, `magenta`, `yellow`, `white`, `blue`, `cyan`
* `jump(str, num)`: Jump the cursor up and then back down `num` lines in the terminal.
* `clear_line`: Clear the current line - Make sure to end it in `\r`
* `reset`: Adds ANSI reset.
