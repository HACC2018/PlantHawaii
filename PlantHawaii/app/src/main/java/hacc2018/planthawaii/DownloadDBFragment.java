package hacc2018.planthawaii;


/*
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

*/
//import static com.example.isao.test.CameraFragment.LOGGING_TAG;
/*
public class DownloadDBFragment extends Fragment  implements View.OnClickListener{
    View rootView;

    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        rootView =  inflater.inflate(R.layout.download_db, container, false);

        return rootView;
    }

    @RequiresApi(api = Build.VERSION_CODES.KITKAT)
    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.download:
                System.out.println("clicked download");
                downloadData();
                //    Log.e(LOGGING_TAG, "onclick when pressing buttonsdf");
                // takePicture();
                break;
            default:
                break;
        }

    }
    public void ConnectToDatabase(){
        try {
            Class.forName("net.sourceforge.jtds.jdbc.Driver").newInstance();
            String username = "XXX";
            String password = "XXX";
            Connection DbConn = DriverManager.getConnection("jdbc:jtds:sqlserver://192.188.1.1:1433/DATABASE;user=" + username + ";password=" + password);

            Log.w("Connection","open");
            Statement stmt = DbConn.createStatement();
            ResultSet reset = stmt.executeQuery(" select * from users ");


            EditText num = (EditText) findViewById(R.id.displaymessage);
            num.setText(reset.getString(1));

            DbConn.close();

        } catch (Exception e)
        {
            Log.w("Error connection","" + e.getMessage());
        }
    }
/*
  @RequiresApi(api = Build.VERSION_CODES.KITKAT)
    private void downloadData() {
        // Create a variable for the connection string.
        String connectionUrl=" jdbc:sqlserver://planthawaii.database.windows.net:1433;databaseName=Plant Hawaii;user=shadowbomb@planthawaii;password=AzureSQL1234";

      //  String connectionUrl = "jdbc:sqlserver://<server>:<port>;databaseName=AdventureWorks;user=<user>;password=<password>";

        try (Connection con = DriverManager.getConnection(connectionUrl); Statement stmt = con.createStatement();) {
            String SQL = "SELECT *";
            ResultSet rs = stmt.executeQuery(SQL);

            // Iterate through the data in the result set and display it.
            while (rs.next()) {
                System.out.println(rs.getStatement());
            }
        }
        // Handle any errors that may have occurred.
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
*/