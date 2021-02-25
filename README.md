vim jpl
=======

*vim-jpl* is a [Vim](<http://www.vim.org>) plugin for
[JPL](< https://github.com/utah-cs4470-sp21/jpl/blob/main/spec.md>), an
array based toy language for the compilers course at the University of Utah.

Features
--------

-   `.jpl` file detection.

-   Syntax highlighting.

Installation
------------

You can use your favorite
[pathogen](<https://github.com/tpope/vim-pathogen>)-compatible plugin manager to
install *vim-jpl*.

If you're using [vim-plug](<https://github.com/junegunn/vim-plug>), for example,
follow the following steps:

1.  Edit your .vimrc and add a `Plug` declaration for *vim-jpl*.

    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ vim
    call plug#begin()
    " ...
    Plug 'gavinleroy/vim-jpl'
    " ...
    call plug#end()
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

2.  Restart Vim

3.  `:PlugInstall` to install the plugin.

License
-------

*vim-jpl* is distributed under the MIT License
[LICENSE](<https://github.com/gavinleroy/vim-jpl/blob/main/LICENSE>) for
more details.

Planned Improvements
--------------------

-   more vibrant syntax highlighting.

-   customizability using [Syntastic](<https://github.com/scrooloose/syntastic>)
