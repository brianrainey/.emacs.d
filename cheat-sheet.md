
## Moving ##
`M-}` and `M-{` for moving between paragraphs.

## Selecting ##

`M-h` for current paragraph.

`C-x h` for whole buffer.

`C-SPC` to set mark.

`C-x C-x` to move the mark to the opposite end of the selection.

## Registers ##

`C-x r SPC` marks the position in a buffer. Jump back to that position
with `C-x r j`

`C-x r s` saves text to a register. `C-x r i` inserts it.

`list-registers` does what it says. It shows marks and text.

## Bookmarks ##

`C-x r m` sets a bookmark. It's like a more persistent version of the
above. List bookmarks with `C-x r l`, or go directly to one with
`C-x r b`.
