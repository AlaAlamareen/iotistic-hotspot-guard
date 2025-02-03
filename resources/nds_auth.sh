
#!/bin/sh

METHOD="$1"
MAC="$2"


#export USERNAME
#export MAC 
#export PASSWORD
#export EMAIL

case "$METHOD" in
  auth_client)
    USERNAME="$3"
    PASSWORD="$4"
#    EMAIL="$4"
    export USERNAME 
    export PASSWORD
    export MAC
    
 #   echo "123" | sudo -S /usr/bin/python3 /home/mnvr/app.py
#    sleep 2
   # /opt/iotistic-mnvr/mnvrenv/bin/python /opt/iotistic-mnvr/pyscripts/app.py
#    if [ "$USERNAME" = "Bill" -a "$PASSWORD" = "tms" ]; then
      # Allow client to access the Internet for one hour (3600 seconds)
      # Further values are upload and download limits in bytes. 0 for no limit.
      
      echo 3600 0 0
      exit 0
  #  else
      # Deny client to access the Internet.
   #   exit 1
   # fi
    ;;
  client_auth|client_deauth|idle_deauth|timeout_deauth|ndsctl_auth|ndsctl_deauth|shutdown_deauth)
    INGOING_BYTES="$3"
    OUTGOING_BYTES="$4"
    SESSION_START="$5"
    SESSION_END="$6"

    # client_auth: Client authenticated via this script.
    # client_deauth: Client deauthenticated by the client via splash page.
    # idle_deauth: Client was deauthenticated because of inactivity.
    # timeout_deauth: Client was deauthenticated because the session timed out.
    # ndsctl_auth: Client was authenticated by the ndsctl tool.
    # ndsctl_deauth: Client was deauthenticated by the ndsctl tool.
    # shutdown_deauth: Client was deauthenticated by Nodogsplash terminating.
    ;;
#/usr/bin/python3 /home/mnvr/remove.py 

esac
#export MAC 
#export USERNAME
#export PASSWORD
