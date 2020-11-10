FROM centos:latest

RUN yum -y update && \
    yum -y install \
        git \
        tar \
        net-tools \
        glibc-locale-source \ 
        glibc-langpack-en \
        libpng12 \
        compat-libtiff3 \
        redhat-lsb

RUN localedef -i en_US -f UTF-8 en_US.UTF-8

WORKDIR /root

COPY bin/ANSYSLICMAN_2020R2_LINX64.tar .
RUN mkdir 2020R2 && \
    tar -xf ANSYSLICMAN_2020R2_LINX64.tar -C ~/2020R2 && \
    ~/2020R2/INSTALL -silent -LM

COPY entrypoint.sh /usr/bin/.
RUN chmod 755 /usr/bin/entrypoint.sh

RUN rm -rf ~/2020R2 && rm -f ANSYSLICMAN_2020R2_LINX64.tar
RUN yum -y clean all

ENTRYPOINT ["/usr/bin/entrypoint.sh"]