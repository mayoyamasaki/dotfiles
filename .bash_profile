# brew
export PATH=/usr/local/bin:$PATH

# alias
alias rm='rmtrash'
alias mv='mv -i'
alias py='python3'
alias ipy='ipython'
alias rusti='rustup run nightly-2016-08-01 ~/.cargo/bin/rusti'
alias md='killall MacDown; open -a ~/Applications/MacDown.app'

# terminal
PS1="\W$ "

# postgresql
export PGDATA=/usr/local/var/postgres

# python
# pyenv
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# coda for GPU
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH

# Rust
export PATH=$HOME/.cargo/bin/:$PATH
export OPENSSL_INCLUDE_DIR=`brew --prefix openssl`/include
export OPENSSL_LIB_DIR=`brew --prefix openssl`/lib
export RUST_SRC_PATH=`echo ~/.multirust/toolchains/*/lib/rustlib/src/rust/src`
