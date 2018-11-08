package hacc2018.planthawaii;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GetData {

    Connection connect;
    String ConnectionResult = "";
    Boolean isSuccess = false;

    public List<Map<String,String>> doInBackground() {
        System.out.println("ran the doinbackground method");
        List<Map<String, String>> data = null;
        data = new ArrayList<Map<String, String>>();
        try
        {
            ConnectionHelper conStr = new ConnectionHelper();
            connect = conStr.connectionclasss();        // Connect to database
            System.out.println("connected");
            if (connect == null)
            {
                ConnectionResult = "Check Your Internet Access!";
                System.out.println(ConnectionResult);
            }
            else
            {
                // Change below query according to your own database.
                String query = "select * from [ORDER]";
                Statement stmt = connect.createStatement();
                System.out.println("statement created");
                ResultSet rs = stmt.executeQuery(query);
                System.out.println("result set created");
                while (rs.next()){
                    String result = rs.getString(1);
                    System.out.println("this is the database data");
                    System.out.println(result);
                    Map<String,String> datanum=new HashMap<String,String>();
                   // datanum.put("ID",rs.getString("CountryId"));
                    //datanum.put("Country",rs.getString("CountryName"));
                    //datanum.put("Capital",rs.getString("CapitalCity"));
                    //data.add(datanum);
                }


                ConnectionResult = " successful";
                isSuccess=true;
                connect.close();
            }
        }
        catch (Exception ex)
        {
            isSuccess = false;
            ConnectionResult = ex.getMessage();
            System.out.println("sucessful is false on connection database");
        }

        return data;
    }



}