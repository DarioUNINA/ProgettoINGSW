package com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale;

import android.os.Bundle;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CalendarView;
import android.widget.TextView;

import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Dialog.AddElementoMenuDialog;
import com.ingsw.ratatouille23.client.View.Dialog.CalendarDialog;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * A simple {@link Fragment} subclass.
 * Use the {@link FiltroDataFragment#newInstance} factory method to
 * create an instance of this fragment.
 */
public class FiltroDataFragment extends Fragment {


    private TextView txtFrom, txtTo;

    private static final String ARG_PARAM1 = "param1";
    private static final String ARG_PARAM2 = "param2";

    // TODO: Rename and change types of parameters
    private String mParam1;
    private String mParam2;

    public FiltroDataFragment() {
        // Required empty public constructor
    }

    /**
     * Use this factory method to create a new instance of
     * this fragment using the provided parameters.
     *
     * @param param1 Parameter 1.
     * @param param2 Parameter 2.
     * @return A new instance of fragment FiltroDataFragment.
     */
    // TODO: Rename and change types and number of parameters
    public static FiltroDataFragment newInstance(String param1, String param2) {
        FiltroDataFragment fragment = new FiltroDataFragment();
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
        View rootView = inflater.inflate(R.layout.fragment_filtro_data, container, false);

        txtFrom = rootView.findViewById(R.id.txtFrom);
        txtTo = rootView.findViewById(R.id.txtTo);

        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDateTime now = LocalDateTime.now();
        txtFrom.setText(dtf.format(now));
        txtTo.setText(dtf.format(now));

        txtFrom.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openDialogFrom();
            }
        });

        txtTo.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                openDialogTo();
            }
        });



        return rootView;
    }


    public void openDialogFrom(){
        CalendarDialog calendarDialogFrom = new CalendarDialog(this, true);
        calendarDialogFrom.show(getParentFragmentManager(), "Calendar");

    }

    public void openDialogTo(){
        CalendarDialog calendarDialogTo = new CalendarDialog(this, false);
        calendarDialogTo.show(getParentFragmentManager(), "Calendar");

    }

    public TextView getTxtFrom() {
        return txtFrom;
    }

    public void setTxtFrom(TextView txtFrom) {
        this.txtFrom = txtFrom;
    }

    public TextView getTxtTo() {
        return txtTo;
    }

    public void setTxtTo(TextView txtTo) {
        this.txtTo = txtTo;
    }

}