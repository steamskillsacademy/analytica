FROM postgres:14

# Bind up and down cursor keys to incrementally search through the history
RUN echo '"\e[A": history-search-backward' >> /etc/inputrc
RUN echo '"\e[B": history-search-forward' >> /etc/inputrc

# Colouring bash
RUN echo 'PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "' >> ~/.bashrc
RUN echo 'alias ls="ls --color=auto -h"' >> ~/.bashrc
RUN echo 'alias ll="ls --color=auto -lh"' >> ~/.bashrc
RUN echo 'alias grep="grep --color=auto"' >> ~/.bashrc

# Install bash-completion
RUN apt-get update
RUN apt-get install -y bash-completion
RUN echo '[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion' >> ~/.bashrc

# Install make
RUN apt-get install -y make
