FROM ubuntu:bionic
CMD ["/bin/bash"]
/bin/sh -c apt-get update && apt-get install -y gfortran build-essential make gcc build-essential python python-dev wget libgsl23 gsl-bin libgsl-dev python-pip git libblas-dev liblapack-dev
/bin/sh -c pip2 install PyVCF
/bin/sh -c pip2 install numpy scipy
/bin/sh -c pip2 install tet2
WORKDIR /opt
/bin/sh -c git clone https://github.com/morrislab/smchet-challenge.git && cd smchet-challenge && git checkout master
/bin/sh -c git clone https://github.com/morrislab/phylowgs.git && cd phylowgs && git checkout master
/bin/sh -c cd phylowgs && g++ -o mh.o -O3 mh.cpp util.cpp `gsl-config --cflags --libs`
