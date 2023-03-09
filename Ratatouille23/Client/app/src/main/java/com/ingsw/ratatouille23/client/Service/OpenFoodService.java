package com.ingsw.ratatouille23.client.Service;

import com.ingsw.ratatouille23.client.Retrofit.OpenFoodApi;
import com.ingsw.ratatouille23.client.Retrofit.RetrofitService;
import com.ingsw.ratatouille23.client.Service.Callback;

import java.util.List;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.schedulers.Schedulers;
public class OpenFoodService {
    private OpenFoodApi openFoodApi;

    public OpenFoodService()  {
        this.openFoodApi = RetrofitService.getRetrofitFood().create(OpenFoodApi.class);
    }

    public void getProductList(Callback callback, String name) {
        openFoodApi.getProductList(name,true,true,"product_name")
                .subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new SingleObserver<String>() {
                    @Override
                    public void onSubscribe(@NonNull Disposable d) {}

                    @Override
                    public void onSuccess(@NonNull String string) {
                        callback.returnResult(string);
                    }

                    @Override
                    public void onError(@NonNull Throwable e) {
                        callback.returnError(e);
                    }
                });
    }

    public void getDescription(Callback callback, String name) {
        openFoodApi.getProductList(name,true,true,"product_name,generic_name")
                .subscribeOn(Schedulers.newThread())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(new SingleObserver<String>() {
                    @Override
                    public void onSubscribe(@NonNull Disposable d) {}

                    @Override
                    public void onSuccess(@NonNull String string) {
                        callback.returnResult(string);
                    }

                    @Override
                    public void onError(@NonNull Throwable e) {
                        callback.returnError(e);
                    }
                });
    }
}
