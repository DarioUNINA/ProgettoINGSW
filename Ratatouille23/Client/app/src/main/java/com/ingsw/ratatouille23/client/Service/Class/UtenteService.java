package com.ingsw.ratatouille23.client.Service.Class;

import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Retrofit.RetrofitService;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Retrofit.UtenteApi;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.schedulers.Schedulers;
public class UtenteService {

    private UtenteApi utenteApi;

    public UtenteService(){
        utenteApi = RetrofitService.getRetrofit().create(UtenteApi.class);
    }

    public void checkUser(Callback callback, String username, String password){

        utenteApi.getByEmailAndPassword(username,password)
                .subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new SingleObserver<Utente>() {
                    @Override
                    public void onSubscribe(@NonNull Disposable d) {}

                    @Override
                    public void onSuccess(@NonNull Utente utente) {
                        callback.returnResult(utente);
                    }

                    @Override
                    public void onError(@NonNull Throwable e) {
                        System.out.println(e);
                        callback.returnResult(null);
                    }
                });

    }
}
