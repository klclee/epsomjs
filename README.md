epsom
=======

The aim of epsomjs is to provide a clear way to kick start your nodejs/expressjs project. Using epsom will allow you to start your next nodejs web stack in less then 1 minute!

## Why?
When I started to work on nodejs there still quite a bit of requrments to fullfill be be productive at it. One of the thing I spends alot of time on is wiring frameworks up for a relativly simple web project. This is set out to help with that 

## features:
* command line based (``` epsom ```) approch to created new project
* coffeescript as main development language
* Include database config json file to connect to mongodb via mongoose
* Using metaprogramming technique to [dynamically retrieve models](https://github.com/klclee/epsomjs/blob/master/lib/templates/src/database.coffee), means less boiler plate for you.
* A simple example of using emberjs in the application templates.

## Install:

*make sure you already have nodejs, npm, mocha, coffeescript installed at global scope plus mongodb already installed*

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
