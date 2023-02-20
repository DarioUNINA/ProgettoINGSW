//package com.ingsw.ratatouille23.client.View.Adapter;
//
//import android.view.ViewGroup;
//
//import androidx.annotation.NonNull;
//import androidx.recyclerview.widget.RecyclerView;
//
//import java.util.ArrayList;
//
//public class OrderAdapter extends RecyclerView.Adapter<OrderAdapter.OrderHolder> {

//    private ArrayList<Order> orderArrayList = new ArrayList<>();
//    public ArrayList<Order> selectedItemsArrayList = new ArrayList<>();
//
//    public int currentLayout = -1;
//
//    public OrderAdapter(Context context, ArrayList<Order> orderArrayList){
//        this.orderArrayList = orderArrayList;
//    }
//
//    @NonNull
//    @Override
//    public OrderAdapter.OrderHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
//        return null;
//    }
//
//    @Override
//    public void onBindViewHolder(@NonNull OrderAdapter.OrderHolder holder, int position) {
//
//    }
//
//
//    @Override
//    public int getItemCount() {
//        return orderArrayList.size();
//    }
//
//    @Override
//    public int getItemViewType(int position){
//        return currentLayout;
//    }
//
//    public ArrayList<Order> getOrderArrayList() {
//        return orderArrayList;
//    }
//
//    public void setOrderArrayList(ArrayList<Order> orderArrayList) {
//        this.orderArrayList = orderArrayList;
//    }
//
//    public int getCurrentLayout() {
//        return currentLayout;
//    }
//
//    public void setCurrentLayout(int currentLayout) {
//        this.currentLayout = currentLayout;
//    }
//
//    public void clearList(){
//        orderArrayList.clear();
//    }
//
//    public ArrayList<Order> getSelectedItemsArrayList() {
//        return selectedItemsArrayList;
//    }
//
//    public void setSelectedItemsArrayList(ArrayList<Order> selectedItemsArrayList) {
//        this.selectedItemsArrayList = selectedItemsArrayList;
//    }
//
//    // ***************************************************************************************
//    // ***************************************************************************************
//    // ***************************************************************************************
//
//    public class OrderHolder extends RecyclerView.ViewHolder{
//
//        TextView orderElement;
//        TextView orderPrice;
//        CheckBox checkBox;
//
//        public OrderHolder(@NonNull View itemView) {
//            super(itemView);
//        }
//    }

//}
