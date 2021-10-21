# raspi_camera

### 説明
dockerコンテナ内部でカメラを使用する

### 設定方法

ラズパイのローカルにてカメラの有効化する

/etc/udev/rules.d/99-camera.rulesに下記を書き込む<br>
SUBSYSTEM=="vchiq",MODE="0666"

### 起動方法

```
git clone https://github.com/kmchord9/raspi_camera.git
cd raspi_camera

#コンテナ起動
docker-compose up -d
#コンテナにログイン
docker exec -it camera /bin/bash
```

### 使用したdockerイメージについて
dockerイメージは公式のraspiOS（2021-05-07-raspios-buster-armhf-lite.zip）から<br>
作成したものを使用している。<br>

作成したイメージは下記で得られる<br>
```
docker pull dockerHubにkmchord9/raspios-buster-armhf-lite:20211021opencv-2
```
### 参考
[DockerとOpenCV内のRaspberryPiカメラにアクセスする方法](https://ichi.pro/docker-to-opencvnai-no-raspberrypi-kamera-ni-akusesusuru-hoho-105150967000465 "タイトル")<br>
[ARM環境のRaspbianイメージをx86上のDockerで動かす](https://qiita.com/hishi/items/61652e2d9755e17630de "タイトル")<br>


