
import 'package:mysql_utils/mysql1/src/single_connection.dart';

Future main() async {
  // Open a connection (testdb should already exist)
  final connection = await MySqlConnection.connect(new ConnectionSettings(
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'abc',
    db: 'deep_db',
  ));
  var results = await connection.query('select * from register');
  for (var row in results) {
    print('${row[1]}');
  }

  // Finally, close the connection
  await connection.close();
}