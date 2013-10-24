url=http://svn.python.org/projects/python/trunk/Misc/valgrind-python.supp
filename=$(basename $url)
wget -O $filename $url
perl -i.bak -pe 's/^###// if 127 <= $. and $. <= 162' $filename
