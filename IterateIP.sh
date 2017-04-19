### Use this at your own risk!!!
### Pings each system to see which are up in your network
### Uses Regular Expressions to check around the different IP, 
### Example: ping 10.10.0.1 , (next ping) -> ping 10.10.0.2, etc

#!/bin/sh
for third in {0..6}
do
  for fourth in {1..254}
  do
    ping -c 2 10.10.$third.$fourth > /dev/null &&
      echo 10.10.$third.$fourth is up
  done
done
