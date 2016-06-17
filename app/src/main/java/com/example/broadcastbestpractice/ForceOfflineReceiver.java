package com.example.broadcastbestpractice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

import android.support.v7.app.AlertDialog;
import android.view.WindowManager;

/**
 * Created by Administrator on 2016/6/15.
 */
public class ForceOfflineReceiver extends BroadcastReceiver {
    @Override

    public void onReceive(final Context context, Intent intent) {
       AlertDialog.Builder dialogBuilder = new AlertDialog.Builder(context);

        dialogBuilder.setTitle("Warning");
        dialogBuilder.setMessage("You are forced to be offline.Please try to login again.");

        dialogBuilder.setCancelable(false);
        dialogBuilder.setPositiveButton("OK", new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                ActivityCollector.finishAll();

                Intent intent = new Intent(context,LoginActivity.class);
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                context.startActivity(intent);
            }
        });

        AlertDialog alertDialog = dialogBuilder.create();//创建对话框

        //设置对话框类型
        alertDialog.getWindow().setType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);
        alertDialog.show();
    }
}
