

exports.dbJson = function (project_name) {
    return{
        production: {
            host: 'CHANGE_ME',
            port: 27017,
            databaseName: project_name + '_production'
        },
        development: {
            host: 'localhost',
            port: 27017,
            databaseName: project_name + '_development'
        }
    };
};