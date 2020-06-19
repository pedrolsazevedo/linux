## Alias


1. Edit **`.bashrc`**
```bash
vim .bashrc
```

2. Add the  following text
```
alias lf='ls -aiLlhH'
```

**Notes:**

Explanation of the parameters:

-a # do not ignore entries starting with .  
-i # print the index number of each file  
-L # when showing file information for a symbolic link, show information for the file the link references rather than for the link itself  
-l # use a long listing format  
-h # with -l and/or -s, print human readable sizes (e.g., 1K 234M 2G)  
-H # follow symbolic links listed on the command line  

## Vim

1. Edit **`vimrc`**
```bash
vim /etc/vim/vimrc
```

2. Add the following text:
```config
" Custom config
" ## General
set number              " # Show line numbers  
set linebreak           " # Break lines at word (requires Wrap lines)  
set showbreak=+++       " # Wrap-broken line prefix  
set textwidth=100       " # Line wrap (number of cols)  
set showmatch           " # Highlight matching brace
set visualbell          " # Use visual bell (no beeping)
set hlsearch            " # Highlight all search results
set smartcase           " # Enable smart-case search
set ignorecase          " # Always case-insensitive
set incsearch           " # Searches for strings incrementally
set autoindent          " # Auto-indent new lines
set expandtab           " # Use spaces instead of tabs
set shiftwidth=2        " # Number of auto-indent spaces
set smartindent         " # Enable smart-indent
set smarttab            " # Enable smart-tabs
set softtabstop=2       " # Number of spaces per Tab
" ## Advanced
set ruler               " # Show row and column ruler information
set undolevels=1000     " # Number of undo levels
set backspace=indent,eol,start  " # Backspace behaviour
set backupdir=/opt/vimbackup/	" # Backup directories
```
