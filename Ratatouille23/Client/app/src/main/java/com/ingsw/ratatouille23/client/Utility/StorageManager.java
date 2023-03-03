package com.ingsw.ratatouille23.client.Utility;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.widget.ImageView;

import androidx.annotation.NonNull;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.storage.FileDownloadTask;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;
import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.Model.Utente;

import java.io.File;
import java.io.IOException;

public class StorageManager {

    private StorageReference storageReference;

    public StorageManager(){
        storageReference = FirebaseStorage.getInstance().getReference();
    }

    public void uploadLogoRistorante(Ristorante ristorante, Uri imageUri){
        String nomeFile = Integer.toString(ristorante.getIdRistorante())+"_"+ristorante.getNome()+".jpeg";
        storageReference = storageReference.child("ristorante/"+nomeFile);
        storageReference.putFile(imageUri);
        storageReference = storageReference.getRoot();

    }

    public void downloadLogoRistorante(Ristorante ristorante, ImageView imageView){
        String nomeFile = Integer.toString(ristorante.getIdRistorante())+"_"+ristorante.getNome()+".jpeg";

        try {
            File file = File.createTempFile("tempfile", ".jpeg");
            storageReference = storageReference.child("ristorante/"+nomeFile);
            storageReference.getFile(file).addOnSuccessListener(new OnSuccessListener<FileDownloadTask.TaskSnapshot>() {
                @Override
                public void onSuccess(FileDownloadTask.TaskSnapshot taskSnapshot) {

                     imageView.setImageBitmap(BitmapFactory.decodeFile(file.getAbsolutePath()));

                }
            }).addOnFailureListener(new OnFailureListener() {
                @Override
                public void onFailure(@NonNull Exception e) {
                    e.printStackTrace();
                }
            });

        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        storageReference = storageReference.getRoot();
    }


    public void uploadPropicUtente(Utente utente, Uri imageUri){
        String nomeFile = Integer.toString(utente.getIdRistorante())+"_"+utente.getUsername()+".jpeg";
        storageReference = storageReference.child("utente/"+nomeFile);
        storageReference.putFile(imageUri);
        storageReference = storageReference.getRoot();

    }


    public void downloadPropicUtente(Utente utente, ImageView imageView){
        String nomeFile = Integer.toString(utente.getIdRistorante())+"_"+utente.getUsername()+".jpeg";

        try {
            File file = File.createTempFile("tempfile", ".jpeg");
            storageReference = storageReference.child("utente/"+nomeFile);
            storageReference.getFile(file).addOnSuccessListener(new OnSuccessListener<FileDownloadTask.TaskSnapshot>() {
                @Override
                public void onSuccess(FileDownloadTask.TaskSnapshot taskSnapshot) {

                    imageView.setImageBitmap(BitmapFactory.decodeFile(file.getAbsolutePath()));

                }
            }).addOnFailureListener(new OnFailureListener() {
                @Override
                public void onFailure(@NonNull Exception e) {
                    e.printStackTrace();
                }
            });

        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        storageReference = storageReference.getRoot();

    }
}
