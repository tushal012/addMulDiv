#! /bin/bash -x
declare -A resultArithmetic

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
function addDiv(){
        local a=$1
        local b=$2
        local c=$3
        local val=$(( $c + $a / $b ))
        echo $val
}
function percentAdd(){
        local a=$1
        local b=$2
        local c=$3
        local val=$(( $a % $b + $c | bc))
        echo $val
}




result="$(addMul $a $b $c)"
echo $result
resultMul="$(mulAdd $a $b $c)"
echo $resultMul
resultDiv="$(addDiv $c $a $b)"
echo $resultDiv
resultPercent="$(percentAdd $a $b $c)"
echo $resultPercent

echo $result:${resultArirhmetic[$result]}
echo $resultMul:${resultArirhmetic[$resultMul]}
echo $resultDiv:${resultArirhmetic[$resultDiv]}
echo $resultPercent:${resultArirhmetic[$resultPercent]}
