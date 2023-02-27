#!/bin/bash

n=1
while [ $n -le 5 ]
do
  echo "This is iteration $n"
  pytest --benchmark-save=dpss_batch_lt --benchmark-min-rounds=3 benchmark/test_benchmark_dpss_lt.py
  n=$((n+1))
done
