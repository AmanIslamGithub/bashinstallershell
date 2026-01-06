#!/system/bin/sh
while true
do
tput setaf 0
tput setab 4
read -p "installer> " bashinstall
read -p "name> " name
mv $bashinstall .$bashinstall
cat ~/parselog
echo "alias $name='bash .$bashinstall'" >> .bashrc
cat $name
cat .bashrc
source .bashrc
alias $name='bash .$bashinstall'
echo -e ".$bashinstall" >> log
for i in $(seq 1 3)
do
echo
done
echo "Sucessfully installed $name ($bashinstall) on the machine. The file is not deleted, it is stored like a hidden file, because of not having the audacity to delete file, if deleted the bash alias wont work."
done
