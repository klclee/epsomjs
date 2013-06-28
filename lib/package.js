

exports.package = function (project_name){
    return{
        "name": project_name,
        "version": "0.0.1",
        "private": true,
        "scripts": {
            "start": "grunt",
            "test": "mocha --require should --compilers coffee:coffee-script --colors"
        },
        "dependencies": {
            "express": "3.2.3",
            "css": "*",
            "uglify-js": "*",
            "connect-assets": "*",
            "which": "*",
            "mongoose": "*",
            "request": "*",
            "raw": "*"
        },
        "devDependencies": {
            "should": "*",
            "docco": "*",
            "grunt": "~0.4.1",
            "grunt-contrib-coffee": "~0.7.0",
            "grunt-contrib-uglify": "~0.2.2",
            "grunt-nodemon": "0.0.5",
            "grunt-concurrent": "~0.3.0",
            "grunt-contrib-watch": "~0.4.4"
        }
    }


};