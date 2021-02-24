FROM jupyter/datascience-notebook:lab-2.2.9

WORKDIR /workdir
EXPOSE 8888

# jupyter lab extensions.
RUN conda install -c anaconda -y nodejs && \
    conda install -c conda-forge jupyterlab-snippets && \
    conda install -c conda-forge jupyterlab-git -y && \
    jupyter labextension install jupyterlab-plotly@4.14.3 --no-build && \
    jupyter labextension install @axlair/jupyterlab_vim --no-build && \
    jupyter lab build

# sphinx setting
RUN conda install sphinx -y && \
    pip install sphinx-autodoc-typehints

