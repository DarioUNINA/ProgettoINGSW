package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.OrdiniFragment;

import java.util.ArrayList;
import java.util.List;

public class OrdineAdapter extends RecyclerView.Adapter<OrdineAdapter.OrderHolder> {

    private ArrayList<Ordine> ordini;
    private Context context;
    private OnOrdineClickListner onOrdineClickListner;
    private OrdiniFragment ordiniFragment;
    public OrdineAdapter(ArrayList<Ordine> ordini, Context context, OnOrdineClickListner onOrdineClickListner, OrdiniFragment  ordiniFragment) {
        this.ordini = ordini;
        this.ordiniFragment = ordiniFragment;
        this.context = context;
        this.onOrdineClickListner = onOrdineClickListner;
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
        holder.txtIdOrdine.setText(Integer.toString(ordini.get(position).getIdOrdine()));
        holder.txtIdCameriere.setText("cameriere");
    }

    @Override
    public int getItemCount() {
        return ordini.size();
    }

    class OrderHolder extends RecyclerView.ViewHolder{

        TextView txtIdOrdine;
        TextView txtIdCameriere;

        public OrderHolder(@NonNull View itemView) {
            super(itemView);

            txtIdOrdine = itemView.findViewById(R.id.txtIdOrdine);
            txtIdCameriere = itemView.findViewById(R.id.txtCameriere);
            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    onOrdineClickListner.onOrdineClicked(getAdapterPosition());
                }
            });

        }
    }

    public ArrayList<Ordine> getOrdini() {
        return ordini;
    }

    public void setOrdini(ArrayList<Ordine> ordini) {
        this.ordini = ordini;
    }
}
