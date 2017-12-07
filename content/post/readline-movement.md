---
title:  "Readline Movement and Other Tricks"
date:   2017-02-02
tags: [readline,shell]
---

* C-a: beginning of line

* C-e: end of line

* C-f: move forward one character

* C-b: move backward one character

* M-f: move forward one word

* M-b: move backward one word

* M-t: swap last two arguments

* M-\_: paste last argument from previous command

* C-M-y: paste first argument from previous command (btw, 0th argument is the command)

* M-{0-9} C-M-y: paste the 0th/1st/... argument from previous command

* C-y: paste most recently killed text

* C-k: kill all characters after cursor

* M-DEL/C-w: kill previous word

* M-d: kill from cursor to the end of current word

* C-x C-u: undo last editing command

* Add the following lines to ~/.inputrc will enable [history search mode][archWiki]

{{< highlight shell >}}
"\e[A":history-search-backward
"\e[B":history-search-forward
{{< /highlight >}}

* Add this to expand `~` when using tab complete:

{{< highlight shell >}}
set expand-tilde on
{{< /highlight >}}

References: 1.[archWiki][archWiki] 2.[youtube talk][talk] 3.[readline cheatsheet][cheat]

[archWiki]: https://wiki.archlinux.org/index.php/readline#History

[talk]: https://www.youtube.com/watch?v=MxRTh8wlmJk

[cheat]: http://www.bigsmoke.us/readline/shortcuts
