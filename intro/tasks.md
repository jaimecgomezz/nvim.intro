---
author: jaimecgomezz
date: 2024-10-18
---

# Neovim by example

Get to know Neovim enough to be dangerous.

---
## Quit Neovim. Let's get it out of the way.

```vim
" Safely quit neovim
:q

" Get me the hell out of here. Force quit.
:q!
```

---
## Get to know your editor.

```vim
" Show line numbers
set number

" Highlight your cursor line
set cursorline

" Change your colorscheme
colorscheme sorbet

" Explore what you have just configured.
:help number
:help motions
:help spell
```


---
## Open your first file and explore it.

```vim
" Open a simple file
e intro/people.txt

" Move 3 words forward
3w

" Move 2 words backwards
2b

" Go to line 10
10gg

" Go to the end of the line
$

" Go to the last line
G

" Jump forward and backwards
^o
^i
```

---
## Make your first changes.

```vim
" Go to the last line
G

" Add a new line below
o

" Introduce yourself: I am <NAME>, I am <AGE> yea
" Write your changes
:w
```

---
## Explore the visual mode.

```vim
" Go to the first line of `people.txt`
gg

" Move to the first character of the line
0

" Move 4 words forward
4w

" Enter visual mode
^v

" Goto the last line
G

" Move to the end of the next word
e

" Replace the selected text
c
I'm
<ESC>

" Write your changes
:w
```

---
## Undo and redo your changes.

```vim
" Undo your last change
u

" Redo your last change
^r
```

---
## Enable spelling and fix some errors.

```vim
set spell

" Next spelling error
]s

" Previous spelling error
[s

" Fix the spelling error under the cursor
z=

" Add the word under the cursor to the dictionary.
zg
```

---
## Explore what buffers are.

```vim
" Open another file
e intro/tasks.md

" Go to the next and previous buffers
:bnext
:bprevious

" List your buffers
:buffers

" Go to a specif buffer
:buffer N
```

---
## Split some windows and move through them.

```vim
" Split vertically
:vsplit

" Move to the window to your right
^wl

" Split your window horizontally
:split

" Move to the window below
^wj

" Close the windows one by one
zz
zz
```

---
## Search your buffer for some text and move through your matches.

```vim
" Search for `Mexico` matches
/Mexico

" Move through your matches
n
N

" Hide your matches
:nohlsearch
```

---
## Replace some matches.

```vim
" Replace the first match on your current line
:s/am/AM

" Replace all the matches on your current line
:s/am/AM/g

" Replace each line first match throughout your file
:%s/Mexico/México
```

---
## Execute commands

```vim
" Execute commands via the command line
:!git log

" Open a terminal instance
:terminal

" Enter the `terminal` mode
a

" Type the same command: git log

" Exit the terminal command
^\^n
```

---
## Explore the quickfix list through vimgrep.

```vim
" Search for `Mexico` matches throughout your project
:vimgrep /Mexico/g **/*.txt

" Open the quickfix list with all your matches
:copen

" Explore the quickfix list and jump to a match
<CR>
```

---
## Record and run some macros.

```vim
" Go to the firs line and the first char
gg
0

" Start recording a macro at register `a`
qa
2cw
I'm
<ESC>
j
0
q

" Move the first char of the line below
j
0

" Apply your macro
@a

" Repeat your macro N times
10@a
```

---
## Send neovim to the background and recover it.

```vim
^z
```

Now, in your terminal, bring back Neovim.
```sh
fg
```
