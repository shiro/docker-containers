FROM debian:latest

# RUN echo 'deb http://deb.debian.org/debian experimental main' >> /etc/apt/sources.list
run echo 'deb http://http.us.debian.org/debian/ unstable non-free contrib main' >> /etc/apt/sources.list

# python-neovim python3-neovim
RUN apt-get update && apt install -y git zsh neovim python-neovim python3-neovim

CMD bash
