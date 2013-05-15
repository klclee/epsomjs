epsom
=======

The aim of epsomjs is to provide a clear way to kick start your nodejs/expressjs project. The ultimate aim is provide a way to work with expressjs using coffeescript as your main langauge, emberjs as your view MVC and mongodb as your store.

## releases:

### 0.2.0
* added config directory. Writes out a mongodb config file for different envioments.
* added example in the template (database.coffee) to retrive a mongoose schema
* changed the command line form crystal to epsom
* fixed path problems when creating the project files

### 0.1.1
* more relsitic configuration based on Emberjs. Now the tempaltes work with ember out of the box!
* remove zepto as emberjs needs jquery

### 0.0.1
* create template files for expressjs with zurb foundation, coffee-script, emberjs, jquery, zepto. 

## Install:

*make sure you already have nodejs, npm and mongodb installed at global scope*

```npm install -g epsom```

## Useage:

```epsom path_to_your_new_project```

or

``` epsom ```


The above will create a project at your current path


You should see a set of new files ready to start your project with. For more information for each of the frameworks:

* [Nodejs](http://nodejs.org/)
* [Expressjs](http://expressjs.com)
* [Emberjs](http://emberjs.com)
* [Foundation](http://foundation.zurb.com/docs/)
* [Jquery](http://jquery.com/)
