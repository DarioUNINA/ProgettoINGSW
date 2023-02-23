package com.ingsw.ratatouille23.client.Service.Class;

import com.ingsw.ratatouille23.client.Model.Allergene;
import com.ingsw.ratatouille23.client.Retrofit.RetrofitService;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Retrofit.AllergeneApi;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.schedulers.Schedulers;
public class AllergeneService {

    private AllergeneApi allergeneApi;

    public AllergeneService(){
        allergeneApi = RetrofitService.getRetrofit().create(AllergeneApi.class);
    }
}
