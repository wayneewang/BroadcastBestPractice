[1mdiff --git a/app/src/main/AndroidManifest.xml b/app/src/main/AndroidManifest.xml[m
[1mindex 26e667c..e4588a9 100644[m
[1m--- a/app/src/main/AndroidManifest.xml[m
[1m+++ b/app/src/main/AndroidManifest.xml[m
[36m@@ -13,17 +13,23 @@[m
         android:icon="@mipmap/ic_launcher"[m
         android:label="@string/app_name"[m
         android:supportsRtl="true"[m
[31m-        android:theme="@style/AppTheme">[m
[32m+[m[32m        android:theme="@style/Theme.AppCompat">[m[41m[m
         <activity android:name=".LoginActivity"[m
[31m-            android:label="@string/app_name">[m
[32m+[m[32m            android:label="@string/app_name"[m[41m[m
[32m+[m[32m            android:theme="@style/Theme.AppCompat"[m[41m[m
[32m+[m[41m[m
[32m+[m[32m            >[m[41m[m
             <intent-filter>[m
[31m-                <action android:name="android.intent.action.MAIN" />[m
[32m+[m[32m                <action android:name="android.intent.action.MAIN"[m[41m[m
[32m+[m[32m                    />[m[41m[m
 [m
                 <category android:name="android.intent.category.LAUNCHER" />[m
             </intent-filter>[m
         </activity>[m
 [m
[31m-        <activity android:name=".MainActivity">[m
[32m+[m[32m        <activity android:name=".MainActivity"[m[41m[m
[32m+[m[32m            android:theme="@style/Theme.AppCompat"[m[41m[m
[32m+[m[32m            >[m[41m[m
 [m
         </activity>[m
         <receiver android:name=".ForceOfflineReceiver">[m
[1mdiff --git a/app/src/main/java/com/example/broadcastbestpractice/ForceOfflineReceiver.java b/app/src/main/java/com/example/broadcastbestpractice/ForceOfflineReceiver.java[m
[1mindex e13e285..d541676 100644[m
[1m--- a/app/src/main/java/com/example/broadcastbestpractice/ForceOfflineReceiver.java[m
[1m+++ b/app/src/main/java/com/example/broadcastbestpractice/ForceOfflineReceiver.java[m
[36m@@ -13,8 +13,9 @@[m [mimport android.view.WindowManager;[m
  */[m
 public class ForceOfflineReceiver extends BroadcastReceiver {[m
     @Override[m
[32m+[m[41m[m
     public void onReceive(final Context context, Intent intent) {[m
[31m-        AlertDialog.Builder dialogBuilder = new AlertDialog.Builder(context);[m
[32m+[m[32m       AlertDialog.Builder dialogBuilder = new AlertDialog.Builder(context);[m[41m[m
 [m
         dialogBuilder.setTitle("Warning");[m
         dialogBuilder.setMessage("You are forced to be offline.Please try to login again.");[m
[36m@@ -26,7 +27,7 @@[m [mpublic class ForceOfflineReceiver extends BroadcastReceiver {[m
                 ActivityCollector.finishAll();[m
 [m
                 Intent intent = new Intent(context,LoginActivity.class);[m
[31m-                intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK);[m
[32m+[m[32m                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);[m[41m[m
                 context.startActivity(intent);[m
             }[m
         });[m
[1mdiff --git a/app/src/main/java/com/example/broadcastbestpractice/LoginActivity.java b/app/src/main/java/com/example/broadcastbestpractice/LoginActivity.java[m
[1mindex e5503a8..18665ba 100644[m
[1m--- a/app/src/main/java/com/example/broadcastbestpractice/LoginActivity.java[m
[1m+++ b/app/src/main/java/com/example/broadcastbestpractice/LoginActivity.java[m
[36m@@ -26,6 +26,7 @@[m [mpublic class LoginActivity extends BaseActivity {[m
         login = (Button) findViewById(R.id.login);[m
 [m
         login.setOnClickListener(new View.OnClickListener() {[m
[32m+[m[41m[m
             @Override[m
             public void onClick(View v) {[m
                 String password = passwordEdit.getText().toString();[m
[1mdiff --git a/app/src/main/java/com/example/broadcastbestpractice/MainActivity.java b/app/src/main/java/com/example/broadcastbestpractice/MainActivity.java[m
[1mindex 2a9c150..42bc7e8 100644[m
[1m--- a/app/src/main/java/com/example/broadcastbestpractice/MainActivity.java[m
[1m+++ b/app/src/main/java/com/example/broadcastbestpractice/MainActivity.java[m
[36m@@ -6,7 +6,7 @@[m [mimport android.os.Bundle;[m
 import android.view.View;[m
 import android.widget.Button;[m
 [m
[31m-public class MainActivity extends BaseActivity {[m
[32m+[m[32mpublic class MainActivity extends AppCompatActivity {[m[41m[m
 [m
     @Override[m
     protected void onCreate(Bundle savedInstanceState) {[m
[1mdiff --git a/app/src/main/res/layout/login.xml b/app/src/main/res/layout/login.xml[m
[1mindex d40c7d1..1842bb2 100644[m
[1m--- a/app/src/main/res/layout/login.xml[m
[1m+++ b/app/src/main/res/layout/login.xml[m
[36m@@ -7,14 +7,17 @@[m
     <TableRow>[m
         <TextView android:layout_height = "wrap_content"[m
             android:text="Account:"/>[m
[32m+[m[41m[m
         <EditText android:id="@+id/account"[m
             android:layout_height="wrap_content"[m
             android:hint="Input your account"/>[m
[32m+[m[41m[m
     </TableRow>[m
 [m
     <TableRow>[m
         <TextView android:layout_height="wrap_content"[m
             android:text="Password"/>[m
[32m+[m[41m[m
         <EditText android:id="@+id/password"[m
             android:hint="text Passwprd"[m
             android:layout_height="wrap_content"[m
