# ska-folder

---
##Creates a frontend project template using:
- npm: package management
- gulp: lint, bundle, and minify
-- sass (all css is bundled in style.css)
-- browserify, Babelify (all ES6 is bundled in main.js)
-- html and images are minified
-- resources are copied
-- browser-sync for live reloading of any change
-- eslint to check for javascript errors

---
## Run:
```shell
ska-fold
```

---
## Tree Structure
```shell
<project-name>
├── README.md
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

---
## Support:
* This package was built using bash script. You'll have to become a wizard to make it work outside of Unix.

