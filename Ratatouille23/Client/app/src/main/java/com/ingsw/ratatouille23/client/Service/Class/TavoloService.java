package com.ingsw.ratatouille23.client.Service.Class;

import com.ingsw.ratatouille23.client.Retrofit.TavoloApi;
import com.ingsw.ratatouille23.client.Model.Tavolo;
import com.ingsw.ratatouille23.client.Retrofit.RetrofitService;
import com.ingsw.ratatouille23.client.Retrofit.UtenteApi;
import com.ingsw.ratatouille23.client.Service.Callback;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.schedulers.Schedulers;
public class TavoloService {

    private TavoloApi tavoloApi;

    public TavoloService(){tavoloApi = RetrofitService.getRetrofit().create(TavoloApi.class);}



}
