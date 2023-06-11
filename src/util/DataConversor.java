package util;

import java.sql.*;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class DataConversor {
	public static java.sql.Date ToSQLDate(String d) throws ParseException, SQLException {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date uDt = df.parse(d);
		return new Date(uDt.getTime());
	}
}
