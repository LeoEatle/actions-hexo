FROM node:latest

LABEL com.github.actions.name="GitHub Action for hexo"
LABEL com.github.actions.description="Simple and clean hexo CLI."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="green"

RUN npm install hexo-cli -g

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]