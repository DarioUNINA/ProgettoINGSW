package com.ingsw.ratatouille23.client.View.Dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import androidx.appcompat.widget.AppCompatButton;

import com.ingsw.ratatouille23.client.Model.Utente;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.Utility.StorageManager;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Activity.LogInActivity;
import com.ingsw.ratatouille23.client.View.Activity.SettingsActivity;

public class SettingUtenteDialog extends AppCompatDialogFragment {

    private AppCompatButton btnChangePass, btnLogOut;
    private HomeActivity home;

    private ImageView imageViewUtente;
    private Utente utente;

    StorageManager storageManager;


    public SettingUtenteDialog(HomeActivity home){
        this.home = home;
    }
    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View v = inflater.inflate(R.layout.layout_alert_dialog_settings, null);

        utente = ((HomeActivity)getActivity()).getUtente();

        btnChangePass = (AppCompatButton) v.findViewById(R.id.btnChangePass);
        btnLogOut = (AppCompatButton) v.findViewById(R.id.btnLogOut);
        imageViewUtente = (ImageView)v.findViewById(R.id.imageViewUtente);

        storageManager = new StorageManager();
        storageManager.downloadPropicUtente(utente, imageViewUtente);

        imageViewUtente.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.setType("image/*");
                intent.setAction(Intent.ACTION_GET_CONTENT);
                startActivityForResult(intent, 1926);
            }
        });
        btnChangePass.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = new Intent(getActivity(), SettingsActivity.class);
                intent.putExtra("utente", ((HomeActivity) getActivity()).getUtente());
                startActivity(intent);
            }
        });

        btnLogOut.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                new androidx.appcompat.app.AlertDialog.Builder(getActivity())
                        .setTitle("EXIT")
                        .setMessage("Sei sicuro di voler uscire?")
                        .setNegativeButton(android.R.string.no, null)
                        .setPositiveButton(android.R.string.yes,  new DialogInterface.OnClickListener() {
                            @Override
                            public void onClick(DialogInterface dialogInterface, int i) {
                                startActivity(new Intent(getActivity(), LogInActivity.class));
                            }
                        }).create().show();
            }
        });


      AlertDialog dialog = new AlertDialog.Builder(getActivity())
                .setView(v)
                .show();

      return dialog;
    }

    @Override
    public void onStart() {
        super.onStart();
        getDialog().getWindow().getAttributes().width=640;
        getDialog().getWindow().getAttributes().height=700;
        getDialog().getWindow().setGravity(Gravity.TOP);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        getDialog().getWindow().setAttributes(
                getDialog().getWindow().getAttributes());
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, @Nullable Intent data) {
        super.onActivityResult(requestCode, resultCode, data);

        if (requestCode == 1926 && data != null && data.getData() != null){
            imageViewUtente.setImageURI(data.getData());
            storageManager.uploadPropicUtente(utente, data.getData());
        }
    }
}
