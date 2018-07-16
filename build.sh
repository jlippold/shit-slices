#!/bin/bash

find . -name '.DS_Store' -delete

dpkg --build bz.jed.shit-slices

scp -rpq bz.jed.shit-slices.deb root@iphone:/private/var/mobile/bz.jed.shit-slices.deb

ssh root@iphone "dpkg -i /private/var/mobile/bz.jed.shit-slices.deb"