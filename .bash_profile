export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export CCACHE_CPP2=yes
export ANDROID_NDK=/usr/local/Cellar/android-ndk/9/
export ANDROID_HOME=/usr/local/opt/android-sdk
export JAVA_HOME=`/usr/libexec/java_home -v '1.6*'`

PATH=~/.cabal/bin:$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=~/bin:/usr/local/opt/ccache/libexec:$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
	. `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

eval `dircolors -b`

alias ls='ls --color=auto --group-directories-first'
alias ll='ls --color=auto --group-directories-first -lhF'
alias la='ls --color=auto --group-directories-first -lAhF'
alias subl='subl -n'
alias ..='cd ..'
alias ....='cd ../..'

# paranoid
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias rmdir='rmdir -p'

alias m='make -j 8'

YELLOW=$'\033[0;33m'
GREEN=$'\033[1;32m'
RED=$'\033[1;31m'
NONE=$'\033[m'

function __exit_status() {
	local exit_status="$?"

	if [ ${exit_status} != 0 ]; then
		echo -e "${RED}\xE2\x98\xA0${NONE} "
	fi
}

function __git_ps1_prefix() {
	if [ "\$(type -t __git_ps1)" ]; then
		echo -n " "
	fi
}

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWSTASHSTATE=1
PROMPT_COMMAND='__git_ps1 "${YELLOW}\w${NONE}\n$(__exit_status)" "\\\$ " "(%s) "'

# Auto-generated from sugoi for Android
export ANDROID_SDK=/usr/local/Cellar/android-sdk/22.3
export ANDROID_NDK=/usr/local/Cellar/android-ndk/9
alias android-cmake='ANDROID_NDK="" ANDROID_STANDALONE_TOOLCHAIN="/Users/spacecadet/projects/prezi/src/sugoi/build/android-arm-4.8-v14" cmake -DCMAKE_TOOLCHAIN_FILE="/Users/spacecadet/projects/prezi/src/sugoi/cmake/toolchains/android.toolchain.cmake"'
alias android-make='ANDROID_NDK="" make'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[[ -s "/Users/spacecadet/projects/prezi/src/sugoi/scripts/sugoi_osx" ]] && source "/Users/spacecadet/projects/prezi/src/sugoi/scripts/sugoi_osx" # Load sugoi

export CONFIG_SITE="/Users/spacecadet/config.site"