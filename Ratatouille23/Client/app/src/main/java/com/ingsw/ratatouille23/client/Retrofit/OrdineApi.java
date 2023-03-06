package com.ingsw.ratatouille23.client.Retrofit;

import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Model.Utente;

import java.util.List;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Single;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.HTTP;
import retrofit2.http.PUT;
import retrofit2.http.Path;

public interface OrdineApi {

    @GET("/ordine/get/{idTavolo}")
    Single<List<Ordine>> getbyIdTavolo(@Path("idTavolo") int idTavolo);

    @PUT("/ordine/save")
    Completable create(@Body Ordine ordine);


    @HTTP(method = "DELETE", path = "/ordine/delete", hasBody = true)
    Completable delete(@Body Ordine ordine);



}
