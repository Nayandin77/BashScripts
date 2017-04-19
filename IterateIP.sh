### Use this at your own risk!!!
### Pings each system to see which are up in your network

#!/bin/sh
for third in {0..6}
do
  for fourth in {1..254}
  do
    ping -c 2 10.10.$third.$fourth > /dev/null &&
      echo 10.10.$third.$fourth is up
  done
done
