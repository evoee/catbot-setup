echo "This script will automatically accept Steam SA on all accounts"

read -p "Press ENTER to continue"

max=12

if [ "$#" == 1 ]; then
	max=$1
fi

for i in $(seq 1 $max)
do
	echo "catbot-$i has read the Steam SA"
	sudo -H -u catbot-$i bash -c "mkdir -p ~/.steam"
	sudo -H -u catbot-$i bash -c "touch ~/.steam/steam_install_agreement.txt"
done