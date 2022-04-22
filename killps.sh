#!/bin/bash
echo "
==============================================
|	KIll THE Process No need              |
|	just need a parm                      |
|	***.sh proc_name                      |
==============================================	
";
if [ $# == 0 ]
then 
 echo "have $# parm found";
 echo "exit";
 exit;
fi
if [ $1 == "" ] 
then 
 echo "need not null parm"
 echo "exit";
 exit;
fi


targets=$(pstree -p |grep $1 | grep -E [0-9]* -o | cut -d: -f1)
length=${#targets[@]}
for ((i = 0; i != length; i++)); do
   echo ${targets[i]}
   kill ${targets[i]}
done

