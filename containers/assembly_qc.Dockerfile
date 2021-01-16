FROM nfcore/base:1.12.1

LABEL base.image="nfcore/base:1.12.1"
LABEL software="Bactopia - assembly_qc"
LABEL software.version="1.5.x"
LABEL description="A flexible pipeline for complete analysis of bacterial genomes"
LABEL website="https://bactopia.github.io/"
LABEL license="https://github.com/bactopia/bactopia/blob/master/LICENSE"
LABEL maintainer="Robert A. Petit III"
LABEL maintainer.email="robert.petit@emory.edu"

COPY conda/linux/assembly_qc.yml /
RUN conda env create -q -f assembly_qc.yml && conda clean -y -a
ENV PATH /opt/conda/envs/bactopia-assembly_qc/bin:$PATH