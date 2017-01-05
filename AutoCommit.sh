git config --global credential.helper wincred
while :
    do
		count=100
		base=-1
        git add .
		git add -A
		git commit -am "Made changes"
		git push
		while :
			do
				(( count += base ))
				echo "Next commit in $count second"
				sleep 1
				
				[ $count -eq 0 ] && { echo "Commiting!"; break; }
		done
done