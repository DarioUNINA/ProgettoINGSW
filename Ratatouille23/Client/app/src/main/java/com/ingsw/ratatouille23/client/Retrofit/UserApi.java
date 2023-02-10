package com.ingsw.ratatouille23.client.Retrofit;

import com.ingsw.ratatouille23.client.Model.User;

import io.reactivex.rxjava3.core.Single;
import retrofit2.http.GET;
import retrofit2.http.Path;

public interface UserApi {

    @GET("/user/get/{username}/{password}")
    Single<User> getByEmailAndPassword(@Path("username") String username, @Path("password") String password);

}
