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
import com.ingsw.ratatouille23.client.Model.Ruolo;
import com.ingsw.ratatouille23.client.Presenter.ElementoPresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Dialog.InfoElementDialog;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.ElementiGSFragment;

import java.util.ArrayList;
import java.util.List;

public class ElementiGSAdapter extends RecyclerView.Adapter<ElementiGSAdapter.ElementiHolder> {

    private List<Elemento> elementi = new ArrayList<Elemento>();
    private List<Elemento> elementiDelete = new ArrayList<Elemento>();
    private Context context;

    private Integer[][] quantita;
    private ElementiGSAdapter.OnElementiClickListner onElementiClickListner;
    private Boolean modRimozione;
    private ElementiGSFragment elementiGSFragment;

    private ElementoPresenter elementoPresenter = new ElementoPresenter(this);;


    public ElementiGSAdapter(ArrayList<Elemento> elementi, Context context, ElementiGSAdapter.OnElementiClickListner onElementiClickListner, ElementiGSFragment elementiGSFragment, Boolean modRimozione) {
        this.elementi = elementi;
        this.context = context;
        this.onElementiClickListner = onElementiClickListner;
        this.modRimozione = modRimozione;
        this.elementiGSFragment = elementiGSFragment;
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


        if(modRimozione){
            holder.rimozioneCB.setVisibility(View.VISIBLE);
            holder.counter.setVisibility(View.INVISIBLE);
            holder.btnAddCounterElement.setVisibility(View.INVISIBLE);
            holder.btnRemoveCounterElement.setVisibility(View.INVISIBLE);
        }
        else{
            holder.rimozioneCB.setVisibility(View.INVISIBLE);
            holder.counter.setVisibility(View.VISIBLE);
            holder.btnAddCounterElement.setVisibility(View.VISIBLE);
            holder.btnRemoveCounterElement.setVisibility(View.VISIBLE);
        }


        holder.txtNomeElementoGS.setText(elementi.get(position).getNome());
        holder.txtPrezzoElementoGS.setText(Float.toString(elementi.get(position).getPrezzo()));
        holder.txtCounter.setText(String.valueOf(quantita[position][1]));

        holder.txtNomeElementoGS.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openDialogInfoElemento(elementi.get(position));
            }
        });

        holder.rimozioneCB.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if(((CheckBox)view).isChecked())
                    elementiDelete.add(elementi.get(position));
                else
                    elementiDelete.remove(elementi.get(position));
            }
        });

        holder.btnAddCounterElement.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                quantita[position][1] ++;
                holder.txtCounter.setText( String.valueOf(quantita[position][1]));
                elementiGSFragment.getTxtUnita().setText(String.valueOf(Integer.parseInt(elementiGSFragment.getTxtUnita().getText().toString())+1));
                elementiGSFragment.getTxtTotale().setText(String.valueOf(Float.parseFloat(elementiGSFragment.getTxtTotale().getText().toString())+elementi.get(position).getPrezzo()));
                elementoPresenter.updateQuantita(elementiGSFragment.getOrdineSelected().getIdOrdine(), quantita[position][0], quantita[position][1]);
            }
        });

        holder.btnRemoveCounterElement.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if( Integer.parseInt(holder.txtCounter.getText().toString()) > 1){
                    quantita[position][1] --;
                    holder.txtCounter.setText( String.valueOf(quantita[position][1]));
                    elementiGSFragment.getTxtUnita().setText(String.valueOf(Integer.parseInt(elementiGSFragment.getTxtUnita().getText().toString())-1));
                    elementiGSFragment.getTxtTotale().setText(String.valueOf(Float.parseFloat(elementiGSFragment.getTxtTotale().getText().toString())-elementi.get(position).getPrezzo()));
                    elementoPresenter.updateQuantita(elementiGSFragment.getOrdineSelected().getIdOrdine(), quantita[position][0], quantita[position][1]);
                }
            }
        });

        if(((HomeActivity) elementiGSFragment.getActivity()).getUtente().getRuolo() != Ruolo.admin && ((HomeActivity)  elementiGSFragment.getActivity()).getUtente().getRuolo() != Ruolo.cameriere) {
            holder.btnAddCounterElement.setVisibility(View.INVISIBLE);
            holder.btnRemoveCounterElement.setVisibility(View.INVISIBLE);
        }
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

            itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {

                }
            });
            rimozioneCB.setVisibility(View.INVISIBLE);

        }


    }



    public List<Elemento> getElementi() {
        return elementi;
    }

    public void openDialogInfoElemento(Elemento elemento){
        InfoElementDialog infoElementDialog = new InfoElementDialog(elementiGSFragment, elemento);
        infoElementDialog.show(elementiGSFragment.getParentFragmentManager(), "infoElement");
    }

    public void setElementi(List<Elemento> elementi, boolean modRimozione) {
        this.modRimozione = modRimozione;
        this.elementi.clear();
        this.elementi.addAll(elementi);


        float totale = 0;
        int unita = 0;

        for (int j = 0; j < this.elementi.size(); j++) {
            unita = unita + this.quantita[j][1];
            totale = totale + this.elementi.get(j).getPrezzo() * this.quantita[j][1];
        }

        getElementiGSFragment().getTxtUnita().setText(String.valueOf(unita));
        getElementiGSFragment().getTxtTotale().setText(String.valueOf(totale));

        notifyDataSetChanged();

    }



    public void setElementiAndQuantita(List<Elemento> elementi){
        elementoPresenter.getQuantita(elementi, elementiGSFragment.getOrdineSelected());
    }


    public Integer[][] getQuantita() {
        return quantita;
    }

    public void setQuantita(Integer[][] quantita) {
        this.quantita = quantita;
    }

    public ElementiGSFragment getElementiGSFragment() {
        return elementiGSFragment;
    }

    public void setElementiGSFragment(ElementiGSFragment elementiGSFragment) {
        this.elementiGSFragment = elementiGSFragment;
    }


    public List<Elemento> getElementiDelete() {
        return elementiDelete;
    }

    public void setElementiDelete(List<Elemento> elementiDelete) {
        this.elementiDelete = elementiDelete;
    }


}


