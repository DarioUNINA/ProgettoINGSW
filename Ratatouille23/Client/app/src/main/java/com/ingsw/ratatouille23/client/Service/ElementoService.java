package com.ingsw.ratatouille23.client.Service;

import com.ingsw.ratatouille23.client.Retrofit.ElementoApi;
import com.ingsw.ratatouille23.client.Retrofit.RetrofitService;
import com.ingsw.ratatouille23.client.Model.Elemento;
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
}
