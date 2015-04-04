FROM fedora:21

ADD . /app
WORKDIR /app
RUN yum -y install npm
RUN yum update vim-minimal
RUN yum -y install vim
RUN useradd -d /home/term -m -s /bin/bash term
RUN echo 'term:term' | chpasswd

EXPOSE 3000

ENTRYPOINT ["node"]
CMD ["app.js", "-p", "3000"]
