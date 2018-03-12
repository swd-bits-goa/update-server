#!/bin/bash

sudo git pull origin master
sudo apachectl restart

# Migrate model.py if changed
if [ "$(git diff HEAD~1 ./main/models.py)" ]; then
	# Insert migrate commands
	# sudo source /var/www/html/venv/bin/activate
	python3.5 manage.py makemigrations
	python3.5 manage.py migrate
	sudo echo "$(date) Changed" >> /var/www/html/update_log.log
else
	sudo echo "$(date) Not Changed" >> /var/www/html/update_log.log	
fi

# Add other update commands below this
