package com.ingsw.ratatouille23.client.View;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.HardwarePropertiesManager;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import androidx.appcompat.widget.AppCompatButton;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Activity.LogInActivity;
import com.ingsw.ratatouille23.client.View.Activity.SettingsActivity;

public class SettingCreateDialog extends AppCompatDialogFragment {

    private AppCompatButton btnChangePass, btnLogOut;
    private HomeActivity home;


    public SettingCreateDialog(HomeActivity home){
        this.home = home;
    }
    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View v = inflater.inflate(R.layout.layout_alert_dialog_settings, null);


        btnChangePass = (AppCompatButton) v.findViewById(R.id.btnChangePass);
        btnLogOut = (AppCompatButton) v.findViewById(R.id.btnLogOut);

        btnChangePass.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getActivity(), SettingsActivity.class));
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
                                System.exit(0);
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
}
