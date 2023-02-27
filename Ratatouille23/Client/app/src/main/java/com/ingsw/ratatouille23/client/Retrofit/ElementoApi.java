package com.ingsw.ratatouille23.client.Retrofit;

import com.ingsw.ratatouille23.client.Model.Elemento;

import java.util.List;

import io.reactivex.rxjava3.core.Single;
import retrofit2.http.GET;
import retrofit2.http.Path;
public interface ElementoApi {

    @GET("elemento/get/categoria/{id}")
    Single<List<Elemento>> getByIdCategoria(@Path("id")int idCategoria);
}
