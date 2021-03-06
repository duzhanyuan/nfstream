#!/bin/sh
READER="../nDPI/example/ndpiReader"
RC=0
PCAPS=`cd pcap; /bin/ls *.pcap`
build_results() {
    for f in $PCAPS; do
	if [ ! -f result/$f.pcap ]; then
	    CMD="$READER -q -i pcap/$f -C result/$f"
	    $CMD
	fi
    done
}
build_results
exit $RC