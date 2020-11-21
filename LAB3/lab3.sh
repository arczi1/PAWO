1.

echo $SHELL
echo $0

ls /proc
ls /proc/$$
readlink /proc/$$/exe
sh
readlink /proc/$$/exe
/bin/dash

2.

sleep 600
ctrl + z
fg

killall -SIGKILL sleep
killall -SIG


3.

for i in $(seq 1 100); do $1; done
for i in {1...100}; do $1; done
mkdir {1..100}
echo mkdir {1...100} 
seq 1 100 | xargs mkdir 
 
 4. 
 
 mkdir test
 mkdir a 
 touch 999 
 touch 998
 touch test2
 mkdir 2aa
 nano zad4.sh
 
 #!/bin/bash #!/usr/bin/env bash
 
 FOLDER=$1 
 find $FOLDER -type d -name "*[0-9]*" | wc -l 
 
 5. 
  #!/bin/bash #!/usr/bin/env bash
  
  text=$1
  if [[ "$#" > 1 ]] then
      echo "za duzo arg"
      exit 42
  fi
  len = $(echo $text | wc -m) 
  if [[$(($len % 2 )) != 0 ]]; then
  echo "niepatrzysta"
  exit 7
  fi
  
  
 6.
  #!/bin/bash #!/usr/bin/env bash
tab=("cztery" "dowolne" slowa "w tablicy") 
echo ${tab[@]}

for i in "${tab[*]}"; do 
echo $i 
fi 

for i in "${tab[@]}"; do 
echo $i 
fi 

echo ${tab[@]:(-1):1}

7.
sum=0

for i in "$@"; do
    ((sum+=$i))
done

  alias sum=~/zad.sh
  cd sum 2 4 
  bash
  vim .bashrc
  mv .bashrc ~/.bashrc


8. 
tree ~/dir 

 
 
 
