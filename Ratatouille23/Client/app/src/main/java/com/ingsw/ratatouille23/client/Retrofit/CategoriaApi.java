package com.ingsw.ratatouille23.client.Retrofit;

import com.ingsw.ratatouille23.client.Model.Categoria;

import java.util.List;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Single;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.HTTP;
import retrofit2.http.POST;
import retrofit2.http.Path;
public interface CategoriaApi {

    @GET("/categoria/get/menu/{id}")
    Single<List<Categoria>> getByIdMenu(@Path("id")int idMenu);

    @POST("/categoria/add")
    Completable add(@Body Categoria categoria);

    @HTTP(method = "DELETE", path = "/categoria/delete", hasBody = true)
    Completable delete(@Body Categoria categoria);

}
