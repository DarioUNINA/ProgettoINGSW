package com.ingsw.ratatouille23.client.View.Fragment.Setting;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.storage.FileDownloadTask;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;
import com.ingsw.ratatouille23.client.Model.Ristorante;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.Utility.StorageManager;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Activity.SettingsActivity;

import java.io.File;
import java.io.IOException;
import java.util.Objects;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link SettingRistoranteFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class SettingRistoranteFragment extends Fragment {


    private Ristorante ristorante;
    private EditText txtTelefono, txtIndirizzo;
    private AppCompatButton btnCambiaLogo;
    private ImageView imgViewLogo;

    private FirebaseAnalytics firebaseAnalytics;
    private StorageManager storageManager;
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    private String mParam1;
    private String mParam2;

    public SettingRistoranteFragment() {
        // Required empty public constructor
    }

    public static SettingRistoranteFragment newInstance(String param1, String param2) {
        SettingRistoranteFragment fragment = new SettingRistoranteFragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }

        firebaseAnalytics = FirebaseAnalytics.getInstance(getContext());

        Bundle bundle = new Bundle();
        bundle.putString(FirebaseAnalytics.Param.SCREEN_NAME, "Opzioni Ristorante");
        bundle.putString(FirebaseAnalytics.Param.SCREEN_CLASS, "SettingRistoranteFragment");
        firebaseAnalytics.logEvent(FirebaseAnalytics.Event.SCREEN_VIEW, bundle);
        firebaseAnalytics.setAnalyticsCollectionEnabled(true);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View root = inflater.inflate(R.layout.fragment_setting_ristorante, container, false);

        ristorante = ((SettingsActivity)getActivity()).getRistorante();
        storageManager = new StorageManager();
        txtIndirizzo = root.findViewById(R.id.editTxtNumber);
        txtTelefono = root.findViewById(R.id.editTxtAddress);
        btnCambiaLogo = root.findViewById(R.id.btnCambiaLogo);
        imgViewLogo = root.findViewById(R.id.imgViewLogo);

        storageManager.downloadLogoRistorante(ristorante, imgViewLogo);

        btnCambiaLogo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.setType("image/*");
                intent.setAction(Intent.ACTION_GET_CONTENT);
                startActivityForResult(intent, 1926);
            }
        });

        txtIndirizzo.setText(ristorante.getIndirizzo());
        txtTelefono.setText(ristorante.getTelefono());

        return root;
    }

    public ImageView getImgViewLogo() {
        return imgViewLogo;
    }

    public void setImgViewLogo(ImageView imgViewLogo) {
        this.imgViewLogo = imgViewLogo;
    }



    public void uploadImage(Uri imageUri){
        imgViewLogo.setImageURI(imageUri);
        storageManager.uploadLogoRistorante(ristorante, imageUri);
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == 1926 && data != null && data.getData() != null){
            imgViewLogo.setImageURI(data.getData());
            storageManager.uploadLogoRistorante(ristorante, data.getData());
        }
    }
}