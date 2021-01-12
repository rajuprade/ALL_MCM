#!  /bin/bash

cd /home/lmcuser/ALL_MCM/IFLO

make clean

make

if [ $? -eq 0 ]
then
  echo "FIFO BASED IFLO Client ${HOSTNAME} Compiled successfully"
else
  echo "### ERROR FIFO BASED IFLO Client not compiled"

fi

