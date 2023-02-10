package com.ingsw.ratatouille23.client.Presenter;

import android.util.Log;

import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Service.Class.UserService;
import com.ingsw.ratatouille23.client.View.LogInActivity;


public class UserPresenter {
    private UserService service;
    private LogInActivity logInActivity;

    public UserPresenter(LogInActivity logInActivity){
        this.logInActivity = logInActivity;
        service = new UserService();
    }


    public void login(){
        service.checkUser(new Callback(){
            @Override
            public void returnResult(Object o){
                if((Boolean)o)
                    System.out.println(" login effettuato\n");
                else
                    System.out.println("Login fallito\n");
            }

            @Override
            public void returnError(Throwable e) {
                System.out.println("Errore\n");

            }
        }, logInActivity.getUsernameEditText().getText().toString(), logInActivity.getPasswordEditText().getText().toString());
    }
}
