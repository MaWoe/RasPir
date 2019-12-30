set -e

RECEIVER="DENON_RC-1225"
TV="LG_TV"

sendOnce () {
  irsend SEND_ONCE $1 $2
}

sendStart () {
  irsend SEND_START $1 $2
}

sendStop () {
  irsend SEND_STOP $1 $2
}
