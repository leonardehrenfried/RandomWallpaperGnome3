#!/bin/bash

BASEDIR="randomwallpaper@leonard.io"
ZIPNAME="$BASEDIR.zip"

rm $ZIPNAME
rm $BASEDIR/schemas/gschemas.compiled
rm $BASEDIR/wallpapers/*
glib-compile-schemas $BASEDIR/schemas/

cd $BASEDIR
zip -r $ZIPNAME .
mv $ZIPNAME ..
