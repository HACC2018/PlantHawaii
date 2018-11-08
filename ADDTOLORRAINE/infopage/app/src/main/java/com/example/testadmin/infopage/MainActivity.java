package com.example.testadmin.infopage;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        TextView textView = (TextView) findViewById(R.id.textView2);
        textView.setMovementMethod(new ScrollingMovementMethod());
    }

    public void openCamera(View view) {
        Intent intent = new Intent( this, camera.class);
        startActivity(intent);
    }

    public void openHome(View view) {
       Intent intent = new Intent( this, home.class);
       startActivity(intent);
    }
}
