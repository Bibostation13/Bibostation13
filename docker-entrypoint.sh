#!/bin/sh

mkdir /byond
chown $RUNAS:$RUNAS /byond /bb13 bibostation13.rsc

gosu $RUNAS DreamDaemon bibostation13.dmb 5000 -trusted -verbose
