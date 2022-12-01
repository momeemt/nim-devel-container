FROM amd64/ubuntu
ENV PATH $PATH:~/.nimble/bin
RUN apt-get update -y && apt-get install -y curl gcc xz-utils \
    && curl https://nim-lang.org/choosenim/init.sh > init.sh \
    && chmod +x init.sh && ./init.sh -y \
    && choosenim devel -y
