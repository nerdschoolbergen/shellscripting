# Solutions - Exercise 1

```bash
#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

NAME="Marius"
REMOTE_FOLDER="/var/www/$NAME"
RELEASES_FOLDER="/var/releases"
KEY_FILE="shellscripting_rsa"

scp -r -i $KEY_FILE ./website/ "uploader@nerdschool.no:$REMOTE_FOLDER"
echo "Copied files to remote server"

if ssh -i $KEY_FILE uploader@nerdschool.no [[ -f $REMOTE_FOLDER/index.html ]];
then
    echo "The file exists on server"
    echo "Deployment finished"
else
    echo "Warning: The file is not found on server"
    echo "Deployment failed"
fi
```
# Bonus 1

When you upload the folder with your HTML-files, create a copy of the folder to the `/var/releases` folder, and give it a descriptive name which you pass as a parameter (such as a name containing the date and the release number - E.g. `release-081819-1`, with end result: `/var/releases/<yourname>/release-081819-1`). You now have a set of previously released artifacts on the server.

```bash
#!/bin/bash
cd "$( dirname "${BASH_SOURCE[0]}" )"

NAME="Marius"
REMOTE_FOLDER="/var/www/$NAME"
RELEASES_FOLDER="/var/releases"
KEY_FILE="shellscripting_rsa"

NOW=`date '+%Y-%m-%d_%H-%M-%S'`
ssh -i $KEY_FILE uploader@nerdschool.no "[[ -d $REMOTE_FOLDER ]] && mv --parents $REMOTE_FOLDER /var/backup/$NAME/$NAME-$NOW"

scp -r -i $KEY_FILE ./website/ "uploader@nerdschool.no:$REMOTE_FOLDER"
echo "Copied files to remote server"

if ssh -i $KEY_FILE uploader@nerdschool.no [[ -f $REMOTE_FOLDER/index.html ]];
then
    echo "The file exists on server"
    echo "Deployment finished"
else
    echo "Warning: The file is not found on server"
    echo "Deployment failed"
fi
```
