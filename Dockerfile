# LORD USERBOT
FROM koala21/kampangbot:buster

#
# LORD
#
RUN git clone -b main https://github.com/xzaliman/1024 /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/xzaliman/1024/main/requirements.txt

CMD ["python3","-m","userbot"]
