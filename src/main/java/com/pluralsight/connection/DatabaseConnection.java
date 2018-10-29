package com.pluralsight.connection;

import java.sql.DriverManager;
import java.sql.ResultSet;

import org.json.JSONArray;
import org.json.JSONObject;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import com.pluralsight.jsonview.Person;



public class DatabaseConnection {
  

    public static void addDetails(String name,String date,String type,String hours) throws Exception {
        try {
        	System.out.println("inside database connection");
            // This will load the MySQL driver, each DB has its own driver
            Class.forName("com.mysql.jdbc.Driver");
            // Setup the connection with the DB
            Connection    connect = (Connection) DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/learning?"
                            + "user=root&password=root");

            // Statements allow to issue SQL queries to the database
            Statement    statement = (Statement) connect.createStatement();
            // Result set get the result of the SQL query
            ResultSet   resultSet = statement
                    .executeQuery("use learning");
            Person person = new Person();
           /* String name=person.getName();
            String date=person.getDate();
            String type=person.getType();
            String hours=person.getHours();*/
         //   PreparedStatement    preparedStatement = (PreparedStatement) connect
      // .prepareStatement("INSERT INTO learning.fitnesstracker (Name, Date, Type, Hoursn) VALUES VALUES ('"+name+"','"+date+"','"+type+"','"+hours+"');");
           System.out.println("..........."+name+date+type+hours);
       String   query = "INSERT INTO learning.Fitness " +
                    "VALUES ('"+name+"','"+date+"','"+type+"','"+hours+"')";
       statement.executeUpdate(query);
            //preparedStatement.executeUpdate();
System.out.println("successs");

        } catch (Exception e) {
            throw e;
        } /*finally {
            Connection connect = null;
			connect.close();
        }*/

    }

    
    //display all records
    
    
    public static JSONArray displayAllDetails() throws Exception {
        try {
        	System.out.println("inside database connection");
            // This will load the MySQL driver, each DB has its own driver
            Class.forName("com.mysql.jdbc.Driver");
            // Setup the connection with the DB
            Connection    connect = (Connection) DriverManager
                    .getConnection("jdbc:mysql://localhost:3306/learning?"
                            + "user=root&password=root");

            // Statements allow to issue SQL queries to the database
            Statement    statement = (Statement) connect.createStatement();
            // Result set get the result of the SQL query
            ResultSet   resultSet = statement
                    .executeQuery("use learning");
            Person person = new Person();
           /* String name=person.getName();
            String date=person.getDate();
            String type=person.getType();
            String hours=person.getHours();*/
         //   PreparedStatement    preparedStatement = (PreparedStatement) connect
      // .prepareStatement("INSERT INTO learning.fitnesstracker (Name, Date, Type, Hoursn) VALUES VALUES ('"+name+"','"+date+"','"+type+"','"+hours+"');");
          // System.out.println("..........."+name+date+type+hours);
      // String   query = "select * from learning.fitnesstracker ";
            JSONArray arr=new JSONArray();
          
            ResultSet rs=  statement.executeQuery("select * from learning.Fitness");
       while (rs.next()) {
    	   JSONObject obj=new JSONObject();
    	   String Name = rs.getString("Name");
    	   String Date = rs.getString("Date");
    	   String Type = rs.getString("Type");
    	   String Hours = rs.getString("Hoursn");
    	   //System.out.println(Name + "\n"+Date+"\n"+Type+"\n"+Hours+"\n");
    	   obj.put("name", Name).put("date", Date).put("type", Type).put("hours", Hours);
    	  
    	   arr.put(obj);
    	   System.out.println(arr.length());
    	 }
            //preparedStatement.executeUpdate();
System.out.println("successs");
		return arr;
        } catch (Exception e) {
            throw e;
        } /*finally {
            Connection connect = null;
			connect.close();
        }*/

    }
   /* public static void main(String[] args) throws Exception {
		displayAllDetails();
	}*/
}
