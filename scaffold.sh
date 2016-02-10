#Inside ~
touch server.js
touch gulpfile.js
touch .gitignore
mkdir tests
mkdir utils
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
npm install express --save -E

#bower
bower init

#gulp
sudo npm install gulp --save-dev -E
sudo npm install jshint --save-dev -E
sudo npm install gulp-jshint --save-dev -E
sudo npm install gulp-browserify --save-dev -E
sudo npm install gulp-uglify --save-dev -E
sudo npm install gulp-sass --save-dev -E
sudo npm install gulp-autoprefixer --save-dev -E
sudo npm install gulp-minify-css --save-dev -E
sudo npm install gulp-imagemin --save-dev -E
sudo npm install gulp-cdnizer --save-dev -E
sudo npm install gulp-minify-html --save-dev -E
sudo npm install gulp-nodemon --save-dev -E
sudo npm install gulp-livereload --save-dev -E
sudo npm install gulp-concat --save-dev -E
sudo npm install gulp-rename --save-dev -E
sudo npm install gulp-clean --save-dev -E
sudo npm install run-sequence --save-dev -E

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
		    -d | -d3 ) 			echo "Scaffolding d3.js and Bootstrap project"
								cat $DIR/templates/d3/index.html >> src/index.html
								bower install d3 --save -E
								bower install bootstrap --save -E
		        				;;
		    -a | -angular ) 	echo "Scaffolding AngularJS, Bootstrap and UI Bootstrap project"
								cat $DIR/templates/angular/index.html >> src/index.html
								cat $DIR/templates/angular/about.html >> src/views/about.html
								cat $DIR/templates/angular/app.js >> src/js/app/app.js
								cat $DIR/templates/angular/app.about.js >> src/js/app/app.about.js
								cat $DIR/templates/angular/app.controller.js >> src/js/app/app.controller.js
								bower install angular --save -E
								bower install bootstrap --save -E
								bower install angular-bootstrap --save -E
								bower install angular-animate --save -E
								bower install angular-aria --save -E
								bower install angular-cookies --save -E
								bower install angular-message-format --save -E
								bower install angular-messages --save -E
								bower install angular-resource --save -E
								bower install angular-route --save -E
								bower install angular-sanitize --save -E
								bower install angular-touch --save -E
		        				;;
		    -j | -jquery ) 		echo "Scaffolding JQuery and Bootstrap project"
								cat $DIR/templates/bootstrap/index.html >> src/index.html
								bower install bootstrap --save -E
								bower install jquery --save -E
		        				;;
		    -p | -phaser )	 	echo "Scaffolding Phaser project"
								cat $DIR/templates/phaser/index.html >> src/index.html
								bower install phaser --save -E
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
echo "###### by Xavi Ro" >> README.md
git init
git add .
git commit -m 'first commit'

#done
toilet -f bigmono9 -F gay 'DONE!'







