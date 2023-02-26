package com.ingsw.ratatouille23.client.Retrofit;

import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.Model.Tavolo;

import java.util.List;

import io.reactivex.rxjava3.core.Single;
import retrofit2.http.GET;
import retrofit2.http.Path;
public interface TavoloApi {

    @GET("tavolo/get/cameriere/{username}")
    Single<List<Tavolo>> getByCameriere(@Path("username") String username);

    @GET("tavolo/get/ristorante/{id}")
    Single<List<Tavolo>> getByRistorante(@Path("id")int id);

}
