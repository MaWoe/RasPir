if [ -z $REMOTE ]; then
  echo "Error: Variable 'REMOTE' is not set!"
  return 1;
fi

sendOnce () {
  irsend SEND_ONCE $REMOTE $1
}

sendStart () {
  irsend SEND_START $REMOTE $1
}

sendStop () {
  irsend SEND_STOP $REMOTE $1
}
