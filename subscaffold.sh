if [ $# == 0 ]; then
	echo "The subpage name is required"
fi

if [ $# == 1 ]; then

	#inside project
	cd src
		#inside src
		mkdir $1
		cd $1
			#inside $1
			touch index.html
			cd ..
		#inside src
		cd assets
			#inside assets
			cd scss
				#inside scss
				mkdir $1
				cd $1
					#inside $1
					touch style.scss
					touch _main.scss
					touch _responsive.scss
					touch _init.scss
					cd ..
				#inside scss
				cd ..
			#inside assets
			cd js
				#inside app
				mkdir $1
				cd $1
					#inside $1
					touch app.js
					cd ..
				#inside app
				cd ..
			#inside assets
			cd ..
		#inside src
		cd ..
	#inside project


	#variable with bash script path
	DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

	#index.html
	cat $DIR/templates/subscaffold/subindex.html >> src/$1/index.html
	#scss
	cat $DIR/templates/subscaffold/substyle.scss >> src/assets/scss/$1/style.scss
	#_responsive.scss
	cat $DIR/templates/_responsive.scss >> src/assets/scss/$1/_responsive.scss
	#app.js
	cat $DIR/templates/subscaffold/subapp.js >> src/assets/js/$1/app.js


	#done
	GREEN='\033[0;32m'
	NC='\033[0m'
	printf "${GREEN}Added Subpage :)${NC}\n"

fi