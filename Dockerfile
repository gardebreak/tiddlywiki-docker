FROM node:alpine

RUN npm install -g tiddlywiki@5.2.5

# Setup wiki volume
VOLUME /var/lib/tiddlywiki
WORKDIR /var/lib/tiddlywiki

# Add init-and-run script
ADD init-and-run-wiki /usr/local/bin/init-and-run-wiki

# Meta
CMD ["/bin/sh", "/usr/local/bin/init-and-run-wiki"]
