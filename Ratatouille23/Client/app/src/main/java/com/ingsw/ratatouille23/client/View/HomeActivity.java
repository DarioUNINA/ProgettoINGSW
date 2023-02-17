package com.ingsw.ratatouille23.client.View;

import android.os.Bundle;
import android.view.View;

import androidx.appcompat.app.AppCompatActivity;

import com.google.android.material.tabs.TabLayout;
import com.ingsw.ratatouille23.client.R;

public class HomeActivity extends AppCompatActivity {

    TabLayout homeTabLayoutCategory;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home);

        homeTabLayoutCategory = findViewById(R.id.homeTabLayout);


        homeTabLayoutCategory.addTab(homeTabLayoutCategory.newTab().setIcon(R.drawable.ic_baseline_people));
        homeTabLayoutCategory.addTab(homeTabLayoutCategory.newTab().setIcon(R.drawable.table));
        homeTabLayoutCategory.addTab(homeTabLayoutCategory.newTab().setIcon(R.drawable.ic_baseline_menu_));
        homeTabLayoutCategory.addTab(homeTabLayoutCategory.newTab().setIcon(R.drawable.chef));
        homeTabLayoutCategory.setTabGravity(homeTabLayoutCategory.GRAVITY_FILL);

    }

    @Override
    public void onWindowFocusChanged(boolean hasFocus){
        super.onWindowFocusChanged(hasFocus);
        View view = getWindow().getDecorView();
        if(hasFocus){
            view.setSystemUiVisibility(
                    View.SYSTEM_UI_FLAG_LAYOUT_STABLE
                            | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
                            | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
                            | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
                            | View.SYSTEM_UI_FLAG_FULLSCREEN
                            | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY);

        }
    }
}