FROM sphinxdoc/sphinx:latest

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"
RUN apt-get update -y &&  apt install -y --no-install-recommends sphinx-doc python-recommonmark-doc

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
