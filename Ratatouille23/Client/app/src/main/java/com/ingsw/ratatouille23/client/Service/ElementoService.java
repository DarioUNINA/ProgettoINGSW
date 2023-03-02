package com.ingsw.ratatouille23.client.Service;

import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.Retrofit.ElementoApi;
import com.ingsw.ratatouille23.client.Retrofit.RetrofitService;
import com.ingsw.ratatouille23.client.Model.Elemento;

import java.util.List;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.schedulers.Schedulers;

public class ElementoService {

    private ElementoApi elementoApi;


    public ElementoService(){
        elementoApi = RetrofitService.getRetrofit().create(ElementoApi.class);
    }

    public void getByidCategoria(Callback callback, int idCategoria){

        elementoApi.getByIdCategoria(idCategoria)
                .subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new SingleObserver<List<Elemento>>() {
                    @Override
                    public void onSubscribe(@NonNull Disposable d) {}

                    @Override
                    public void onSuccess(@NonNull List<Elemento> elementi) {
                        callback.returnResult(elementi);
                    }

                    @Override
                    public void onError(@NonNull Throwable e) {
                        System.out.println(e);
                        callback.returnResult(null);
                    }
                });

    }

    public void getByCategoriaOrderByPrezzoAsc(Callback callback, int idCategoria){

        elementoApi.getByCategoriaOrderByPrezzoAsc(idCategoria)
                .subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new SingleObserver<List<Elemento>>() {
                    @Override
                    public void onSubscribe(@NonNull Disposable d) {}

                    @Override
                    public void onSuccess(@NonNull List<Elemento> elementi) {
                        callback.returnResult(elementi);
                    }

                    @Override
                    public void onError(@NonNull Throwable e) {
                        System.out.println(e);
                        callback.returnResult(null);
                    }
                });
    }

    public void getByCategoriaOrderByPrezzoDesc(Callback callback, int idCategoria){

        elementoApi.getByCategoriaOrderByPrezzoDesc(idCategoria)
                .subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new SingleObserver<List<Elemento>>() {
                    @Override
                    public void onSubscribe(@NonNull Disposable d) {}

                    @Override
                    public void onSuccess(@NonNull List<Elemento> elementi) {
                        callback.returnResult(elementi);
                    }

                    @Override
                    public void onError(@NonNull Throwable e) {
                        System.out.println(e);
                        callback.returnResult(null);
                    }
                });
    }

    public void getByCategoriaOrderByNomeAsc(Callback callback, int idCategoria){

        elementoApi.getByCategoriaOrderByNomeAsc(idCategoria)
                .subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new SingleObserver<List<Elemento>>() {
                    @Override
                    public void onSubscribe(@NonNull Disposable d) {}

                    @Override
                    public void onSuccess(@NonNull List<Elemento> elementi) {
                        callback.returnResult(elementi);
                    }

                    @Override
                    public void onError(@NonNull Throwable e) {
                        System.out.println(e);
                        callback.returnResult(null);
                    }
                });
    }

    public void getByCategoriaOrderByNomeDesc(Callback callback, int idCategoria){

        elementoApi.getByCategoriaOrderByNomeDesc(idCategoria)
                .subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new SingleObserver<List<Elemento>>() {
                    @Override
                    public void onSubscribe(@NonNull Disposable d) {}

                    @Override
                    public void onSuccess(@NonNull List<Elemento> elementi) {
                        callback.returnResult(elementi);
                    }

                    @Override
                    public void onError(@NonNull Throwable e) {
                        System.out.println(e);
                        callback.returnResult(null);
                    }
                });
    }
}
