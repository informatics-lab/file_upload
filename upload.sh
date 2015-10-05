#!/bin/bash 
FILE=$(basename $DATAFILE)

ssh -i $KEY $GATEWAY "wget $DATAFILE
ftp -n $HOST <<EOF
quote USER $FTPUSER
quote PASS $FTPPASSWD
put $FILE

quit
EOF

rm $FILE
"
