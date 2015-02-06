#!/bin/bash

# Load mysql tables
USERNAME=pybaas
PASSWORD=pybaas3287
DATABASE=pybaas

exit_code=1
while [ $exit_code -ne 0 ]; do
    mysql -h mysql -u ${USERNAME} --password=${PASSWORD} ${DATABASE} -e "select version()" >/dev/null
    exit_code=$?
    [ $exit_code -ne 0 ] && (echo "Trying to connect"; sleep 1)
done

exit_code=$?

mysql -h mysql -u ${USERNAME} --password=${PASSWORD} ${DATABASE} < /code/provision/init-script.sql

echo "Tables created"

# Run supervisor
/usr/bin/supervisord
