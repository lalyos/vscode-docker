FROM codercom/code-server

RUN sudo apt-get update \
  && sudo apt-get install -y nodejs npm \
  && sudo npm install -g typescript

RUN code-server --install-extension redhat.vscode-yaml \
  --install-extension ms-kubernetes-tools.vscode-kubernetes-tools

RUN cd /home/coder/.local/share/code-server/extensions/redhat.vscode-yaml-0.5.3 \
  && npm i

CMD [ "-p", "8080" , "-N",  "-H" ]