## Build
```
docker build --build-arg arch=$(dpkg --print-architecture) -t jiesu/gdrive-backup-cron:$(dpkg --print-architecture) .
```

## Run
Need two files:
* password - put the password in the file, single line. Put the file at ${PASSWORD_FILE} location
* token_v2.json - google api token file, put the file under repos directory


```
docker run -d -v /path/to/repos:/repos -e FRESH_ENV=true -e PASSWORD_FILE=/path/to/password/file -e SCHEDULE='0 3 * * 1,3,5' --name gdrive-backup jiesu/gdrive-backup-cron:<arch>
```
