package com.ingsw.ratatouille23.client.Service;

import com.ingsw.ratatouille23.client.Retrofit.CategoriaApi;
import com.ingsw.ratatouille23.client.Retrofit.RetrofitService;
import com.ingsw.ratatouille23.client.Service.Callback;
import com.ingsw.ratatouille23.client.Model.Categoria;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.schedulers.Schedulers;
public class CategoriaService {

    private CategoriaApi categoriaApi;

    public CategoriaService(){
        categoriaApi = RetrofitService.getRetrofit().create(CategoriaApi.class);
    }
}
