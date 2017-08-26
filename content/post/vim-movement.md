---
title:  "Vim Insert/Command Mode Movement"
date:   2017-02-02 13:30:00 +0800
tags: [vim]
---

* Ctrl-u: kill all characters before cursor

* Ctrl-o: execute a single command in normal mode and then return to insert mode

* Ctrl-o D: kill all characters after cursor

* Ctrl-d: indent current line

* Ctrl-t: unindent current line

* Ctrl-r: insert content of register

* Ctrl-w: kill previous word

{{< highlight vim >}}
" map movement key in command mode
cnoremap <A-h> <Left>
cnoremap <A-j> <Down>
cnoremap <A-k> <Up>
cnoremap <A-l> <Right>

" map movement key in command mode
imap <A-h> <S-Left>
imap <A-j> <Down>
imap <A-k> <Up>
imap <A-l> <S-Right>
{{< /highlight >}}

References: stackoverflow answer [1][SO1] & [2][SO2]

[SO1]: http://stackoverflow.com/a/15703188
[SO2]: http://stackoverflow.com/a/6311099
