FROM ubuntu:bionic
CMD ["/bin/bash"]
RUN apt-get update && apt-get install -y gfortran build-essential make gcc build-essential python python-dev wget libgsl23 gsl-bin libgsl-dev python-pip git libblas-dev liblapack-dev
RUN pip2 install PyVCF
RUN pip2 install numpy scipy
RUN pip2 install ete2
WORKDIR /opt
RUN git clone https://github.com/morrislab/smchet-challenge.git && cd smchet-challenge && git checkout master
RUN git clone https://github.com/morrislab/phylowgs.git && cd phylowgs && git checkout master
RUN cd phylowgs && g++ -o mh.o -O3 mh.cpp util.cpp `gsl-config --cflags --libs`
