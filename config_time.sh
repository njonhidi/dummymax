#!/bin/bash

timenow=$(date +%H%M%S)

if (( 10#$timenow >= 10#000000 && 10#$timenow < 10#030000 )); then
    k=0
elif (( 10#$timenow >= 10#030000 && 10#$timenow < 10#060000 )); then
    k=1
elif (( 10#$timenow >= 10#060000 && 10#$timenow < 10#090000 )); then
    k=2
elif (( 10#$timenow >= 10#090000 && 10#$timenow < 10#120000 )); then
    k=3
elif (( 10#$timenow >= 10#120000 && 10#$timenow < 10#150000 )); then
    k=4
elif (( 10#$timenow >= 10#150000 && 10#$timenow < 10#180000 )); then
    k=5
elif (( 10#$timenow >= 10#180000 && 10#$timenow < 10#210000 )); then
    k=6
elif (( 10#$timenow >= 10#210000 && 10#$timenow <= 10#235959 )); then
    k=7
else
    k=8 
fi

