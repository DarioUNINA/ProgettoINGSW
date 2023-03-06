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
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Dialog.InfoElementDialog;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;

import java.util.ArrayList;

public class ElementiGMAdapter extends RecyclerView.Adapter<ElementiGMAdapter.ElementiHolder> {

    private ArrayList<Elemento> elementi;
    private ArrayList<Elemento> cancellaElementi = new ArrayList<Elemento>();
    private Context context;
    private OnElementiClickListner onElementiClickListner;


    private ElementiMenuFragment elementiMenuFragment;

    private Boolean modRimozione;



    public ElementiGMAdapter(ArrayList<Elemento> elementi, Context context, OnElementiClickListner onElementiClickListner, Boolean modRimozione, ElementiMenuFragment elementiMenuFragment) {

        this.elementi = elementi;
        this.context = context;
        this.onElementiClickListner = onElementiClickListner;
        this.modRimozione = modRimozione;
        this.elementiMenuFragment = elementiMenuFragment;
    }

    public interface OnElementiClickListner{
        void onElementiClicked(int position);
    }

    @NonNull
    @Override
    public ElementiGMAdapter.ElementiHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(context).inflate(R.layout.fragment_elemento_gm, parent, false);

        return new ElementiHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull ElementiGMAdapter.ElementiHolder holder, int position) {

        if(modRimozione){
            holder.elementiCB.setVisibility(View.VISIBLE);
            holder.btnInfo.setVisibility(View.INVISIBLE);
        }
        else{
            holder.elementiCB.setVisibility(View.INVISIBLE);
            holder.btnInfo.setVisibility(View.VISIBLE);
        }

        holder.btnInfo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openDialogInfoElemento(elementi.get(position));
            }
        });

        holder.txtNomeElemento.setText(elementi.get(position).getNome());
        holder.txtPrezzoElemento.setText(Float.toString(elementi.get(position).getPrezzo()));

        holder.elementiCB.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(((CheckBox)view).isChecked())
                    cancellaElementi.add(elementi.get(position));
                else
                    cancellaElementi.remove(elementi.get(position));
            }
        });

    }

    @Override
    public int getItemCount() {
        return elementi.size();
    }

    class ElementiHolder extends RecyclerView.ViewHolder{
        TextView txtNomeElemento;
        TextView txtPrezzoElemento;

        private CheckBox elementiCB;
        private FloatingActionButton btnInfo;

        public ElementiHolder(@NonNull View itemView) {
            super(itemView);

            txtNomeElemento = itemView.findViewById(R.id.txtNomeElemento);
            txtPrezzoElemento = itemView.findViewById(R.id.txtPrezzoElemento);
            elementiCB = itemView.findViewById(R.id.chechBoxElementiGm);
            btnInfo = itemView.findViewById(R.id.btnInfo);

            elementiCB.setVisibility(View.INVISIBLE);
            btnInfo.setVisibility(View.VISIBLE);
        }

        public TextView getTxtNomeElemento() {
            return txtNomeElemento;
        }

        public void setTxtNomeElemento(TextView txtNomeElemento) {
            this.txtNomeElemento = txtNomeElemento;
        }

        public TextView getTxtPrezzoElemento() {
            return txtPrezzoElemento;
        }

        public void setTxtPrezzoElemento(TextView txtPrezzoElemento) {
            this.txtPrezzoElemento = txtPrezzoElemento;
        }

        public CheckBox getElementiCB() {
            return elementiCB;
        }

        public void setElementiCB(CheckBox elementiCB) {
            this.elementiCB = elementiCB;
        }
        public FloatingActionButton getBtnInfo() {
            return btnInfo;
        }

        public void setBtnInfo(FloatingActionButton btnInfo) {
            this.btnInfo = btnInfo;
        }
    }

    public void openDialogInfoElemento(Elemento elemento){
        InfoElementDialog infoElementDialog = new InfoElementDialog(elementiMenuFragment, elemento);
        infoElementDialog.show(elementiMenuFragment.getParentFragmentManager(), "infoElement");
    }

    public ArrayList<Elemento> getElementi() {
        return elementi;
    }

    public void setElementi(ArrayList<Elemento> elementi) {
        this.elementi = elementi;
    }

    public ArrayList<Elemento> getCancellaElementi() {
        return cancellaElementi;
    }

    public void setCancellaElementi(ArrayList<Elemento> cancellaElementi) {
        this.cancellaElementi = cancellaElementi;
    }

    public void setElementi(ArrayList<Elemento> elementi, boolean modRimozione) {
        this.modRimozione = modRimozione;
        this.elementi.clear();
        this.elementi.addAll(elementi);
        notifyDataSetChanged();
    }
}
