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
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.R;

import java.util.ArrayList;
import java.util.List;

public class ElementiGSAdapter extends RecyclerView.Adapter<ElementiGSAdapter.ElementiHolder> {

    private List<Elemento> elementi;
    private Context context;
    private ElementiGSAdapter.OnElementiClickListner onElementiClickListner;

    private MaterialCardView counter;

    private CheckBox rimozioneCB;

    public ElementiGSAdapter(ArrayList<Elemento> elementi, Context context, ElementiGSAdapter.OnElementiClickListner onElementiClickListner) {
        this.elementi = elementi;
        this.context = context;
        this.onElementiClickListner = onElementiClickListner;
    }

    public interface OnElementiClickListner{
        void onElementiClicked(int position);
    }

    @NonNull
    @Override
    public ElementiGSAdapter.ElementiHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(context).inflate(R.layout.fragment_elemento_gs, parent, false);

        return new ElementiGSAdapter.ElementiHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull ElementiGSAdapter.ElementiHolder holder, int position) {
        //holder.txtNomeElemento.setText(elementi.get(position).getNome());
//        holder.txtNomeElemento.setText("puttan");
//        holder.txtPrezzoElemento.setText("2$");
        //holder.txtPrezzoElemento.setText(Float.toString(elementi.get(position).getPrezzo()));
        //bisogna passare il tavolo per prendere il nome del cameriere
    }

    @Override
    public int getItemCount() {
        return 3;
        //elementi.size();
    }

    class ElementiHolder extends RecyclerView.ViewHolder{
        TextView txtNomeElementoGS;
        TextView txtPrezzoElementoGS;

         MaterialCardView counter;

         CheckBox rimozioneCB;

        public ElementiHolder(@NonNull View itemView) {
            super(itemView);

            txtNomeElementoGS = itemView.findViewById(R.id.txtNomeElementoGS);
            txtPrezzoElementoGS = itemView.findViewById(R.id.txtPrezzoElementoGS);
            counter = itemView.findViewById(R.id.materialCardCounter);
            rimozioneCB = itemView.findViewById(R.id.chechBoxElementiGs);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    onElementiClickListner.onElementiClicked(getAdapterPosition());
                    rimozioneCB.setVisibility(View.INVISIBLE);

                }
            });

        }
    }

    public MaterialCardView getCounter() {
        return counter;
    }

    public void setCounter(MaterialCardView counter) {
        this.counter = counter;
    }

    public CheckBox getRimozioneCB() {
        return rimozioneCB;
    }

    public void setRimozioneCB(CheckBox rimozioneCB) {
        this.rimozioneCB = rimozioneCB;
    }
}


