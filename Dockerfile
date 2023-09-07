FROM sphinxdoc/sphinx:latest

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"
RUN apt-get update -y && apt-get install -y python3-sphinx python3-recommonmark

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

ENTRYPOINT ["/entrypoint.py"]
