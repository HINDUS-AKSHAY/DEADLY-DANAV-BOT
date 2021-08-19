FROM deadly-fighters/deadly-kaal-bot:latest

#clonning repo 
RUN git clone https://github.com/DEADLY-FIGHTERS/MIKASA-USERBOT.git /root/DeadlyBot

#working directory 
WORKDIR /root/DeadlyBot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","DeadlyBot"]
