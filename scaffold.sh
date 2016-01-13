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

#gulp
npm install gulp --save-dev
npm install jshint --save-dev
npm install gulp-jshint --save-dev
npm install gulp-browserify --save-dev
npm install gulp-uglify --save-dev
npm install gulp-sass --save-dev
npm install gulp-autoprefixer --save-dev
npm install gulp-minify-css --save-dev
npm install gulp-imagemin --save-dev
npm install gulp-cdnizer --save-dev
npm install gulp-minify-html --save-dev
npm install gulp-nodemon --save-dev
npm install gulp-livereload --save-dev
npm install gulp-concat --save-dev
npm install gulp-rename --save-dev
npm install gulp-clean --save-dev
npm install gulp-run-sequence --save-dev

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
	if [ $# == 0 ]; then
		echo "Scaffolding an simple template"
		cat $DIR/templates/index.html >> src/index.html
	fi

	if [ $# == 1 ]; then
	    case $1 in
		    -j | -jquery ) 		echo "Scaffolding JQuery project"
								cat $DIR/templates/jquery.html >> src/index.html
								bower install jquery --save
		        				;;
		    -d | -d3 ) 			echo "Scaffolding d3.js project"
								cat $DIR/templates/d3.html >> src/index.html
								bower install d3 --save
		        				;;
		    -a | -angular ) 	echo "Scaffolding AngularJS project"
								cat $DIR/templates/angular.html >> src/index.html
								bower install angular --save
		        				;;
		    -b | -bootstrap ) 	echo "Scaffolding Bootstrap project"
								cat $DIR/templates/bootstrap.html >> src/index.html
								bower install bootstrap --save
		        				;;
		    -p | -phaser )	 	echo "Scaffolding Phaser project"
								cat $DIR/templates/phaser.html >> src/index.html
								bower install phaser --save
		        				;;
		    * ) 				echo "There is no support for that. Scaffolding an simple template"
		esac
	fi

	if [ $# -gt 1 ]; then
		echo "There is no support for that. Scaffolding an simple template"
		cat $DIR/templates/index.html >> src/index.html
	fi
	
	#_palette.scss
	cat $DIR/templates/_palette.scss >> src/scss/_palette.scss

#git & github
	#gets folder name without path
echo "# ${PWD##*/}" >> README.md
echo "###### Scafolded by Xavi Ro" >> README.md
git init
git add .
git commit -m 'first commit'







