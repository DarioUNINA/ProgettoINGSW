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
import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Model.Tavolo;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.OrdiniFragment;

import java.util.ArrayList;
import java.util.List;

public class OrdineAdapter extends RecyclerView.Adapter<OrdineAdapter.OrderHolder> {

    private ArrayList<Ordine> ordini;
    private Context context;
    private OnOrdineClickListner onOrdineClickListner;
    private OrdiniFragment ordiniFragment;

    Boolean modRimozione;

    public OrdineAdapter(ArrayList<Ordine> ordini, Context context, OnOrdineClickListner onOrdineClickListner, OrdiniFragment  ordiniFragment, Boolean modRimozione) {
        this.ordini = ordini;
        this.ordiniFragment = ordiniFragment;
        this.context = context;
        this.onOrdineClickListner = onOrdineClickListner;
        this.modRimozione = modRimozione;
    }

     public interface OnOrdineClickListner{
        void onOrdineClicked(int position);
    }

    @NonNull
    @Override
    public OrdineAdapter.OrderHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(context).inflate(R.layout.fragment_ordine, parent, false);

        return new OrderHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull OrdineAdapter.OrderHolder holder, int position) {

        if(modRimozione)
            holder.rimozioneCB.setVisibility(View.VISIBLE);
        else
            holder.rimozioneCB.setVisibility(View.INVISIBLE);

        holder.txtIdOrdine.setText(String.valueOf(ordini.get(position).getIdOrdine()));
        holder.cardViewOrdine.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                System.out.println(ordini.get(position).getElementi().size());
                ((HomeActivity)ordiniFragment.getActivity()).getGestioneSala().getElementiGSFragment().getElementiGSAdapter().setElementi(ordini.get(position).getElementi(), false);
            }
        });

    }

    @Override
    public int getItemCount() {
        return ordini.size();
    }


    class OrderHolder extends RecyclerView.ViewHolder{

        TextView txtIdOrdine, txtIdCameriere;
        MaterialCardView cardViewOrdine;
        CheckBox rimozioneCB;

        public OrderHolder(@NonNull View itemView) {
            super(itemView);

            txtIdOrdine = itemView.findViewById(R.id.txtIdOrdine);
            txtIdCameriere = itemView.findViewById(R.id.txtCameriere);
            cardViewOrdine = itemView.findViewById(R.id.cardViewOrdine);
            rimozioneCB = itemView.findViewById(R.id.chechBoxOrdini);
            rimozioneCB.setVisibility(View.INVISIBLE);

            //txtIdOrdine.setText(ordini.get(getAdapterPosition()).getIdOrdine());
        }
    }

    public ArrayList<Ordine> getOrdini() {
        return ordini;
    }

    public void setOrdini(ArrayList<Ordine> ordini, boolean modRimozione) {
        this.modRimozione = modRimozione;
        this.ordini.clear();
        this.ordini.addAll(ordini);
        notifyDataSetChanged();
        System.out.println("setOrdini\n");
    }






}
