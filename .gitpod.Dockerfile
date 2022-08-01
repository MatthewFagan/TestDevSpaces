FROM devfactory/workspace-centos7:test2

#RUN yum install -y epel-release
#RUN yum install -y which tar make libsmi gcc libxml2-devel flex bison perl rpm-build git mysql-devel libdb-devel perl-DBI perl-XML-Simple
#RUN yum groupinstall -y 'Development Tools'
#RUN yum install -y https://nexus.devfactory.com/repository/lithium2-raw-release/build-tools/c-ares/TextPassC-ares-1.10.0-05.02.05.00.RHEL7.x86_64.rpm
#RUN yum install -y https://nexus.devfactory.com/repository/lithium2-raw-release/build-tools/snacc/snacc-1.3-4.fc12.x86_64.rpm
#
#
#RUN wget --no-check-certificate https://download.libsodium.org/libsodium/releases/old/libsodium-1.0.16.tar.gz && \
#    tar -xvzf libsodium-1.0.16.tar.gz && \
#    cd libsodium-1.0.16 && \
#    ./configure && \
#    make && make check && \
#    make install && \
#    cd .. && \
#    rm -rf libsodium*
#
#RUN cd /usr/local/  && \
#    wget https://downloads.mysql.com/archives/get/p/14/file/mysql-cluster-gpl-7.4.12-linux-glibc2.5-x86_64.tar.gz && \
#    tar -xvzf mysql-cluster-gpl-7.4.12-linux-glibc2.5-x86_64.tar.gz
