---
title:  "More Vim Tricks"
date:   2017-02-02 14:45:00 +0800
tags: [vim]
---

* mark:
    - m{a-zA-Z} to set a mark
    - '{a-zA-Z} to jump to mark
    - uppercase marks persist between files
    - :help marks

* in command mode: press Ctrl-f to open window with 50 most recent commands

* read:
    - `:read FILE` to paste file content to current buffer
    - `:read !command` to execute command and paste output to current buffer

* [demo][demo]

References: [youtube talk][youtube talk]

[youtube talk]: https://www.youtube.com/watch?v=MquaityA1SM
[demo]: http://unnovative.net/OpenWest_vim.tgz
