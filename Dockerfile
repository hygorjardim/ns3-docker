FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y \
        git \
        mercurial \
        gcc \
        g++ \
        vim \
        python \
        python-dev \
        python-setuptools \
        qt5-default \
        python-pygraphviz \
        python-kiwi \
        python-pygoocanvas \
        libgoocanvas-dev \
        ipython \
        autoconf \
        cvs \
        bzr \
        unrar \
        gdb \
        valgrind \
        uncrustify \
        flex \
        bison \
        libfl-dev \
        tcpdump \
        gsl-bin \
        libgsl2 \
        libgsl-dev \
        sqlite \
        sqlite3 \
        libsqlite3-dev \
        libxml2 \
        libxml2-dev \
        cmake \
        libc6-dev \
        libc6-dev-i386 \
        libclang-dev \
        llvm-dev \
        automake \
        libgtk2.0-0 \
        libgtk2.0-dev \
        vtun \
        lxc \
        libboost-signals-dev \
        libboost-filesystem-dev

RUN mkdir -p /usr/ns3
WORKDIR /usr 

RUN wget https://www.nsnam.org/release/ns-allinone-3.30.tar.bz2  && \
    tar -jxvf ns-allinone-3.30.tar.bz2

RUN cd ns-allinone-3.30 && ./build.py --enable-examples --enable-tests

RUN ln -s /usr/ns-allinone-3.30/ns-3.30/ /usr/ns3/

RUN apt-get clean && \
    rm -rf /var/lib/apt && \
    rm ns-allinone-3.30.tar.bz2