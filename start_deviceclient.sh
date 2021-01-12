#!  /bin/bash


cd /home/lmcuser/ALL_MCM/
./stop_deviceclient.sh

sleep 2

id=`ps aux | grep mcmtest |  grep -v grep | awk '{ print $2 }'`;
sudo kill -9 $id

sleep 2

cd /home/lmcuser/ALL_MCM/MCM
sudo ./mcmtest >> /dev/null 2>&1 &

if [ $? -eq 0 ]
then
  echo "USB BASED MCMTEST PROGRAM ${HOSTNAME} started successfully"
else
  echo "### ERROR USB BASED MCMTEST PROGRAM not started"
fi

sleep 2

cd /home/lmcuser/ALL_MCM/fecb

./deviceClientfecb >> /dev/null 2>&1 &

if [ $? -eq 0 ]
then
  echo "FIFO BASED FECB Client ${HOSTNAME} started successfully"
else
  echo "### ERROR FIFO BASED FECB Client not started"

fi

sleep 2

cd /home/lmcuser/ALL_MCM/FPS_MCM

./deviceClientfps >> /dev/null 2>&1 &

if [ $? -eq 0 ]
then
  echo "FIFO BASED FPS Client ${HOSTNAME} started successfully"
else
  echo "### ERROR FIFO BASED FPS Client not started"

fi

sleep 2

cd /home/lmcuser/ALL_MCM/IFLO

./deviceClientiflo >> /dev/null 2>&1 &

if [ $? -eq 0 ]
then
  echo "FIFO BASED IFLO Client ${HOSTNAME} started successfully"
else
  echo "### ERROR FIFO BASED IFLO Client not started"

fi



