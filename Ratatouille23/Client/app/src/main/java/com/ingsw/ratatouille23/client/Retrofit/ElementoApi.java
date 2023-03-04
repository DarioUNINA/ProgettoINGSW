package com.ingsw.ratatouille23.client.Retrofit;

import com.ingsw.ratatouille23.client.Model.Elemento;

import java.util.List;

import io.reactivex.rxjava3.core.Single;
import retrofit2.http.GET;
import retrofit2.http.Path;
public interface ElementoApi {

    @GET("elemento/get/categoria/{id}")
    Single<List<Elemento>> getByIdCategoria(@Path("id")int idCategoria);

    @GET("elemento/get/categoria/{id}/PrezzoAsc")
    Single<List<Elemento>> getByCategoriaOrderByPrezzoAsc(@Path("id")int idCategoria);

    @GET("elemento/get/categoria/{id}/PrezzoDesc")
    Single<List<Elemento>> getByCategoriaOrderByPrezzoDesc(@Path("id")int idCategoria);

    @GET("elemento/get/categoria/{id}/NomeAsc")
    Single<List<Elemento>> getByCategoriaOrderByNomeAsc(@Path("id")int idCategoria);

    @GET("elemento/get/categoria/{id}/NomeDesc")
    Single<List<Elemento>> getByCategoriaOrderByNomeDesc(@Path("id")int idCategoria);

    @GET("elemento/get/ristorante/{id}/categoria/{nome}")
    Single<List<Elemento>> getByNome(@Path("id") int id_ristorante, @Path("nome")String nome);
}
