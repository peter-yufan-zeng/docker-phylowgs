ADD file:a48a5dc1b9dbfc632f6cf86fe27b770b63f07a115c98c4465dc184e303a4efa1 in /
/bin/sh -c [ -z "$(apt-get indextargets)" ]
/bin/sh -c set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
/bin/sh -c mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
 CMD ["/bin/bash"]
 /bin/sh -c apt-get update && apt-get install -y gfortran build-essential make gcc build-essential python python-dev wget libgsl23 gsl-bin libgsl-dev python-pip git libblas-dev liblapack-dev
 /bin/sh -c pip2 install PyVCF
 /bin/sh -c pip2 install numpy scipy
 /bin/sh -c pip2 install tet2
 WORKDIR /opt
 /bin/sh -c git clone https://github.com/morrislab/smchet-challenge.git && cd smchet-challenge && git checkout master
 /bin/sh -c git clone https://github.com/morrislab/phylowgs.git && cd phylowgs && git checkout master
 /bin/sh -c cd phylowgs && g++ -o mh.o -O3 mh.cpp util.cpp `gsl-config --cflags --libs`
