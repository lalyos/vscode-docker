FROM codercom/code-server

USER root
RUN  apt-get update \
  &&  apt-get install -y nodejs npm \
  &&  npm install -g typescript
USER coder

RUN code-server --install-extension redhat.vscode-yaml \
  --install-extension ms-kubernetes-tools.vscode-kubernetes-tools

ENV YAML_EXT=0.6.1
RUN cd /home/coder/.local/share/code-server/extensions/redhat.vscode-yaml-$YAML_EXT \
  && npm i 2> /dev/null \
  ; mv node_modules node_modules.tmp \
  && mv node_modules.tmp node_modules \
  && npm i

CMD [ "-p", "8080" , "-N",  "-H" ]