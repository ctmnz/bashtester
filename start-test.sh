#!/bin/bash

dname=$(dirname $0)

bash $dname/1.sh && \
bash $dname/2.sh && \
bash $dname/3.sh && \
bash $dname/4.sh && \
#bash 4-fail.sh && \
bash $dname/multistep1/multistep1.sh && \
exit 0 || exit 1

