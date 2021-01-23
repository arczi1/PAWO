1.
env | grep [X]
env | grep '^X'

2. 
echo $USER
whoami

2.1 
df -h /tmp

2.2
free -h

2.3
ps -uxps 

3.1
cd ~ 
pwd

3.2
mkdir nokia

3.3
mkdir .katalog
ls -a 

3.4
ls -alt

4.1
mkdir -p nokia/wazne/lab1

4.2
cd nokia/wazne/lab1
touch matematyka.txt

touch nokia/wazne/lab1 fizyka.txt

4.3
mv -v nokia/wazne/lab1/lab2 nokia/wazne

4.5
cp nokia/wazne/informatyka.txt nokia/wazne/lab2/ -v

4.6
ls -R nokia

4.7
rm -rv nokia/wazne/lab1/* 

4.8
rm -rfv nokia/wazne/lab1

5.1
mkdir './-p'

5.2
rm -f './-p' 
rm -rf -- -p 

6.1
cat /etc/passwd

6.2
cat /etc/passwd > ~/passwd

6.3
cat passwd | cut -d ':' -f 1 | sort
awk -F ':' '{print $1}' passwd | sort

6.4
cat passwd | cut -d : -f 7 | sort | uniq
cat passwd | cut -d : -f 7 sort -u 
awk -F ':' '{print $7}' passwd | sort -u 
awk -F ':' '{print $NF}' passwd | sort -u 

6.5
cat passwd | grep $USER
grep $USER passwd 

6.6 
sed -i '/kornel/s/bash/dash/g' passwd
sed -i 's/\/bin/\bash/\dash/g' passwd

7.1
find /usr/lib -type d -name "*python*" 

7.2
find ~/ -type f -maxdepth 2




