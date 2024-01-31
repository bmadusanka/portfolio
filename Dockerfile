From squidfunk/mkdocs-material:9

RUN pip install mkdocs-glightbox

RUN mkdir -p /opt/apps/

COPY . /opt/apps/

COPY mkdocs.yml /opt/apps/

WORKDIR /opt/apps

ENTRYPOINT ["mkdocs", "serve", "--dev-addr", "0.0.0.0:8080"]
