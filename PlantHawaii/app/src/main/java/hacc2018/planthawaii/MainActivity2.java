package hacc2018.planthawaii;

import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import java.util.List;
import java.util.Map;

public class MainActivity2 extends AppCompatActivity {
    TextView TV_Header;
    Typeface font;
    Button btn_Get;
    ListView LV_Country;
    SimpleAdapter ADAhere;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        /*
        TV_Header=(TextView) findViewById(R.id.TV_Header);
        LV_Country=(ListView)findViewById(R.id.LV_Country);
        btn_Get=(Button)findViewById(R.id.btn_Get);
        */

        btn_Get.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                List<Map<String,String>> MyData = null;
                GetData mydata =new GetData();
                MyData= mydata.doInBackground();
                String[] fromwhere = { "ID","Country","Capital" };

                //int[] viewswhere = {R.id.lblID , R.id.lblcountryname,R.id.lblCapitalCity};

                //ADAhere = new SimpleAdapter(MainActivity.this, MyData,R.layout.listtemplate, fromwhere, viewswhere);

                LV_Country.setAdapter(ADAhere);

            }
        });
    }


}