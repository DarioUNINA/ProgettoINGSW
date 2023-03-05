package com.ingsw.ratatouille23.client.Retrofit;

import com.ingsw.ratatouille23.client.Model.Utente;

import java.util.List;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Single;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;

public interface UtenteApi {

    @GET("/utente/get/{username}/{password}")
    Single<Utente> getByUsernamePassword(@Path("username") String username, @Path("password") String password);

    @GET("utente/get/ristorante/{id}")
    Single<List<Utente>> getByIdRistorante(@Path("id")int idRistorante);

    @PUT("/utente/update")
    Completable update(@Body Utente user);

    @POST("/utente/add")
    Completable add(@Body Utente utente);

    @GET("/utente/get/ristorante/{id}/ruolo/{ruolo}")
    Single<List<Utente>> getByRistoranteAndRuolo(@Path("id") Integer id , @Path ("ruolo") String ruolo);

}
