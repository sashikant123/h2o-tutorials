#!/usr/bin/env bash

DATASET="/Users/kuba/Downloads/AmazonReviews_Train.csv"
#DATASET="../data/pysparkling/AmazonReviews_Train.csv"
OUTPUT=$(pwd)/"output"
mkdir -p $OUTPUT

i=0
while read l; do
  echo "$l" > $OUTPUT/${i}.csv
  i=$((i+1))
  sleep 1
done <$DATASET

