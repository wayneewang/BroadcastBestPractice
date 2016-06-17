package com.example.broadcastbestpractice;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

/**
 * Created by Administrator on 2016/6/15.
 */
public class BaseActivity extends AppCompatActivity {
//将所有活动那个加入管理器中，可以随时增减管理器中的活动
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ActivityCollector.addActivity(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        ActivityCollector.removeActivity(this);
    }
}
