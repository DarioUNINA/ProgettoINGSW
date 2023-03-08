package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Dialog.AddOrderDialog;


import java.util.ArrayList;
import java.util.List;

public class ElementiNuovoOrdineAdapter extends RecyclerView.Adapter<ElementiNuovoOrdineAdapter.ElementiHolder> {

    private ArrayList<Elemento> elementi;
    private Context context;
    private ElementiNuovoOrdineAdapter.OnElementiClickListner onElementiClickListner;

    private ElementoPresenter  elementoPresenter = new ElementoPresenter();
    private AddOrderDialog addOrderDialog;

    public ElementiNuovoOrdineAdapter(ArrayList<Elemento> elementi, Context context, ElementiNuovoOrdineAdapter.OnElementiClickListner onElementiClickListner, AddOrderDialog addOrderDialog) {
        this.elementi = elementi;
        this.context = context;
        this.onElementiClickListner = onElementiClickListner;
        this.addOrderDialog = addOrderDialog;
    }

    public interface OnElementiClickListner{
        void onElementiClicked(int position);
    }

    @NonNull
    @Override
    public ElementiNuovoOrdineAdapter.ElementiHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(context).inflate(R.layout.fragment_elemento_gs, parent, false);

        return new ElementiNuovoOrdineAdapter.ElementiHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull ElementiNuovoOrdineAdapter.ElementiHolder holder, int position) {


        holder.txtNomeElementoGS.setText(elementi.get(position).getNome());
        holder.txtPrezzoElementoGS.setText(Float.toString(elementi.get(position).getPrezzo()));
        holder.txtCounter.setText("1");

        holder.btnAddCounterElement.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                holder.txtCounter.setText( String.valueOf(Integer.valueOf(holder.txtCounter.getText().toString())+1));
                //update quantita db

            }
        });

        holder.btnRemoveCounterElement.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if( Integer.valueOf(holder.txtCounter.getText().toString()) > 1) {
                    holder.txtCounter.setText(String.valueOf(Integer.valueOf(holder.txtCounter.getText().toString()) - 1));
                    //Update quantita db
                }else
                    if(Integer.valueOf(holder.txtCounter.getText().toString()) == 1){
                        elementi.remove(elementi.get(position));
                        ElementiNuovoOrdineAdapter elemNuovo = new ElementiNuovoOrdineAdapter(elementi, addOrderDialog.getContext(), addOrderDialog.getOnElementiClickListner(), addOrderDialog);
                        addOrderDialog.getRecyclerViewNuovoOrdine().setAdapter(elemNuovo);
                        List<Elemento> daEliminare = new ArrayList<Elemento>();
                        daEliminare.add(elementi.get(position));
                        elementoPresenter.deleteFromOrdine(addOrderDialog.getNewOrdine().getIdOrdine(), daEliminare);

                    }
            }
        });

    }

    @Override
    public int getItemCount() {
        return elementi.size();
    }

    class ElementiHolder extends RecyclerView.ViewHolder{
        TextView txtNomeElementoGS, txtPrezzoElementoGS, txtCounter;
        FloatingActionButton btnAddCounterElement, btnRemoveCounterElement;

        CheckBox rimozioneCB;

        MaterialCardView counter;

        public ElementiHolder(@NonNull View itemView) {
            super(itemView);

            txtNomeElementoGS = itemView.findViewById(R.id.txtNomeElementoGS);
            txtPrezzoElementoGS = itemView.findViewById(R.id.txtPrezzoElementoGS);
            txtCounter = itemView.findViewById(R.id.counterElementTxt);
            rimozioneCB = itemView.findViewById(R.id.chechBoxElementiGs);
            btnAddCounterElement = itemView.findViewById(R.id.addCounterElementBtn);
            btnRemoveCounterElement = itemView.findViewById(R.id.removeCounterElementbtn);
            counter = itemView.findViewById(R.id.materialCardCounter);

            rimozioneCB.setVisibility(View.INVISIBLE);

        }
    }




    public void setElementi(List<Elemento> elementi) {
        this.elementi.clear();
        this.elementi.addAll(elementi);
        notifyDataSetChanged();
    }
}
