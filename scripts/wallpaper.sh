img=$1
index=$2

if [ -z ${index} ]; then
	index=0
fi

case "$img" in
	*.jpeg | *.jpg | *.png | *.JPEG | *.JPG | *.PNG)
		matugen image ${img} -m "dark" --source-color-index ${index}
		awww img ${img}
		;;
	*)
		echo "Not a valid jpeg or png image."
		;;
esac
	

