
echo "This will scaffold a frontend project inside this folder."
read -n1 -r -p "Press space to continue or CTRL+C to exit..." key

#if space is pressed
if [ "$key" = '' ]; then

	#if no argument is given
	if [ $# == 0 ]; then
	echo "The project name is required"
	fi

	#if one argument is given
	if [ $# == 1 ]; then

	#make project
	mkdir $1
	cd $1
		#inside project
		touch gulpfile.js
		touch .gitignore
		mkdir src
		cd src
			#inside src
			touch index.html
			mkdir assets
			cd assets
				#inside assets
				mkdir img
				mkdir scss
				mkdir js
				mkdir res
				cd scss
					#inside scss
					touch style.scss
					touch _utils.scss
					touch _colors.scss
					touch _fonts.scss
					touch _main.scss
					touch _responsive.scss
					touch _init.scss
					cd ..
				#inside assets
				cd js
					#inside js
					touch main.js
					mkdir app
					cd ..
				#inside assets
				cd ..
			#inside src
			cd ..
		#inside project

		#npm
		npm init

		#DEV DEPENDENCIES

		#gulp
		npm install gulp -D -E
		#gulp images
		npm install gulp-imagemin -D -E
		#gulp html
		npm install gulp-htmlmin -D -E
		#gulp css
		npm install gulp-sass -D -E
		npm install gulp-autoprefixer -D -E
		npm install gulp-clean-css -D -E
		#gulp javascript
		npm install gulp-eslint -D -E
		npm install eslint
		npm install browserify -D -E
		npm install babelify -D -E
		npm install babel-preset-es2015 -D -E #needed babel preset for ES6
		npm install vinyl-source-stream	-S -E #transforms a source stream from browserify to vinyl
		npm install vinyl-buffer -S -E #transforms vinyl file to buffer for gulp-uglify
		npm install gulp-uglify -D -E
		#gulp server
		npm install browser-sync -D -E
		#gulp utilities
		npm install del -D -E
		npm install run-sequence -D -E
		npm install gulp-sourcemaps -D -E
		npm install yargs -D -E
		npm install gulp-if -D -E

		#DEPENDENCIES

		#normalize.css
		npm install normalize.css -S -E

		#TEMPLATE FILES

		#variable with bash script path
		DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

		#gulpfile.js
		cat $DIR/templates/gulpfile.js >> gulpfile.js
		#.ignore
		cat $DIR/templates/.gitignore >> .gitignore
		#app.js
		cat $DIR/templates/main.js >> src/assets/js/main.js
		#scss
		cat $DIR/templates/style.scss >> src/assets/scss/style.scss
		#index.html
		cat $DIR/templates/index.html >> src/index.html
		#_responsive.scss
		cat $DIR/templates/_responsive.scss >> src/assets/scss/_responsive.scss

		#readme
		echo "# ${PWD##*/}" >> README.md
		cat $DIR/templates/README.md >> README.md

		#git
		git init
		git add .
		git commit -m 'first commit'

		#done
		printf "Ska-Folder Template Ready!"

	fi

fi




