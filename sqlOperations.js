var fs = require("fs");
var file = "sql/f1predictor.db";
var exists = fs.existsSync(file);

var sqlite3 = require("sqlite3").verbose();
var db = new sqlite3.Database(file);

db.serialize(function() {
	db.run("CREATE TABLE if not exists Users (username TEXT, password TEXT, email TEXT, activated INT)");

	var stmt = db.prepare("INSERT INTO Users VALUES (?,?,?,?)");
	stmt.run('jamesferry84', 'password', 'jamesferry84@email.com', 1);
	stmt.finalize();

	db.each("SELECT username AS username, password AS password FROM Users", function(err, row) {
		console.log(row.username, row.password);
	});
});

db.close();