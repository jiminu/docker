FROM ubuntu:20.04

ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ENV LC_ALL=C.UTF-8

# essential install
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update \ 
    && apt-get install -y \
    git \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release  

# install docker
# RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
# RUN echo \ 
#     "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
#     $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
# RUN apt-get update \
#     && apt-get install -y \
#     docker-ce \
#     docker-ce-cli \
#     containerd.io

RUN mkdir -p /usr/local/nvm
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 16.13.1

# install node & nest
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

RUN source $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias defalut $NODE_VERSION \
    && nvm use defalut \
    && apt install -y npm
    
RUN npm install -g @nestjs/cli

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

RUN mkdir /app
RUN git clone https://github.com/jiminu/kokoa-clone.git /app

# install oh my zsh
RUN apt install -y zsh
RUN chsh -s /bin/zsh

RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
RUN git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
RUN git clone https://github.com/zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions

RUN perl -pi -w -e 's/ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/g;' ~/.zshrc 
RUN perl -pi -w -e "s/plugins=.*/plugins=(git ssh-agent zsh-autosuggestions zsh-syntax-highlighting zsh-completions)/g;" ~/.zshrc

RUN echo 'LS_COLORS="ow=01;36;40" && export LS_COLORS' >> ~/.zshrc
RUN echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.zshrc
RUN echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.zshrc