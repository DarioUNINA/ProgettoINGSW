package com.ingsw.ratatouille23.client.Service.Class;

import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Retrofit.RetrofitService;
import com.ingsw.ratatouille23.client.Retrofit.UtenteApi;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Retrofit.OrdineApi;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.schedulers.Schedulers;
public class OrdineService {

    private OrdineApi ordineApi;

    public OrdineService() {
        this.ordineApi = RetrofitService.getRetrofit().create(OrdineApi.class);
    }
}
