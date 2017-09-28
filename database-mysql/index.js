var mysql = require('mysql');

var connection = mysql.createConnection({
  host     : '127.0.0.1',
  user     : 'root',
  password : 'plantlife',
  database : 'test'
});

var selectAll = function(callback) {
  connection.query(`SELECT a.*, users.username AS attendee FROM (SELECT users.username AS creator, events.name, events.attendee FROM users INNER JOIN events ON users.id = events.creator)a INNER JOIN users ON a.attendee = users.id;`
    , function(err, results, fields) {
    if(err) {
      callback(err, null);
    } else {
      console.log('results:', results);
      callback(null, results);
    }
  });
};


module.exports.selectAll = selectAll;
