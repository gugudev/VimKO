call plug#begin()

" -----------------------------------------------------------------------------
" General
" -----------------------------------------------------------------------------
  " Insert and delete brakets, parens, quotes.
  Plug 'jiangmiao/auto-pairs'

  " Slack on VIM
  Plug 'yaasita/edit-slack.vim'

  Plug 'sheerun/vim-polyglot'

  " Edit selected code in new buffer
  Plug 'chrisbra/NrrwRgn'

  " Grammar Checker
  Plug 'rhysd/vim-grammarous'

  " Highligh the cursor word
  Plug 't9md/vim-quickhl'

  " Linters
  Plug 'w0rp/ale'

  " Expand region
  Plug 'terryma/vim-expand-region'

  " Tmux tabs integration
  Plug 'christoomey/vim-tmux-navigator'

  " Send commands to other tmux tabs from vim
  Plug 'benmills/vimux'
    let g:VimuxOrientation = "h"
    let g:VimuxHeight = "40"
    let g:VimuxPromptString = "> "

  " Highligh cursor word
  Plug 'itchyny/vim-cursorword'

  " Multiple cursors
  Plug 'terryma/vim-multiple-cursors'

  " Alig code
  Plug 'godlygeek/tabular',{  'on': 'Tabularize'}

  " Comments
  Plug 'tpope/vim-commentary'

  " Find and Replace
  Plug 'brooth/far.vim',{  'on': ['Far',  'Farp',  'F'] }
  Plug 'jremmen/vim-ripgrep'

  " Allow repeat to work with plugins
  Plug 'tpope/vim-repeat'

  " Visual indentation
  Plug 'Yggdroot/indentLine'

  " Nice starup
  Plug 'mhinz/vim-startify'

  " Highligh empty space and auto remove it
  Plug 'ntpeters/vim-better-whitespace'
    let g:better_whitespace_enabled=0
    let g:strip_whitespace_on_save=0

  " Better motion
  Plug 'easymotion/vim-easymotion'

  " Bookmarks
  Plug 'MattesGroeger/vim-bookmarks'

  " Nice foldings
  Plug 'tmhedberg/SimpylFold'

  " Navigate and highlight matching words
  Plug 'andymass/vim-matchup'

  " Open current workd in Dash
  Plug 'rizzatti/dash.vim'

" -----------------------------------------------------------------------------
" Theme
" -----------------------------------------------------------------------------
  Plug 'rakr/vim-one'

" -----------------------------------------------------------------------------
" Fuzzy finder
" -----------------------------------------------------------------------------
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  source $HOME/.config/nvim/config/plugins/fzf.vimrc
  let g:fzf_layout = { 'down': '~40%' }

" -----------------------------------------------------------------------------
" Sidebar
" -----------------------------------------------------------------------------
    Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
    Plug 'ryanoasis/vim-devicons',{ 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
      autocmd! User nerdtree exe 'source' '$HOME/.config/nvim/config/plugins/nerdtree.vim'

" -----------------------------------------------------------------------------
" Airline
" -----------------------------------------------------------------------------
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    let g:airline_section_a = ''
    let g:airline_section_b = ''
    let g:airline_section_z = '%3p%%/%L'
    let g:airline_section_y = ''
    let g:airline_section_x = ''
    let g:airline#extensions#tagbar#enabled = 0
    let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" -----------------------------------------------------------------------------
" Autocomplete and Snippets
" -----------------------------------------------------------------------------
  Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

  Plug 'SirVer/ultisnips'
    let g:UltiSnipsEditSplit="vertical"
    let g:UltiSnipsExpandTrigger="<C-l>"

  Plug 'honza/vim-snippets'
  Plug 'wellle/tmux-complete.vim'
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
  Plug 'ervandew/supertab'

" -----------------------------------------------------------------------------
" Text Objects
" -----------------------------------------------------------------------------
  Plug 'kana/vim-textobj-user'
  Plug 'kana/vim-textobj-entire'
  Plug 'lucapette/vim-textobj-underscore'
  Plug 'rhysd/vim-textobj-ruby'
  Plug 'kana/vim-textobj-indent'
  Plug 'thinca/vim-textobj-function-javascript'
  Plug 'inside/vim-textobj-jsxattr'
  Plug 'whatyouhide/vim-textobj-erb'
  " Plug 'kana/vim-textobj-function'

  Plug 'tpope/vim-surround'
    let g:surround_35  = "#{\r}"    " #
    let g:surround_45 = "<% \r %>"  " -
    let g:surround_61 = "<%= \r %>" " =

" -----------------------------------------------------------------------------
" Ctags
" -----------------------------------------------------------------------------
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-easytags'
    let g:easytags_always_enabled = 1
    let g:easytags_async = 1
    let g:easytags_dynamic_files = 1
  Plug 'majutsushi/tagbar'

  Plug 'junegunn/vim-peekaboo'
  Plug 'junegunn/goyo.vim'
    let g:goyo_height='95%'
    let g:goyo_width='120'
    autocmd! User GoyoLeave nested exec ':so ~/.config/nvim/init.vim'

" -----------------------------------------------------------------------------
" Git
" -----------------------------------------------------------------------------
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'Xuyuanp/nerdtree-git-plugin',{  'on': ['NERDTreeToggle', 'NERDTreeFind'] }
  Plug 'jreybert/vimagit'

" -----------------------------------------------------------------------------
" Ruby
" -----------------------------------------------------------------------------
  Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
  Plug 'tpope/vim-rails'
  Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }
  Plug 'tpope/vim-endwise', { 'for': 'ruby' }
  " Plug 'uplus/deoplete-solargraph', { 'for': 'ruby' }
  " Plug 'noprompt/vim-yardoc'
  Plug 'tpope/vim-cucumber'
  Plug 'AndrewRadev/splitjoin.vim'
    " let g:blockle_mapping = '<leader>b'

" -----------------------------------------------------------------------------
" Elixir
" -----------------------------------------------------------------------------
  Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }

" -----------------------------------------------------------------------------
" Go
" -----------------------------------------------------------------------------
  Plug 'fatih/vim-go'

" -----------------------------------------------------------------------------
" Javascript
" -----------------------------------------------------------------------------
  Plug 'Galooshi/vim-import-js'

  " ES2015 code snippets 
  Plug 'epilande/vim-es2015-snippets'

  " React code snippets
  Plug 'epilande/vim-react-snippets'

" -----------------------------------------------------------------------------
" Python
" -----------------------------------------------------------------------------
  Plug 'zchee/deoplete-jedi', { 'for': 'python' }

" -----------------------------------------------------------------------------
" HTML
" -----------------------------------------------------------------------------
  Plug 'mattn/emmet-vim'

" -----------------------------------------------------------------------------
" Ansible
" -----------------------------------------------------------------------------
  Plug 'pearofducks/ansible-vim', { 'for': 'yaml.ansible' }

" -----------------------------------------------------------------------------
" Docker
" -----------------------------------------------------------------------------
  Plug 'ekalinin/Dockerfile.vim'
  call plug#end()
