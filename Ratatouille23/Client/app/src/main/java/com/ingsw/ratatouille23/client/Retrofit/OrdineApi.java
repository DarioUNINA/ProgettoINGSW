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
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;

public interface OrdineApi {

    @GET("/ordine/get/{idTavolo}")
    Single<List<Ordine>> getbyIdTavolo(@Path("idTavolo") int idTavolo);

    @GET("/ordine/get-newest/tavolo/{idTavolo}")
    Single<Integer> getIdNewestByTavolo(@Path("idTavolo") int idTavolo);
    @POST("/ordine/save")
    Completable create(@Body Ordine ordine);
    @HTTP(method = "DELETE", path = "/ordine/delete", hasBody = true)
    Completable delete(@Body Ordine ordine);

    @GET("/get-ordini-totali/cameriere/{cameriere}/data-from/{dataFrom}/data-to/{dataTo}")
    Single <Integer> getOrdiniTotali(@Path("cameriere") String cameriere, @Path("dataFrom") String dataFrom, @Path("dataTo") String dataTo);

    @GET("/get-ordini-totali-per-giorno/cameriere/{cameriere}/data-from/{dataFrom}/data-to/{dataTo}")
    Single <List<Integer>> getOrdiniTotaliPerGiorno(@Path("cameriere") String cameriere, @Path("dataFrom") String dataFrom, @Path("dataTo") String dataTo);

    @GET("/get-date/cameriere/{cameriere}/data-from/{dataFrom}/data-to/{dataTo}")
    Single <List<String>> getDate(@Path("cameriere") String cameriere, @Path("dataFrom") String dataFrom, @Path("dataTo") String dataTo);

    @GET("/get-incasso/cameriere/{cameriere}/data-from/{dataFrom}/data-to/{dataTo}")
    Single <Double> getIncasso(@Path("cameriere") String cameriere, @Path("dataFrom") String dataFrom, @Path("dataTo") String dataTo);


}
