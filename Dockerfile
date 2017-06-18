FROM jupyter/datascience-notebook

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    xz-utils

USER $NB_USER
    
RUN julia -e 'Pkg.init()' && \
    julia -e 'Pkg.update()' && \
    julia -e 'Pkg.add("HDF5")' && \
    julia -e 'Pkg.add("PyPlot")' && \
    julia -e 'Pkg.add("Plots")' && \
    julia -e 'Pkg.add("RDatasets")' && \
    julia -e 'Pkg.add("IJulia")' && \
    # Precompile Julia packages \
    julia -e 'using HDF5' && \
    julia -e 'using PyPlot' && \
    julia -e 'using Plots' && \
    julia -e 'using RDatasets' && \
    julia -e 'using IJulia'