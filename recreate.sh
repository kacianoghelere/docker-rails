#!/bin/bash
echo "Reconstruindo base de dados";
sudo docker-compose run rails rake db:drop db:create db:migrate db:seed db:schema:dump
