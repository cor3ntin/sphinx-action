FROM sphinxdoc/sphinx:latest

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"
RUN apt-get update -y &&  apt install -y --no-install-recommends sphinx-doc
sudo pip install sphinx recommonmark myst-parser


ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
