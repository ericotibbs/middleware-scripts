#!/bin/bash
#Author: Ted Gadie
#Date: 3/31/2022
#Description: Delete system logs

DeleteLogMessages () {
    echo "This action will empty the  Logs messages file,"
    echo "do you want to continue ?  [yes / no]"
    read value

    if [ $value = "y" ] || [ $value = "Y" ] || [ $value = "yes" ] || [ $value = "YES" ] || [ $value = "Yes" ]
    then
        > /var/log/messages
        echo -e "\n Logs Messages is empty !\n"
    else
        exit 2
    fi
}

#User authentication before running the program
if [ $UID != 0 ]
    then
    echo -e "\nYou need root access to run this\n"
    exit 1
fi

DeleteLogMessages
# Schedule DeleteSystemLogs.sh with Crontab.
