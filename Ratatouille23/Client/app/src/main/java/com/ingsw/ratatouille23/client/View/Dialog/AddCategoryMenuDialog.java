package com.ingsw.ratatouille23.client.View.Dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import androidx.appcompat.widget.AppCompatButton;

import com.ingsw.ratatouille23.client.Presenter.CategoriaPresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.CategorieFragment;

public class AddCategoryMenuDialog extends AppCompatDialogFragment {

    private EditText categoria;
    private AppCompatButton confirmBtn;
    private CategorieFragment categorieFragment;

    private CategoriaPresenter presenter;

    public AddCategoryMenuDialog(CategorieFragment categorieFragment){
        this.categorieFragment =  categorieFragment;
        this.presenter = new CategoriaPresenter(categorieFragment);
    }

    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View v = inflater.inflate(R.layout.dialog_add_category_menu, null);

        categoria = (EditText) v.findViewById(R.id.edtTxtNuovaCategoria);
        confirmBtn = (AppCompatButton) v.findViewById(R.id.confirm_btn_new_category);

        confirmBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(categoria.getText().toString()!="") {
                    int idMenu = ((HomeActivity)getActivity()).getRistorante().getIdMenu();
                    presenter.create(idMenu,categoria.getText().toString());

                }
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
        getDialog().getWindow().getAttributes().width=850;
        getDialog().getWindow().getAttributes().height=500;
        getDialog().getWindow().setGravity(Gravity.CENTER);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        getDialog().getWindow().setAttributes(
                getDialog().getWindow().getAttributes());


    }
}