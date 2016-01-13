#USE sudo chmod 700 file.sh TO MAKE EXECUTABLE
#Inside ~
touch server.js
touch gulpfile.js
touch .gitignore
mkdir tests
mkdir src
cd src
	#Inside SRC
	touch index.html
	mkdir js
	mkdir scss
	mkdir css
	mkdir img
	mkdir views
	mkdir res
	cd js
		#Inside JS
		mkdir app
		cd app
			#Inside APP
			touch app.js
			cd ..
		#Inside JS
		cd ..
	#Inside SRC
	cd scss
		#Inside SCSS
		touch style.scss
		touch _variables.scss
		touch _mixins.scss
		cd ..
	#Inside SRC
	cd ..
#Inside ~

#npm
npm init
npm install express --save

#bower
bower init


#Choose from templates
	#Get bash script path
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	#server.js
	cat $DIR/templates/server.js >> server.js
	#gulpfile.js
	cat $DIR/templates/gulpfile.js >> gulpfile.js
	#.ignore
	cat $DIR/templates/.gitignore >> .gitignore
	#index.html
	cat $DIR/templates/index.html >> src/index.html
	#_palette.scss
	cat $DIR/templates/_palette.scss >> src/scss/_palette.scss

#git & github
	#gets folder name without path
echo "# ${PWD##*/}" >> README.md
echo "###### Scafolded by Xavi Ro" >> README.md
git init
git add .
git commit -m 'first commit'







