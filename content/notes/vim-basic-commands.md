---
title: "vim basic commands"
date: "2007-10-23"
categories: 
  - "vim"
---

```
-------------------
Visual commands
------------------

> - shift right
< - shift left
y - yank (copy) marked text
d - delete marked text
~ - switch case

---------------------------
Working with multiple files
----------------------------
:e filename - Edit a file in a new buffer
:bnext (or :bn) - go to next buffer
:bprev (of :bp) - go to previous buffer
:bd - delete a buffer (close a file)
:sp filename - Open a file in a new buffer and split window
ctrl+ws - Split windows
ctrl+ww - switch between windows
ctrl+wq - Quit a window
ctrl+wv - Split windows vertically
:vsp filename - Splits the screen vertically and opens filename in the new area.
k - Moves to the split above the current split.
Up - Moves to the split above the current split.
j - Moves to the split below the current split.
Down - Moves to the split below the current split.
+   Increases the size of the current split by one line. (Try combining this with counts -- e.g. 5+ will make the split five lines bigger.)
- (Minus sign) Decreases the size of the current split by one line.
_   (Underscore) Maximize the current split (that is, make it take up as much room as possible.)


-------------------------------------------------------------------------------------
Full Command                Short form          Description
-------------------------------------------------------------------------------------
autoindent/noautoindent     ai/noai             {CR} returns to indent of previous line
autowrite/noautowrite       aw/noaw             See tags
errorbells/noerrorbells     eb/noeb             Silence error beep
flash/noflash               fl/nofl             Screen flashes upon error (for deaf people or when noerrorbells is set)
tabstop=8                   ts                  Tab key displays 8 spaces
ignorecase/noignorecase     ic/noic             Case sensitive searches
number/nonumber             nu/nonu             Display line numbers
showmatch/noshowmatch       no abbreviations    Cursor shows matching ")" and "}"
showmode/noshowmode         no abbreviations    Editor mode is displayed on bottom of screen
taglength                   tl  Default=0. Set significant characters
closepunct='".,;)]}         - % key shows matching symbol. Also see showmatch
linelimit=1048560           - Maximum file size to edit
wrapscan/nowrapscan         ws/nows             Breaks line if too long
wrapmargin=0/nowrapmargin   wm/nowm             Define right margin for line wrapping.
list/nolist                 - Display all Tabs/Ends of lines.
```
