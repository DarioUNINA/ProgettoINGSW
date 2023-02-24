package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.os.strictmode.WebViewMethodCalledOnWrongThreadViolation;
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

public class OrderAdapter extends RecyclerView.Adapter<OrderAdapter.OrderHolder> {

    private ArrayList<Ordine> ordini;
    private Context context;
    private OnOrdineClickListner onOrdineClickListner;

    public OrderAdapter(ArrayList<Ordine> ordini, Context context, OnOrdineClickListner onOrdineClickListner) {
        this.ordini = ordini;
        this.context = context;
        this.onOrdineClickListner = onOrdineClickListner;
    }

     public interface OnOrdineClickListner{
        void onOrdineClicked(int position);
    }

    @NonNull
    @Override
    public OrderAdapter.OrderHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(context).inflate(R.layout.fragment_ordine, parent, false);

        return new OrderHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull OrderAdapter.OrderHolder holder, int position) {
        holder.txtIdOrdine.setText(ordini.get(position).getIdOrdine());
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

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    //onOrdineClickListner.onOrderClicked(getAdapterPosition());
                }
            });
            txtIdOrdine = itemView.findViewById(R.id.txtIdOrdine);
            txtIdCameriere = itemView.findViewById(R.id.txtCameriere);
        }
    }
}
