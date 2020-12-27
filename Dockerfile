FROM node:12.14.1-alpine

RUN apk add git
RUN npm install -g gatsby-cli
WORKDIR /app
RUN gatsby new malak_resume https://github.com/barancezayirli/gatsby-starter-resume-cms

WORKDIR /app/malak_resume

RUN ls
RUN npm install 
EXPOSE 8000
CMD ["gatsby", "develop", "-H", "0.0.0.0" ]

