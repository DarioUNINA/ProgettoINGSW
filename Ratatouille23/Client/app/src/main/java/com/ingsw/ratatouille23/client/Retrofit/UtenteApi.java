package com.ingsw.ratatouille23.client.Retrofit;

import com.ingsw.ratatouille23.client.Model.Utente;

import io.reactivex.rxjava3.core.Single;
import retrofit2.http.GET;
import retrofit2.http.Path;

public interface UtenteApi {

    @GET("/utente/get/{username}/{password}")
    Single<Utente> getByEmailAndPassword(@Path("username") String username, @Path("password") String password);

}
