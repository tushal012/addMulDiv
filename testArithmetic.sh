#! /bin/bash -x

function addMul(){
	local a=$1
	local b=$2
	local c=$3
	local val=$(( $a + $b * $c ))
	echo $val
}
a=10
b=20
c=30
result="$(addMul $a $b $c)"
echo $result
