# tgsend.sh

Send message or text files to your own Telegram Bot API using BotFather:

* https://core.telegram.org/bots#3-how-do-i-create-a-bot
* https://core.telegram.org/bots/api#sendmessage

Requires jq json tool install:

```
apt-get -y install jq
```
or 
```
yum -y install jq
```

# Usage

Create and populate `tgtoken.ini` file in same directory as tgsend.sh with the following:

```
tgtoken='YOUR_TELEGRAM_BOT_API_TOKEN'
tgchatid='YOUR_TELEGRAM_CHATID'
tgapi="https://api.telegram.org/bot$tgtoken"
```

If you don't know your Telegram chat id, you can leave it empty and script will derive the chat id from the Telegram API via your Bot API token credentials.

```
./tgsend.sh 

Usage:

./tgsend.sh send "your message in double quotes"
./tgsend.sh sendhtml "your message in double quotes"

disable notifications:

./tgsend.sh sendq "your message in double quotes"
./tgsend.sh sendhtmlq "your message in double quotes"

send file

./tgsend.sh sendf filename
```

# Examples

Send messages in plain text or HTML format

```
./tgsend.sh send "message text"
{
  "from": "centmin",
  "to": "George",
  "date": "2021-07-05T08:13:12Z",
  "message": "message text"
}
```
```
./tgsend.sh sendhtml "message <i>html</i>"
{
  "from": "centmin",
  "to": "George",
  "date": "2021-07-05T08:13:20Z",
  "message": "message html"
}
```

![Telegram Messages](/images/telegram-send-02.png)

Send text file

```
./tgsend.sh sendf test.txt
{
  "from": "centmin",
  "to": "George",
  "date": "2021-07-05T08:50:19Z",
  "document": "test.txt",
  "mime": "text/plain",
  "size": 2
}
```

![Telegram File Send](/images/telegram-send-03.png)