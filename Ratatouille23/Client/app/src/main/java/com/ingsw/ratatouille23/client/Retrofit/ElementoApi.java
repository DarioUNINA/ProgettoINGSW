package com.ingsw.ratatouille23.client.Retrofit;

import com.ingsw.ratatouille23.client.Model.Categoria;
import com.ingsw.ratatouille23.client.Model.Elemento;

import java.util.List;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Single;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.HTTP;
import retrofit2.http.POST;
import retrofit2.http.PUT;
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

    @GET("elemento/get/quantita/{idElemento}/ordine/{idOrdine}")
    Single<Integer> getQuantita(@Path("idElemento") int idElemento, @Path("idOrdine")int idOrdine);

    @HTTP(method = "DELETE", path = "/elemento/delete", hasBody = true)
    Completable delete(@Body Elemento elemento);

    @POST("/elemento/add")
    Completable add(@Body Elemento elemento);

    @PUT("/elemento/update/ordine/{idOrdine}/elemento/{idElemento}/quantita/{quantita}")
    Completable updateQuantita(@Path("idOrdine")int idOrdine, @Path("idElemento") int idElemento, @Path("quantita")int quantita);

}
