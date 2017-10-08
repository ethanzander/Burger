var connection = require("./connection.js");

var orm = {
    selectAll: function(cb){
        var queryString = "SELECT * FROM burgers";
        connection.query(queryString, function(err, res){
            if (err) throw err;
            cb(res);
        });
    },
    insertOne: function(burgerName, cb){
        var queryString = "INSERT INTO burgers_db.burgers (burger_name, devoured, date) VALUE (?, false, CURRENT_TIMESTAMP)";
        connection.query(queryString, [burgerName], function(err, res){
            if (err) throw err;
            cb(res);
        });
    },
    updateOne: function(selectedBurger, cb){
        var queryString = "UPDATE burgers SET devoured = true WHERE id = ?";
        connection.query(queryString, [selectedBurger], function(err,res){
            if (err) throw err;
            cb(res);
        });
    }
}


module.exports = orm;