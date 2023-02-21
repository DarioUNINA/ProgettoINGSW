package com.ingsw.ratatouille23.client.View;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
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

    //SettingCreateDialogListner settingCreateDialog;

    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View view = inflater.inflate(R.layout.layout_alert_dialog_settings, null);

        AlertDialog dialog = new AlertDialog.Builder(getActivity())
                .setView(view)
                .show();


        btnChangePass = (AppCompatButton) view.findViewById(R.id.btnChangePass);
        btnLogOut = (AppCompatButton) view.findViewById(R.id.btnLogOut);

        btnChangePass.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

            }
        });

        btnLogOut.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

            }

        });

        return dialog;
    }

    @Override
    public void onAttach(@NonNull Context context) {
        super.onAttach(context);

        try{
            //categoryCreateDialogListener = (CategoryCreateDialog.CategoryCreateDialogListener) context;
        }
        catch(ClassCastException e){
            throw new ClassCastException(context.toString());
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        getDialog().getWindow().getAttributes().width=700;
        getDialog().getWindow().setAttributes(
                getDialog().getWindow().getAttributes());
    }

//    public interface CategoryCreateDialogListener{
//        void createCategory(ULocale.Category category, MenuCategoriesFoodFragment menuCategoriesFoodFragment, MenuCategoriesDrinkFragment menuCategoriesDrinkFragment);
//    }
}
