#!/system/bin/sh
cp parselog parselogstore
mv parselog .bashrc
mv parselogstore parselog
source .bashrc
bashprog="$(cat log)"
rm -rf $bashprog
echo "Restoring done..."
