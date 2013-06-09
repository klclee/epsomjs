

exports.package = function (project_name){
    return{
        "name": project_name,
        "version": "0.0.2",
        "private": true,
        "scripts": {
            "install": "cake build",
            "start": "node server.js",
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
            "docco": "*"
        }
    }


};