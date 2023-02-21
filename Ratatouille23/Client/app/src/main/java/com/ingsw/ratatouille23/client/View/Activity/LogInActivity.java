package com.ingsw.ratatouille23.client.View.Activity;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatButton;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;

import com.ingsw.ratatouille23.client.Presenter.UtentePresenter;
import com.ingsw.ratatouille23.client.R;

public class LogInActivity extends AppCompatActivity {

    private EditText usernameEditText;
    private EditText passwordEditText;
    private AppCompatButton loginButton;

    private UtentePresenter utentePresenter;

    private Intent intent;


    //Getters and Setters

    public UtentePresenter getUtentePresenter() {
        return utentePresenter;
    }

    public void setUtentePresenter(UtentePresenter utentePresenter) {
        this.utentePresenter = utentePresenter;
    }

    @Override
    public Intent getIntent() {
        return intent;
    }

    @Override
    public void setIntent(Intent intent) {
        this.intent = intent;
    }

    public UtentePresenter getUserPresenter() {
        return utentePresenter;
    }

    public void setUserPresenter(UtentePresenter utentePresenter) {
        this.utentePresenter = utentePresenter;
    }

    public EditText getPasswordEditText() {
        return passwordEditText;
    }

    public void setPasswordEditText(EditText passwordEditText) {
        this.passwordEditText = passwordEditText;
    }

    public AppCompatButton getLoginButton() {
        return loginButton;
    }

    public void setLoginButton(AppCompatButton loginButton) {
        this.loginButton = loginButton;
    }

    public EditText getUsernameEditText() {
        return usernameEditText;
    }

    public void setUsernameEditText(EditText usernameEditText) {
        this.usernameEditText = usernameEditText;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_login);

        usernameEditText = findViewById(R.id.login_username_editText);
        passwordEditText = findViewById(R.id.login_password_editText);
        loginButton = findViewById(R.id.login_login_button);
        intent = new Intent(LogInActivity.this, HomeActivity.class);
        utentePresenter = new UtentePresenter(this);

        loginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                utentePresenter.login();
            }
        });

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