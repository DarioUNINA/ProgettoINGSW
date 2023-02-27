package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.ingsw.ratatouille23.client.Model.Ordine;
import com.ingsw.ratatouille23.client.Model.Tavolo;
import com.ingsw.ratatouille23.client.R;

import java.util.ArrayList;

public class TavoliAdapter extends RecyclerView.Adapter<TavoliAdapter.TavoliHolder>{


    private ArrayList<Tavolo> tavolo;
    private Context context;
    private TavoliAdapter.OnTavoliClickListner onTavoliClickListner;

    public TavoliAdapter(ArrayList<Tavolo> tavolo, Context context, TavoliAdapter.OnTavoliClickListner onTavoliClickListner) {
        this.tavolo = tavolo;
        this.context = context;
        this.onTavoliClickListner = onTavoliClickListner;
    }

    public interface OnTavoliClickListner{
        void onTavoliClicked(int position);
    }

    @NonNull
    @Override
    public TavoliAdapter.TavoliHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View v = LayoutInflater.from(context).inflate(R.layout.fragment_tavolo, parent, false);

        return new TavoliAdapter.TavoliHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull TavoliAdapter.TavoliHolder holder, int position) {
        //holder.txtIdOrdine.setText(Integer.toString(ordini.get(position).getIdOrdine()));
        //bisogna passare il tavolo per prendere il nome del cameriere
    }

    @Override
    public int getItemCount() {
        return 3;
        //return ordini.size();
    }

    class TavoliHolder extends RecyclerView.ViewHolder{

        //TextView txtIdOrdine;


        public TavoliHolder(@NonNull View itemView) {
            super(itemView);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    onTavoliClickListner.onTavoliClicked(getAdapterPosition());
                }
            });

        }
    }
}
