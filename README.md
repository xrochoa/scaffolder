# scaffolder
###### by Xavi Ro
Prepares folders and files, a double Node.js server, a gulfile for automation, installs dependencies and initializes a git repository.

##Folder structure
[folder name]
	- /src (source code)
		- index.html
		- /js/app/app.js (a unique bundle.js file is created with browserify after running gulp)
		- /css (a unique style.css file is created with the Sass compiler after running gulp)
		- /scss (Sass files)
			- style.scss (main Sass file)
			- _variables.scss (variables as a dependency)
			- _mixins.scss (mixins as a dependency)
			- _palette.scss (a color palette starter as a dependency)
		- /img (images)
		- /views (html views in case of a single page app)
		- /res (any other needed file: json, csv, txt, pdf, etc)
	- /tests (empty folder for tests)
	- gulpfile.js (starts 2 servers with the source and the minified distribution version)
	- .gitignore (hidden: git ignores OS X meta folder file, and npm and bower dependencies)
	- package.json (npm dependencies)
	- bower.json (bower dependencies)
	- .git (hidden: git for version control)
	- README.md (information about project in markdown language)
	- dist (created by gulp with minified project)

##How to
1. Copy the scafold folder to a prefered location
2. Add **alias scaffold="[your path]/scaffolder/scaffold.sh"** to **.bash_profile** located at **~** (your user's home folder)
3. Add permissions to make **scaffold.sh** executable using **sudo chmod 700 scaffold.sh**
4. Run from any folder using the command **scaffold**
5. Enter project information for **npm** and **bower** packages
6. Run **gulp** and get to work