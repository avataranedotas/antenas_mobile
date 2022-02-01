#!/bin/bash

#Partilhadas


echo "Partilhadas"
wget -O partilhadas.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22!%3D%2201%22%5D%5B%22MNC%22!%3D%2203%22%5D%5B%22MNC%22!%3D%2206%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

sed -i '/.*timestamp_.*/d' *.json

osmtogeojson partilhadas.json >| partilhadas.geojson

