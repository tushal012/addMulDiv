#! /bin/bash -x
a=10
b=20
c=30
echo $a 
echo $b 
echo $c
function addMul(){
	local a=$1
	local b=$2
	local c=$3
	local val=$(( $a + $b * $c ))
	echo $val
}
function mulAdd(){
        local a=$1
        local b=$2
        local c=$3
        local val=$(( $a * $b + $c ))
        echo $val
}


result="$(addMul $a $b $c)"
echo $result
resultMul="$(mulAdd $a $b $c)"
echo $resultMul
