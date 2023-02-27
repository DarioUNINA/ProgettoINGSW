package com.ingsw.ratatouille23.client.Retrofit;

import com.ingsw.ratatouille23.client.Model.Categoria;

import java.util.List;

import io.reactivex.rxjava3.core.Single;
import retrofit2.http.GET;
import retrofit2.http.Path;
public interface CategoriaApi {

    @GET("/categoria/get/menu/{id}")
    Single<List<Categoria>> getByIdMenu(@Path("id")int idMenu);
}
