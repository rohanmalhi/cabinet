#!/bin/bash

arg="$1"

paths_file="FC_CONFIG_PATH"

if [[ ! -f "$paths_file" ]]; then
	echo "Configuration file not found!"
	echo "Please generate a config or adjust the path using FC_CONFIG_PATH" 
	exit 1
fi

mapfile -t paths < "$paths_file"

echo "Files to sync:"
for path in "${paths[@]}"; do
	echo "$path"
done

cd ~

git init
git remote add origin $FC_REPO

cd .config

case "$arg" in 
	push)
		echo "Pushing dotfiles..."
		for path in "${paths[@]}"; do
			git add "$path"
		done
		git commit
		git push --set-upstream origin "$FC_DEFAULT_BRANCH"
		;;
	pull)
		echo "Pulling dotfiles..."
		git pull origin "$FC_DEFAULT_BRANCH"

		for path in "${paths[@]}"; do
			echo "Pulling $path from remote..."
			git checkout origin/"$FC_DEFAULT_BRANCH" -- "$path"
		done
		;;
	--help)
		echo "Paths file: $paths_file"
		;;
	*)
		echo "Error: unknown argument"
		;;
esac

cd ~
sudo rm -r .git
