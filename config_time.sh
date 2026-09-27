#!/bin/bash

timenow=$(date +%H%M%S)

if (( 10#$timenow >= 10#000000 && 10#$timenow < 10#010000 )); then
    k=0
elif (( 10#$timenow >= 10#010000 && 10#$timenow < 10#030000 )); then
    k=1
elif (( 10#$timenow >= 10#030000 && 10#$timenow < 10#050000 )); then
    k=2
elif (( 10#$timenow >= 10#050000 && 10#$timenow < 10#070000 )); then
    k=3
elif (( 10#$timenow >= 10#070000 && 10#$timenow < 10#090000 )); then
    k=4
elif (( 10#$timenow >= 10#090000 && 10#$timenow < 10#110000 )); then
    k=5
elif (( 10#$timenow >= 10#110000 && 10#$timenow < 10#130000 )); then
    k=6
elif (( 10#$timenow >= 10#130000 && 10#$timenow <= 10#150000 )); then
    k=7
elif (( 10#$timenow >= 10#150000 && 10#$timenow < 10#170000 )); then
    k=8
elif (( 10#$timenow >= 10#170000 && 10#$timenow < 10#190000 )); then
    k=9
elif (( 10#$timenow >= 10#190000 && 10#$timenow <= 10#210000 )); then
    k=10
elif (( 10#$timenow >= 10#210000 && 10#$timenow <= 10#230000 )); then
    k=11
elif (( 10#$timenow >= 10#230000 && 10#$timenow <= 10#235959 )); then
    k=12
else
    k=12 
fi

