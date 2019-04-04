set -e

RECEIVER="DENON_RC-1225"

sendOnce () {
  irsend SEND_ONCE $1 $2
}

sendStart () {
  irsend SEND_START $1 $2
}

sendStop () {
  irsend SEND_STOP $1 $2
}
