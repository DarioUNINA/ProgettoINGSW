package com.ingsw.ratatouille23.client.Service;

import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Retrofit.OrdineApi;
import com.ingsw.ratatouille23.client.Retrofit.RetrofitService;
import com.ingsw.ratatouille23.client.Retrofit.UtenteApi;

import java.util.List;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.schedulers.Schedulers;

public class OrdineService {

    private OrdineApi ordineApi;

    public OrdineService(){
        ordineApi =  RetrofitService.getRetrofit().create(OrdineApi.class);
    }

    public void getByTavolo(Callback callback, int idTavolo){

        ordineApi.getbyIdTavolo(idTavolo)
                .subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new SingleObserver<List<Ordine>>() {
                    @Override
                    public void onSubscribe(@NonNull Disposable d) {}

                    @Override
                    public void onSuccess(@NonNull List<Ordine> ordini) {
                        callback.returnResult(ordini);
                    }

                    @Override
                    public void onError(@NonNull Throwable e) {
                        System.out.println(e);
                        callback.returnResult(null);
                    }
                });

    }
}
