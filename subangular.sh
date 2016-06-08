
#inside project
cd src
	#inside src
	mkdir views
	cd views
		#inside views
		touch nav.html
		touch index.html
		cd ..
	#inside src
	cd assets
		#inside assets
		cd js
			#inside scss
			mkdir app
			touch config.js
			touch run.js
			cd app
				#inside app
				mkdir ctrl
				mkdir directives
				mkdir filters
				cd ..
			#inside scss
			cd ..
		#inside assets
		cd ..
	#inside src
	cd ..
#inside project

sudo npm install gulp-ng-annotate --save-dev -E

#done
GREEN='\033[0;32m'
NC='\033[0m'
printf "${GREEN}Scaffolded for Angular :)${NC}\n"
