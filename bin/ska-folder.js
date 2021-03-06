#! /usr/bin/env node

var shell = require('shelljs');
var child_process = require('child_process');

var name = process.argv[2];

if (!process.argv[2]) {
    shell.echo('Please include the name of your project');
    shell.exit(1);
}

/*----------  DIRECTORIES  ----------*/

shell.exec(`
	#make project
	mkdir ${name}
	cd ${name}
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
	`);


/*----------  TEMPLATES  ----------*/

let templates = [
    { name: 'gulpfile.js', path: '/' },
    { name: '.gitignore', path: '/src/assets/js/' },
    { name: 'main.js', path: '/src/assets/js/' },
    { name: 'style.scss', path: '/src/assets/scss/' },
    { name: 'index.html', path: '/src/' },
    { name: 'responsive.scss', path: '/src/assets/scss/' },
    { name: '.eslintrc.json', path: '/' },
    { name: 'README.md', path: '/' },
    { name: 'README.txt', path: '/' }
];

//appends name project into README
shell.echo(`# ${name.toUpperCase()}`).toEnd(`${name}/README.md`);
shell.echo(`${name.toUpperCase()}`).toEnd(`${name}/README.txt`);

//appends templates (uses _ to avoid npm changing some files like .gitignore )
templates.forEach((template) => {
    shell.cat(`${__dirname}/templates/_${template.name}`).toEnd(`${name}${template.path}${template.name}`);
});

/*----------  DEPENDENCIES  ----------*/

child_process.execSync(`cd ${name}; npm init`, { stdio: 'inherit' });
shell.exec(`
	cd ${name}
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
		npm install babel-plugin-dedent -D -E #plugin to remove tabs in template literals
		npm install vinyl-source-stream	-D -E #transforms a source stream from browserify to vinyl
		npm install vinyl-buffer -D -E #transforms vinyl file to buffer for gulp-uglify
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
	`);

/*----------  GIT  ----------*/

shell.exec(`
	cd ${name}
		#git
		git init
		git add .
		git commit -m 'first commit'
	`);

/*----------  DONE  ----------*/

shell.echo('Ska-folded Project!!!');
