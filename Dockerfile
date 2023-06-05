FROM nodered/node-red:3.0.2-16
COPY flows.json         /data/flows.json
COPY flows_cred.json    /data/flows_cred.json
COPY settings.js        /data/settings.js
WORKDIR /usr/src/node-red
RUN npm install node-red-dashboard@3.4.0
RUN npm install node-red-node-serialport@0.15.0
ENV SERIALPORT=/dev/ttyACM0
ENV NODEREDLABEL=blinky-bus-serial-tray
ENV NODEREDPORT=1881
ENV ENABLE_NODERED_EDITOR=0
