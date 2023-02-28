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

import java.util.ArrayList;

public class ElementiGMAdapter extends RecyclerView.Adapter<ElementiGMAdapter.ElementiHolder> {

    private ArrayList<Elemento> elementi;
    private Context context;
    private OnElementiClickListner onElementiClickListner;

    private FloatingActionButton btnInfo;

    private CheckBox removeCB;

    public ElementiGMAdapter(ArrayList<Elemento> elementi, Context context, OnElementiClickListner onElementiClickListner) {
        this.elementi = elementi;
        this.context = context;
        this.onElementiClickListner = onElementiClickListner;
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
        TextView txtNomeElemento;
        TextView txtPrezzoElemento;


        public ElementiHolder(@NonNull View itemView) {
            super(itemView);

            txtNomeElemento = itemView.findViewById(R.id.txtNomeElemento);
            txtPrezzoElemento = itemView.findViewById(R.id.txtPrezzoElemento);
            removeCB = itemView.findViewById(R.id.chechBoxElementiGm);
            btnInfo = itemView.findViewById(R.id.btnInfo);

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    onElementiClickListner.onElementiClicked(getAdapterPosition());

                }
            });

            removeCB.setVisibility(View.INVISIBLE);

        }
    }

    public FloatingActionButton getBtnInfo() {
        return btnInfo;
    }

    public void setBtnInfo(FloatingActionButton btnInfo) {
        this.btnInfo = btnInfo;
    }

    public CheckBox getRemoveCB() {
        return removeCB;
    }

    public void setRemoveCB(CheckBox removeCB) {
        this.removeCB = removeCB;
    }
}
