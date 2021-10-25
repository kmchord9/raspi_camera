FROM kmchord9/raspios-buster-armhf-lite:20211021opencv-2

RUN apt-get update

RUN pip3 install \
    tornado \
    picamera \
    asyncio

ENV DISPLAY :0.0

WORKDIR /app

CMD ["/bin/bash"]
