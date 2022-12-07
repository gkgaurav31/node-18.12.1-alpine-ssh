FROM node:18.12.1-alpine

COPY sshd_config /etc/ssh/
COPY init.sh /app/init.sh

RUN apk update 
RUN apk add --update openssh bash openrc \
    && openrc \
    && echo "root:Docker!" | chpasswd \
    && chmod 755 /app/init.sh

COPY sshd_config /etc/ssh/

WORKDIR /app

COPY app/package.json .
RUN npm install

COPY app .

CMD [ "/app/init.sh" ]