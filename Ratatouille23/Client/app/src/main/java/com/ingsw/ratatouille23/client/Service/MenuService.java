package com.ingsw.ratatouille23.client.Service;

import com.ingsw.ratatouille23.client.Model.Menu;
import com.ingsw.ratatouille23.client.Retrofit.MenuApi;
import com.ingsw.ratatouille23.client.Retrofit.RetrofitService;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.schedulers.Schedulers;
public class MenuService {

    private MenuApi menuApi;

    public MenuService(){
        menuApi =  RetrofitService.getRetrofit().create(MenuApi.class);
    }
}
