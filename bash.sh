#!/bin/bash


read -p "Please enter the Github Repo Url (including .git extension): " url


git init

git add .

for i in {1..100}
do
	git commit -m ""${i}" Commit"
	#echo ${i}

done

git remote add origin ${url}

read -p "which branch you want to create :" branch
git branch ${branch}

git checkout ${branch}

git push -u origin ${branch}



#echo ${url}


