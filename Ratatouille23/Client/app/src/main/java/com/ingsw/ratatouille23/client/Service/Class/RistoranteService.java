package com.ingsw.ratatouille23.client.Service.Class;

import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.Retrofit.RetrofitService;
import com.ingsw.ratatouille23.client.Retrofit.RistoranteApi;
import com.ingsw.ratatouille23.client.Service.Callback;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.schedulers.Schedulers;

public class RistoranteService {

    private RistoranteApi ristoranteApi;

    public RistoranteService(){ristoranteApi = RetrofitService.getRetrofit().create(RistoranteApi.class);}

    public void getById(Callback callback, int id){

        ristoranteApi.getById(id)
                .subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new SingleObserver<Ristorante>() {
                    @Override
                    public void onSubscribe(@NonNull Disposable d) {}

                    @Override
                    public void onSuccess(@NonNull Ristorante ristorante) {
                        callback.returnResult(ristorante);
                    }

                    @Override
                    public void onError(@NonNull Throwable e) {
                        System.out.println(e);
                        callback.returnResult(null);
                    }
                });
    }

}
