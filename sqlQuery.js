//Load Modules
var sqlite3 = require("sqlite3").verbose();
var db = new sqlite3.Database("sql/f1predictor.db");

//Perform SELECT
db.all("SELECT * from USERS", function(err,rows) {
	console.log(rows);
});

db.close();

