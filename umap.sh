#!/bin/bash


#VDF
echo "VDF"
#wget -O vdf.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2201%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
wget -O vdf.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2201%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#DIGI
echo "DIGI"
#wget -O digi.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2202%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
wget -O digi.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2202%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#NOS
echo "NOS"
#wget -O nos.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2203%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
wget -O nos.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2203%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#MEO
echo "MEO"
#wget -O meo.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2206%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
wget -O meo.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2206%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#Falta
echo "Falta MCC ou MNC"
#wget -O faltam.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22!%3D%22268%22%5D(area.searchArea)%3Bnode%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MNC%22!~%22.%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
wget -O faltam.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22!%3D%22268%22%5D(area.searchArea)%3Bnode%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MNC%22!~%22.%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#DIGI_investigar
echo "Caça às DIGI - Investigar"
wget -O digi_investigar.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(%0Anode%5B%22communication%3Amobile_phone%3Anote%22~%22.%22%5D(area.searchArea)%3B%0A)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B%0A'
sleep 60

#DIGI_ferros
echo "Caça às DIGI - Ferros"
wget -O digi_ferros.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(%0Anode%5B%22communication%3Amobile_phone%3Aextra_tube%22~%22.%22%5D(area.searchArea)%3B%0A)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B%0A'
sleep 60

#DIGI_descobertas
echo "Caça às DIGI - Já descobertas"
wget -O digi_descobertas.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(%0Anode%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2202%22%5D(area.searchArea)%3B%0A)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#DIGI_existentes
echo "Caça às DIGI - Existentes não Vantage"
wget -O digi_existentes.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22~%22.%22%5D%5B%22MNC%22!~%2202%22%5D%5B%22communication%3Amobile_phone%3Aextra_tube%22!~%22.%22%5D%5B%22location%22!%3D%22indoor%22%5D%5B%22owner%22!%3D%22Vantage%20Towers%22%5D(if%3A((date(t%5B%22check_date%22%5D)%3Cdate(%222023-07-01T10%3A15%3A43.815Z%22))%7C%7C(!is_date(t%5B%22check_date%22%5D))%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20))(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#Ran-sharing
echo "Antenas Ran-sharing"
wget -O ran_sharing.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(%0Anode%5B%22communication%3Amobile_phone%3Aran_sharing%22~%22.%22%5D(area.searchArea)%3B%0A)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#Partilhadas ------------ não usado
#echo "Partilhadas"
#wget -O partilhadas.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22!%3D%2201%22%5D%5B%22MNC%22!%3D%2203%22%5D%5B%22MNC%22!%3D%2206%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
#sleep 60

sed -i '/.*timestamp_.*/d' *.json
