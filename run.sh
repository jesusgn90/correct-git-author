#/usr/bin/env bash
while read repo; do
    IFS='/' 
    read -ra GENDIR <<< "$repo"
    WHERE_TO_CD=${GENDIR[4]}
    git clone --bare "$repo" &> /dev/null
    cp script.sh "$WHERE_TO_CD"
    cd "$WHERE_TO_CD"
    echo | bash "./script.sh"
    git push --force --tags origin 'refs/heads/*' &> /dev/null
    cd .. && rm -rf "$WHERE_TO_CD"
done <list.txt