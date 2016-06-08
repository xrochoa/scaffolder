#inside project
touch server.js
touch gulpfile.js
touch .gitignore
#mkdir tests
#mkdir utils
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
			touch _normalize.scss
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
			touch app.js
			mkdir lib
			cd ..
		#inside assets
		cd ..
	#inside src
	cd ..
#inside project

#npm
npm init
npm install express --save-dev -E

#bower
bower init

#gulp
sudo npm install gulp --save-dev -E
#gulp images
sudo npm install gulp-imagemin --save-dev -E
#gulp html
sudo npm install gulp-htmlmin --save-dev -E
#gulp css
sudo npm install gulp-sass --save-dev -E
sudo npm install gulp-autoprefixer --save-dev -E
sudo npm install gulp-clean-css --save-dev -E
#gulp javascript
sudo npm install jshint --save-dev -E
sudo npm install gulp-jshint --save-dev -E
sudo npm install gulp-include --save-dev -E
sudo npm install gulp-uglify --save-dev -E
#gulp server
sudo npm install gulp-nodemon --save-dev -E
sudo npm install gulp-livereload --save-dev -E
#gulp utilities
sudo npm install del --save-dev -E
sudo npm install run-sequence --save-dev -E
sudo npm install gulp-sourcemaps --save-dev -E


#variable with bash script path
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#server.js
cat $DIR/templates/server.js >> server.js
#gulpfile.js
cat $DIR/templates/gulpfile.js >> gulpfile.js
#.ignore
cat $DIR/templates/.gitignore >> .gitignore
#app.js
cat $DIR/templates/app.js >> src/assets/js/app.js
#scss
cat $DIR/templates/style.scss >> src/assets/scss/style.scss
#index.html
cat $DIR/templates/index.html >> src/index.html
#_normalize.scss
cat $DIR/templates/_normalize.scss >> src/assets/scss/_normalize.scss
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
GREEN='\033[0;32m'
NC='\033[0m'
printf "${GREEN}Scaffolder Template Ready :)${NC}\n"






