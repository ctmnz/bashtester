#!/bin/bash

dname=$(dirname $0)

bash $dname/1.sh && \
bash $dname/2.sh && \
bash $dname/3.sh && \
bash $dname/4.sh && \
bash $dname/4-fail.sh && \
exit 0 || exit 1

