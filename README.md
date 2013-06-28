epsom
=======

[![Build Status](https://travis-ci.org/klclee/epsomjs.png)](https://travis-ci.org/klclee/epsomjs)

The aim of epsomjs is to provide a clear way to kick start your nodejs/expressjs project. Using epsom will allow you to start your next nodejs web stack in less then 1 minute!

## features:
* command line based (``` epsom ```) approch to created new project
* coffeescript as main development language
* Include database config json file to connect to mongodb via mongoose
* Using metaprogramming technique to [dynamically retrieve models](https://github.com/klclee/epsomjs/blob/master/lib/templates/src/database.coffee), means less boiler plate for you.
* A simple example of using emberjs in the application templates.

## Install:

*make sure you already have nodejs, npm, mocha, coffeescript, grunt installed at global scope plus mongodb installed*

```npm install -g epsom```

## Useage:

```epsom path_to_your_new_project```

or

``` epsom ```


The above will create a project at your current path


## The stack:
* [Nodejs](http://nodejs.org/)
* [Expressjs](http://expressjs.com)
* [Rawjs](https://github.com/klclee/rawjs)
* [Emberjs](http://emberjs.com)
* [Foundation](http://foundation.zurb.com/docs/)
* [Jquery](http://jquery.com/)
