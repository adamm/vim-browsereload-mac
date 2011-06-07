#watchmedo shell-command --patterns="*.rst" --recursive --command='sh upload.sh' ./ > /dev/null 2>&1 & 
watchmedo shell-command --patterns="conf.py" --recursive --command='sh upload.sh'

