import java.sql.*;
import java.io.*;
import java.util.*;

/**
 * A sample class that connects to PostgreSQL and runs a simple query.
 *
 * Note: Your database name is your login name, so for login jsmith,
 * you would have
 *    getConnection("jdbc:postgresql://cmps180-db.lt.ucsc.edu/jsmith", 
 *    "jsmith" , "password");
 */
public class Driver
{
    public static void main(String[] args) throws
        ClassNotFoundException, FileNotFoundException, IOException,
        SQLException {
       Connection connection;

   	Class.forName("org.postgresql.Driver");  //Registering the driver
    connection = DriverManager.getConnection(
            "jdbc:postgresql://cmps180-db.lt.ucsc.edu/gmmack",
            "gmmack", "plough03before");  //Making the Connection 

    StoreApplication app = new StoreApplication();

    List<String> phoneNumbers =
        app.getCustomerPhoneFromFirstLastName(connection, "Jean",
                "Black");
    System.out.println(phoneNumbers);
    
    List<String> filmTitles =
        app.getFilmTitlesBasedOnLengthRange(connection, 1, 47);
    System.out.println(filmTitles);

    int count = app.countCustomersInDistrict(connection, "Buenos Aires",
            true);
    System.out.println(count);

    app.insertFilmIntoInventory(connection, "Sequel to the Prequel",
            "Memorable", 98, "PG-13");

    connection.close(); //Closing Connection
    }
}
