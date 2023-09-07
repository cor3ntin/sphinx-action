FROM sphinxdoc/sphinx:latest

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"
RUN apt-get update -y &&  apt install -y --no-install-recommends sphinx-doc python-recommonmark-doc recommonmark-scripts
sudo pip2 install sphinx recommonmark
sudo pip install sphinx recommonmark


ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
