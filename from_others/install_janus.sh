cd ~
git clone https://github.com/meetecho/janus-gateway.git
cd janus-gateway
sh autogen.sh
#./configure --prefix=/opt/janus --disable-rabbitmq --disable-mqtt --enable-docs
./configure --prefix=/opt/janus \
    --enable-post-processing \
    --disable-boringssl \
    --enable-data-channels \
    --enable-rabbitmq \
    --enable-mqtt \
    --enable-unix-sockets \
    --enable-dtls-settimeout \
    --enable-plugin-echotest \
    --enable-plugin-recordplay \
    --enable-plugin-sip \
    --enable-plugin-videocall \
    --enable-plugin-voicemail \
    --enable-plugin-textroom \
    --enable-plugin-audiobridge \
    --enable-plugin-nosip \
    --enable-all-handlers

make
make install
make configs
