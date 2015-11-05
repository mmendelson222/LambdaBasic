console.log('Loading');
var async = require('async');

exports.handler = function (event, context) {
    async.series([
        function (callback) {
            if (event != null) {
                console.log('event = ' + JSON.stringify(event));
            }
            else {
                console.log('No event object');
            }
            callback();
        }
    ], 
    function (err) {
        context.succeed("finished " + (new Date()));
    });
};
