#!/bin/bash

bash 1.sh && \
bash 2.sh && \
bash 3.sh && \
bash 4.sh && \
#bash 4-fail.sh && \
exit 0 || exit 1

