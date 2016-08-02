for dir in /home/nay/.vim/bundle/*
do
  cd "$dir";
  git stash --keep-index;
  git stash drop;
  git pull origin master;
done
