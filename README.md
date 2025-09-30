My NeoVim setup

For asm_lsp:

Install cargo and rust like this:

sudo apt install libssl-dev

sudo apt install pkg-config

curl https://sh.rustup.rs -sSf | sh

from site: https://doc.rust-lang.org/cargo/getting-started/installation.html

asmfmt from Mason as formatter.

# nvim commands
\<leader> = space
## completions.lua
<ctrl - b> scroll document backwards
<ctrl - f> scroll document forwards
<ctrl - space> Initiate completions (maybe)
<ctrl - e > abort completions
<CR> confirm completions
## neo-tree.lua
<ctrl - n> neo-tree reveal
<ctrl - m> neo-tree close
## none-ls.lua
\<leader\>gf format buffer
## lsp-config.lua
K - code popup information. eg function definition.
gd - goto definition.
\<leader\>ca - Code action.
## telescope.lua
<ctrl - p> find files
\<leader\>fg live grep
