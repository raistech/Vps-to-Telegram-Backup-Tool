# Install Program

```
bash <(curl -Ls https://raw.githubusercontent.com/lahirubro123/Vps-to-Telegram-Backup-Tool/master/install.sh)
```

# Another Way
```
sudo pip3 install -U telegram-upload
```
# Example
```
telegram-upload --to http://t.me/my_backups98_bot --caption SERVER_03 /etc/x-ui-english/x-ui-english.db
```

```
telegram-upload --to me --caption SERVER_03 /etc/x-ui-english/x-ui-english.db
```




telegram-upload

Upload one or more files to Telegram using your personal account. The maximum file size is 2 GiB and by default they will be saved in your saved messages.



Options

--to <to>

    Phone number, username, invite link or “me” (saved messages). By default “me”.

--config <config>

    Configuration file to use. By default “/root/.config/telegram-upload.json”.

-d, --delete-on-success

    Delete local file after successful upload.

--print-file-id

    Print the id of the uploaded file after the upload.

--force-file

    Force send as a file. The filename will be preserved but the preview will not be available.

-f, --forward <forward>

    Forward the file to a chat (alias or id) or user (username, mobile or id). This option can be used multiple times.

--directories <directories>

    Defines how to process directories. By default directories are not accepted and will raise an error.

    Options

        fail|recursive

--large-files <large_files>

    Defines how to process large files unsupported for Telegram. By default large files are not accepted and will raise an error.

    Options

        fail|split

--caption <caption>

    Change file description. By default the file name.

--no-thumbnail

    Disable thumbnail generation. For some known file formats, Telegram may still generate a thumbnail or show a preview. NOTE: This argument is mutually exclusive with arguments: [thumbnail-file].

--thumbnail-file <thumbnail_file>

    Path to the preview file to use for the uploaded file. NOTE: This argument is mutually exclusive with arguments: [no-thumbnail].

-p, --proxy <proxy>

    Use an http proxy, socks4, socks5 or mtproxy. For example socks5://user:pass@1.2.3.4:8080 for socks5 and mtproxy://secret@1.2.3.4:443 for mtproxy.

-a, --album

    Send video or photos as an album.

Arguments

FILES

    Optional argument(s)

telegram-download

Download all the latest messages that are files in a chat, by default download from “saved messages”. It is recommended to forward the files to download to “saved messages” and use parameter --delete-on-success. Forwarded messages will be removed from the chat after downloading, such as a download queue.

telegram-download [OPTIONS]

Options

-f, --from <from_>

    Phone number, username, chat id or “me” (saved messages). By default “me”.

--config <config>

    Configuration file to use. By default “/root/.config/telegram-upload.json”.

-d, --delete-on-success

    Delete telegram message after successful download. Useful for creating a download queue.

-p, --proxy <proxy>

    Use an http proxy, socks4, socks5 or mtproxy. For example socks5://user:pass@1.2.3.4:8080 for socks5 and mtproxy://secret@1.2.3.4:443 for mtproxy.


