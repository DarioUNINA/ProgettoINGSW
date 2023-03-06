package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Allergene;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoMenuDialog;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoOrdineDialog;
import com.ingsw.ratatouille23.client.View.Dialog.AddOrderDialog;
import com.ingsw.ratatouille23.client.View.Dialog.InfoElementDialog;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;

import java.util.ArrayList;

public class AllergeniAdapter extends RecyclerView.Adapter<AllergeniAdapter.ElementiHolder> {

    private ArrayList<Allergene> allergeneList = new ArrayList<Allergene>();

    private ArrayList<Allergene> addAllergeni = new ArrayList<Allergene>();

    private Context context;



    private AllergeniAdapter.OnElementiClickListner onElementiClickListner;

    private AddElementoMenuDialog addElementoMenuDialog;


    public AllergeniAdapter(ArrayList<Allergene> allergene, Context context, AllergeniAdapter.OnElementiClickListner onElementiClickListner,  AddElementoMenuDialog addElementoMenuDialog) {
        this.allergeneList = allergene;
        this.context = context;
        this.onElementiClickListner = onElementiClickListner;
        this.addElementoMenuDialog = addElementoMenuDialog;
    }

    public interface OnElementiClickListner{
        void onElementiClicked(int position);
    }

    @NonNull
    @Override
    public AllergeniAdapter.ElementiHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(context).inflate(R.layout.fragment_allergene, parent, false);

        return new AllergeniAdapter.ElementiHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull AllergeniAdapter.ElementiHolder holder, int position) {

        holder.txtNomeAllergene.setText(allergeneList.get(position).getNome());


        holder.allergeneCB.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(((CheckBox)view).isChecked()) {
                    addAllergeni.add(allergeneList.get(position));
                }else {
                    addAllergeni.remove(allergeneList.get(position));
                }
            }
        });
    }

    @Override
    public int getItemCount() {
        return allergeneList.size();
    }

    class ElementiHolder extends RecyclerView.ViewHolder {

        private TextView txtNomeAllergene;

        private CheckBox allergeneCB;

        public ElementiHolder(@NonNull View itemView) {
            super(itemView);

            txtNomeAllergene = itemView.findViewById(R.id.txtNomeAllergene);
            allergeneCB = itemView.findViewById(R.id.chechBoxAllergene);


        }

        public TextView getTxtNomeAllergene() {
            return txtNomeAllergene;
        }

        public void setTxtNomeAllergene(TextView txtNomeAllergene) {
            this.txtNomeAllergene = txtNomeAllergene;
        }

        public CheckBox getAllergeneCB() {
            return allergeneCB;
        }

        public void setAllergeneCB(CheckBox allergeneCB) {
            this.allergeneCB = allergeneCB;
        }
    }

    public ArrayList<Allergene> getAllergene() {
        return allergeneList;
    }

    public AddElementoMenuDialog getAddElementoMenuDialog() {
        return addElementoMenuDialog;
    }

    public void setAddElementoMenuDialog(AddElementoMenuDialog addElementoMenuDialog) {
        this.addElementoMenuDialog = addElementoMenuDialog;
    }

    public ArrayList<Allergene> getAddAllergeni() {
        return addAllergeni;
    }

    public void setAddAllergeni(ArrayList<Allergene> addAllergeni) {
        this.addAllergeni = addAllergeni;
    }

    public void setAllergeneList(ArrayList<Allergene> allergene) {
        this.allergeneList.clear();
        this.allergeneList.addAll(allergene);
        notifyDataSetChanged();
    }
}
