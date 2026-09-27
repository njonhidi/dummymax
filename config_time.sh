#!/bin/bash

timenow=$(date +%H%M%S)

if (( 10#$timenow >= 10#000000 && 10#$timenow < 10#020000 )); then
    k=0
elif (( 10#$timenow >= 10#020000 && 10#$timenow < 10#040000 )); then
    k=1
elif (( 10#$timenow >= 10#040000 && 10#$timenow < 10#060000 )); then
    k=2
elif (( 10#$timenow >= 10#060000 && 10#$timenow < 10#080000 )); then
    k=3
elif (( 10#$timenow >= 10#080000 && 10#$timenow < 10#100000 )); then
    k=4
elif (( 10#$timenow >= 10#100000 && 10#$timenow < 10#120000 )); then
    k=5
elif (( 10#$timenow >= 10#120000 && 10#$timenow < 10#140000 )); then
    k=6
elif (( 10#$timenow >= 10#140000 && 10#$timenow <= 10#160000 )); then
    k=7
elif (( 10#$timenow >= 10#160000 && 10#$timenow < 10#180000 )); then
    k=8
elif (( 10#$timenow >= 10#180000 && 10#$timenow < 10#200000 )); then
    k=9
elif (( 10#$timenow >= 10#200000 && 10#$timenow <= 10#220000 )); then
    k=10
elif (( 10#$timenow >= 10#220000 && 10#$timenow <= 10#235959 )); then
    k=11
else
    k=12 
fi

