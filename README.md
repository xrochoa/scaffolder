# SKA-FOLDER
A commnad-line tool to scaffold ES6 frontend projects using gulp, sass, browserify, babelify, eslint and browser-sync.

## Creates a frontend project template using:
* npm: package management
* gulp: lint, bundle, and minify
	* sass (all css is bundled in style.css)
	* browserify, babelify (all ES6 is bundled in main.js)
	* html and images are minified
	* resources are copied
	* browser-sync for live reloading of any change
	* eslint to check for javascript errors

## Run:
```shell
$ ska-fold <project-name>
```

## Tree Structure
```shell
<project-name>
├── README.md
├── README.txt
├── eslintrc.json
├── gulpfile.js
├── node_modules
├── package.json
└── src
    ├── assets
    │   ├── img
    │   ├── js
    │   │   ├── app
    │   │   └── main.js
    │   ├── res
    │   └── scss
    │       ├── _colors.scss
    │       ├── _fonts.scss
    │       ├── _init.scss
    │       ├── _main.scss
    │       ├── _responsive.scss
    │       ├── _utils.scss
    │       └── style.scss
    └── index.html
```

## Support:
This package was built using bash script and shelljs. Anything outside of that is not supported.

## License
Copyright (c) 2016 Xavier Reyes Ochoa. MIT License.
