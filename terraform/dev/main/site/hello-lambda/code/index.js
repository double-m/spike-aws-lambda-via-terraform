const figlet = require('figlet');

exports.handler = async (event) => {
    var message = `Hello ${event.name || 'Unknown'}`;

    // This ascii output does not make sense in a Lambda function,
    // but is a funny way to test the packaging of the node_modules folder.
    figlet(message, function(err, data) {
        if (err) {
            console.dir(err);
            return {
                statusCode: 500,
                body: JSON.stringify(err),
            };
        }
        console.log(data)
    });

    return {
        statusCode: 200,
        body: JSON.stringify(message),
    };
};
