package com.ingsw.ratatouille23.client.View.Adapter;

import android.content.Context;

import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;

import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale.StatisticheGeneraleFragment;
import com.ingsw.ratatouille23.client.View.Fragment.FragmentGestionePersonale.StatisticheUtenteFragment;

public class StatsAdapter extends FragmentPagerAdapter {

    private Context context;
    int totalTabs;

    public StatsAdapter(FragmentManager fm, Context context, int totalTabs){
        super(fm);
        this.context = context;
        this.totalTabs = totalTabs;
    }

    @Override
    public int getCount() {
        return totalTabs;
    }


    @NonNull
    @Override
    public Fragment getItem(int position) {

        switch (position) {
            case 0:
                return new StatisticheGeneraleFragment();

            case 1:
                return new StatisticheUtenteFragment();

            default:
                return null;
        }
    }
}
