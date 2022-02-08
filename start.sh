if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/illuzX/FAKErepo /FAKErepo
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FAKErepo
fi
cd /FAKErepo
pip3 install -U -r requirements.txt
pip3 install -U pyrogram
echo "Online Bot...."
python3 bot.py
