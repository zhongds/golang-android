package acc.auth

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        System.loadLibrary("my_jni")

        var sum = add(4, 6);
        Log.d("golang", sum.toString());

        baseview.text = sum.toString();

    }

    external fun add(a: Int, b: Int): Int
}
