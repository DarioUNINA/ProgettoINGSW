package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.Model.Elemento;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Dialog.InfoElementDialog;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneMenu.ElementiMenuFragment;

import java.util.ArrayList;

public class ElementiGMAdapter extends RecyclerView.Adapter<ElementiGMAdapter.ElementiHolder> {

    private ArrayList<Elemento> elementi;
    private Context context;
    private OnElementiClickListner onElementiClickListner;


    private ElementiMenuFragment elementiMenuFragment;

    private Boolean flag;



    public ElementiGMAdapter(ArrayList<Elemento> elementi, Context context, OnElementiClickListner onElementiClickListner, Boolean flag, ElementiMenuFragment elementiMenuFragment) {

        this.elementi = elementi;
        this.context = context;
        this.onElementiClickListner = onElementiClickListner;
        this.flag = flag;
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

        if(flag){
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
                openDialogInfoElemento();
            }
        });
        //holder.txtNomeElemento.setText(elementi.get(position).getNome());
//        holder.txtNomeElemento.setText("puttan");
//        holder.txtPrezzoElemento.setText("2$");
        //holder.txtPrezzoElemento.setText(Float.toString(elementi.get(position).getPrezzo()));
        //bisogna passare il tavolo per prendere il nome del cameriere
    }

    @Override
    public int getItemCount() {
        return 3;
//        return elementi.size();
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

                itemView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        onElementiClickListner.onElementiClicked(getAdapterPosition());
                        btnInfo.setOnClickListener(new View.OnClickListener() {
                            @Override
                            public void onClick(View view) {
                                openDialogInfoElemento();
                            }
                        });
                    }
                });

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

    public void openDialogInfoElemento(){
        InfoElementDialog infoElementDialog = new InfoElementDialog(elementiMenuFragment);
        infoElementDialog.show(elementiMenuFragment.getParentFragmentManager(), "infoElement");
    }





}
