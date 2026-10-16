#!/bin/bash



download_json() {
    local output="$1"
    local url="$2"
    local tmp="${output}.tmp"
    local attempt
    local max_attempts=3

    for ((attempt=1; attempt<=max_attempts; attempt++)); do
        echo "A descarregar $output (tentativa $attempt/$max_attempts)..."

        rm -f "$tmp"

        if wget --timeout=90 -O "$tmp" "$url" &&
           python3 -c '
import json, sys
try:
    with open(sys.argv[1], encoding="utf-8") as f:
        data = json.load(f)
    if not isinstance(data, dict) or not isinstance(data.get("elements"), list):
        sys.exit(1)
except Exception:
    sys.exit(1)
' "$tmp"
        then
            mv -f "$tmp" "$output"
            echo "OK: $output atualizado."
            return 0
        fi

        rm -f "$tmp"

        if [ "$attempt" -lt "$max_attempts" ]; then
            echo "Falha no download de $output."
            echo "Nova tentativa em 30 segundos..."
            sleep 30
        fi
    done

    echo "AVISO: Falharam as $max_attempts tentativas de $output."
    echo "O ficheiro anterior foi preservado."
    return 1
}




HAUMANO=$(date -d "1 year ago" +"%Y-%m-%d")

echo $HAUMANO

#VDF
echo "VDF"
#download_json vdf.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2201%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
download_json vdf.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2201%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#DIGI
echo "DIGI"
#download_json digi.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2202%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
download_json digi.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2202%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#NOS
echo "NOS"
#download_json nos.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2203%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
download_json nos.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2203%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#MEO
echo "MEO"
#download_json meo.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2206%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
download_json meo.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2206%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#Falta
echo "Falta MCC ou MNC"
#download_json faltam.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22!%3D%22268%22%5D(area.searchArea)%3Bnode%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MNC%22!~%22.%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
download_json faltam.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22!%3D%22268%22%5D(area.searchArea)%3Bnode%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MNC%22!~%22.%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#DIGI_investigar
echo "Caça às DIGI - Investigar"
download_json digi_investigar.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(%0Anode%5B%22communication%3Amobile_phone%3Anote%22~%22.%22%5D(area.searchArea)%3B%0A)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B%0A'
sleep 60

#DIGI_ferros
echo "Caça às DIGI - Ferros"
download_json digi_ferros.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(%0Anode%5B%22communication%3Amobile_phone%3Aextra_tube%22~%22.%22%5D(area.searchArea)%3B%0A)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B%0A'
sleep 60

#DIGI_descobertas
echo "Caça às DIGI - Já descobertas"
download_json digi_descobertas.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(%0Anode%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22~%2202%22%5D(area.searchArea)%3B%0A)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#DIGI_existentes
echo "Caça às DIGI - Existentes"
#download_json digi_existentes.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22~%22.%22%5D%5B%22MNC%22!~%2202%22%5D%5B%22communication%3Amobile_phone%3Aextra_tube%22!~%22.%22%5D%5B%22location%22!%3D%22indoor%22%5D(if%3A((date(t%5B%22check_date%22%5D)%3Cdate(%222023-07-11T19%3A26%3A29.922Z%22))%7C%7C(!is_date(t%5B%22check_date%22%5D))%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20))(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
download_json digi_existentes.json  'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22~%22.%22%5D%5B%22MNC%22!~%2202%22%5D%5B%22communication%3Amobile_phone%3Aextra_tube%22!~%22.%22%5D%5B%22location%22!%3D%22indoor%22%5D(if%3A((date(t%5B%22check_date%22%5D)%3Cdate(%22'$HAUMANO'%22))%7C%7C(!is_date(t%5B%22check_date%22%5D))%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20))(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#Ran-sharing
echo "Antenas Ran-sharing"
download_json ran_sharing.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(%0Anode%5B%22communication%3Amobile_phone%3Aran_sharing%22~%22.%22%5D(area.searchArea)%3B%0A)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60

#Partilhadas ------------ não usado
#echo "Partilhadas"
#download_json partilhadas.json 'https://maps.mail.ru/osm/tools/overpass/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(node%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D%5B%22MCC%22%3D%22268%22%5D%5B%22MNC%22!%3D%2201%22%5D%5B%22MNC%22!%3D%2203%22%5D%5B%22MNC%22!%3D%2206%22%5D(area.searchArea)%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
#sleep 60

#todos_sites
echo "Todos os Sites activos"
download_json todos.json 'https://overpass-api.de/api/interpreter?data=%5Bout%3Ajson%5D%5Btimeout%3A60%5D%3Barea(id%3A3600295480)-%3E.searchArea%3B(%0Anode%5B%22communication%3Amobile_phone%22%3D%22yes%22%5D(area.searchArea)%3B%0A)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B'
sleep 60



sed -i '/.*timestamp_.*/d' *.json
