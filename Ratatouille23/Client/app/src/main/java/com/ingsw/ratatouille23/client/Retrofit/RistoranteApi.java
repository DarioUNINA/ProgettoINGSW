package com.ingsw.ratatouille23.client.Retrofit;

import com.ingsw.ratatouille23.client.Model.Ristorante;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Single;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
public interface RistoranteApi {

    @GET("/ristorante/get/{idRistorante}")
    Single<Ristorante> getById(@Path("idRistorante") int idRistorante);

    @PUT("/ristorante/update")
    Completable update(@Body Ristorante ristorante);

}
