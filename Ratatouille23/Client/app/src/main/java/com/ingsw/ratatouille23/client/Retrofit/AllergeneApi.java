package com.ingsw.ratatouille23.client.Retrofit;

import com.ingsw.ratatouille23.client.Model.Allergene;

import java.util.List;

import io.reactivex.rxjava3.core.Single;
import retrofit2.http.GET;
import retrofit2.http.Path;
public interface AllergeneApi {

    @GET("/allergene/get")
    Single<List<Allergene>> getAll();
}
