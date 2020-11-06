package DAL;
import java.sql.*;

public class Datahelper {
   static Connection conn;
   static DriverManager driver;
   static Statement st;
   public static void connection() throws Exception
   {
	   Class.forName("com.mysql.jdbc.Driver");
	   conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/smarterp","root","");
	   st = conn.createStatement();
		
   }
   public static int insertUpdateDelete(String query) throws Exception
   {
	   int res = st.executeUpdate(query);
	   return res;
   }
   
   public static ResultSet selectData(String query) throws Exception
   {
	   return st.executeQuery(query);
   }
   
   
   public static void closeConnection() throws Exception
   {
	   conn.close();
   }
   
	
}
