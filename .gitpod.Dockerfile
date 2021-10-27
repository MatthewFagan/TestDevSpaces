FROM devfactory/workspace-full

USER root

RUN wget https://github.com/cli/cli/releases/download/v2.2.0/gh_2.2.0_linux_arm64.deb -O /tmp/gh.deb && apt install /tmp/gh.deb && rm -f /tmp/gh.deb

# RUN sudo sed -i 's/primary: 68/primary: 0/g' /ide/out/vs/workbench/workbench.web.api.js