# docker build -t gobot .
# docker run -i -t --rm -p 8080:8080 -v `pwd`:/src gobot
# curl http://`boot2docker ip`:8080

FROM node:0.12

WORKDIR /src
ADD package.json /src/
RUN ["npm install"]
RUN ["npm install -g nodemon"]

EXPOSE 8080
# CMD ["/bin/bash"]
CMD npm install && nodemon server.js