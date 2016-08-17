### Static Shopify Starter

Sass / Liquid / JS / Assets are either copied or compiled from `./src` to `./dist` directory.

NPM is required and it is advisable to install node & npm through [nvm](https://github.com/creationix/nvm)

to install node & npm with nvm first install nvm by entering
```sh
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.4/install.sh | bash
# output . . .
$ source ~/.bashrc
# or ~/.zshrc or ~/.bash_profile depending on what shell you have installed & how it configured
$ nvm ls remote
# output find the latest stable release
$ nvm install 6.0.0
# where 6.0.0 is the latest stable version released
$ npm -v
# version number output
```
then you can globally install gulp via npm
```sh
$ npm install gulp -g
```
clone this repo
```sh
$ git clone git@github.com:upstartbureau/static-liquid.git ./{your-project}

```
move into project directory & install dependancies
```sh
$ cd your-project
$ npm install
```

to run development inside your-project root
```sh
$ gulp
```
the default gulp task is BrowserSync + Sass + Liquid + Move Assets while watching on the entire project directory.

edit the files in the `./src` directory & they will output to the `./dist` directory the dev-server listens @ `localhost:1337`. All added assets and work should take place in the src directory.


Layout previews will be available @ http://yourproject.prvw.space server is daemonized w/foreverJS pending DNS & server set-up.
