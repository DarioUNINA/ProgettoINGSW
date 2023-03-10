package com.ingsw.ratatouille23.client.View.Dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CalendarView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;

import com.ingsw.ratatouille23.client.Presenter.OrdinePresenter;
import com.ingsw.ratatouille23.client.R;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale.FiltroDataFragment;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class CalendarDialog extends AppCompatDialogFragment  {

    CalendarView calendarView;

    private FiltroDataFragment filtroDataFragment;

    private boolean from;
    public CalendarDialog(FiltroDataFragment filtroDataFragment, boolean from) {
        this.filtroDataFragment = filtroDataFragment;
        this.from = from;


    }
    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View v = inflater.inflate(R.layout.dialog_calendar, null);

        calendarView = v.findViewById(R.id.calendarioView);



                calendarView.setOnDateChangeListener(new CalendarView.OnDateChangeListener() {
                    @Override
                    public void onSelectedDayChange(@NonNull CalendarView calendarView, int anno, int mese, int giorno) {
                        mese ++;
                        String date = anno + "-" + mese + "-" + giorno;
                        if(from) {
                            getFiltroDataFragment().getTxtFrom().setText(date);
                            OrdinePresenter ordinePresenter = new OrdinePresenter(((HomeActivity)filtroDataFragment.getActivity()).getGestionePersonaleFragment().getPersonaleFragment());

                            ordinePresenter.getOrdiniTotali(((HomeActivity)filtroDataFragment.getActivity()).
                                    getGestionePersonaleFragment().getStatisticheFragment().getUtenteSelected().getUsername().toString(),
                                    getFiltroDataFragment().getTxtFrom().getText().toString(),
                                    getFiltroDataFragment().getTxtTo().getText().toString());

                            ordinePresenter.getIncasso(((HomeActivity)filtroDataFragment.getActivity()).
                                            getGestionePersonaleFragment().getStatisticheFragment().getUtenteSelected().getUsername(),
                                    getFiltroDataFragment().getTxtFrom().getText().toString(),
                                    getFiltroDataFragment().getTxtTo().getText().toString());
                            System.out.println(((HomeActivity)filtroDataFragment.getActivity()).
                                    getGestionePersonaleFragment().getStatisticheFragment().getUtenteSelected().getUsername());
                            ((HomeActivity)filtroDataFragment.getActivity()).
                                    getGestionePersonaleFragment().getStatisticheFragment().getTxtGuadagniSimbolo().setVisibility(View.VISIBLE);

                        }else{
                                getFiltroDataFragment().getTxtTo().setText(date);
                            OrdinePresenter ordinePresenter = new OrdinePresenter(((HomeActivity)filtroDataFragment.getActivity()).getGestionePersonaleFragment().getPersonaleFragment());

                            ordinePresenter.getOrdiniTotali(((HomeActivity)filtroDataFragment.getActivity()).
                                            getGestionePersonaleFragment().getStatisticheFragment().getUtenteSelected().getUsername(),
                                    getFiltroDataFragment().getTxtFrom().getText().toString(),
                                    getFiltroDataFragment().getTxtTo().getText().toString());

                            ordinePresenter.getIncasso(((HomeActivity)filtroDataFragment.getActivity()).
                                            getGestionePersonaleFragment().getStatisticheFragment().getUtenteSelected().getUsername(),
                                    getFiltroDataFragment().getTxtFrom().getText().toString(),
                                    getFiltroDataFragment().getTxtTo().getText().toString());
                            }
                        ((HomeActivity)filtroDataFragment.getActivity()).
                                getGestionePersonaleFragment().getStatisticheFragment().getTxtGuadagniSimbolo().setVisibility(View.VISIBLE);
                    }
                });



        AlertDialog dialog = new AlertDialog.Builder(getActivity())
                .setView(v)
                .show();

        return dialog;
    }

    @Override
    public void onStart() {
        super.onStart();
        getDialog().getWindow().getAttributes().width=850;
        getDialog().getWindow().getAttributes().height=650;
        getDialog().getWindow().setGravity(Gravity.CENTER_VERTICAL);
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        getDialog().getWindow().setAttributes(
                getDialog().getWindow().getAttributes());
    }

    public FiltroDataFragment getFiltroDataFragment() {
        return filtroDataFragment;
    }

    public void setFiltroDataFragment(FiltroDataFragment filtroDataFragment) {
        this.filtroDataFragment = filtroDataFragment;
    }


    public CalendarView getCalendarView() {
        return calendarView;
    }

    public void setCalendarView(CalendarView calendarView) {
        this.calendarView = calendarView;
    }
}
