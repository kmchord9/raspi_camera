FROM kmchord9/raspios-buster-armhf-lite:2021-05-07

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
    libhdf5-103 \
    libharfbuzz0b \
    liblapack3 \
    libatlas-base-dev \
    libwebp6 \
    libtiff5 \
    libjasper1 \
    libilmbase23 \
    libopenexr23 \
    libavcodec-extra58 \
    libavformat58 \
    libswscale5 \
    libqtgui4 \
    libqt4-test \
    libgtk-3-0

RUN pip3 install \
    opencv-python \
    picamera

ENV DISPLAY :0.0

CMD ["bin/bash"]
