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
import com.ingsw.ratatouille23.client.View.Dialog.InfoElementDialog;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala.ElementiGSFragment;

import java.util.ArrayList;
import java.util.List;

public class ElementiGSAdapter extends RecyclerView.Adapter<ElementiGSAdapter.ElementiHolder> {

    private List<Elemento> elementi = new ArrayList<Elemento>();
    private List<Integer> quantita = new ArrayList<Integer>();
    private Context context;
    private ElementiGSAdapter.OnElementiClickListner onElementiClickListner;

    private int counter = 1;
    Boolean modRimozione;
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

        holder.txtNomeElementoGS.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openDialogInfoElemento(elementi.get(position));
            }
        });

        holder.txtCounter.setText(quantita.get(position).toString());



        holder.btnAddCounterElement.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                counter++;
                holder.txtCounter.setText( String.valueOf(counter));

            }
        });

        holder.btnRemoveCounterElement.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if( counter > 1){
                    counter--;
                    holder.txtCounter.setText( String.valueOf(counter));
                }
            }
        });


        int totale = 0;
        for (Elemento e : elementi)
            totale += e.getPrezzo();

        elementiGSFragment.getTxtUnita().setText(String.valueOf(elementi.size()));
        elementiGSFragment.getTxtTotale().setText(String.valueOf(totale)+"$");
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
        notifyDataSetChanged();
    }

    public List<Integer> getQuantita() {
        return quantita;
    }

    public void setQuantita(List<Integer> quantita) {
        this.quantita.clear();
        this.quantita.addAll(quantita);
    }

    public void setElementiAndQuantita(List<Elemento> elementi){
        quantita.clear();
        elementoPresenter.getQuantita(elementi, elementiGSFragment.getOrdineSelected());
    }

    public void addQuantita(Integer i, List<Elemento> elementi){
        quantita.add(i);
        if(quantita.size()==elementi.size())
            setElementi(elementi, false);
    }
}


