package com.ingsw.ratatouille23.client.View;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.HardwarePropertiesManager;
import android.view.LayoutInflater;
import android.view.View;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import androidx.appcompat.widget.AppCompatButton;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;

public class SettingCreateDialog extends AppCompatDialogFragment {

    private AppCompatButton btnChangePass, btnLogOut;

    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {

        View v = LayoutInflater.from(getActivity())
                .inflate(R.layout.layout_alert_dialog_settings, null);


        DialogInterface.OnClickListener listner = new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {

            }
        };
        return new AlertDialog.Builder(getActivity())
                .setTitle("SettingLIstner")
                .setView(v)
                .create();
    }
}
