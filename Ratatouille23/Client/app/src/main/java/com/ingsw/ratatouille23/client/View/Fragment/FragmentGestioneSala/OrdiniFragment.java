package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestioneSala;

import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Dialog.AddOrderDialog;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link OrdiniFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class OrdiniFragment extends Fragment {

    private FloatingActionButton btnAddOrder;
    RecyclerView listOrdini;

    // TODO: Rename parameter arguments, choose names that match
    // the fragment initialization parameters, e.g. ARG_ITEM_NUMBER
    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public OrdiniFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment OrdiniFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static OrdiniFragment newInstance(String param1, String param2) {
        OrdiniFragment fragment = new OrdiniFragment();
        Bundle args = new Bundle();
        args.putString(ARG_PARAM1, param1);
        args.putString(ARG_PARAM2, param2);
        fragment.setArguments(args);
        return fragment;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (getArguments() != null) {
            mParam1 = getArguments().getString(ARG_PARAM1);
            mParam2 = getArguments().getString(ARG_PARAM2);
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View rootView = inflater.inflate(R.layout.fragment_ordini, container, false);


        btnAddOrder = (FloatingActionButton) rootView.findViewById(R.id.btnAddOrder);

        btnAddOrder.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openDialog();
            }
        });

        return rootView;
    }

    public void openDialog(){
        AddOrderDialog addOrderDialog = new AddOrderDialog(this);
        addOrderDialog.show(getParentFragmentManager(), "newOrdine");
    }
}