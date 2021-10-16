package com.example.input;

import com.example.entity.OrdersFoods;

import java.util.List;

public class OrdersForm {
    private String dNumber;

    private List<OrdersFoods> ordersFoods;

    public String getdNumber() {
        return dNumber;
    }

    public void setdNumber(String dNumber) {
        this.dNumber = dNumber;
    }

    public List<OrdersFoods> getOrdersFoods() {
        return ordersFoods;
    }

    public void setOrdersFoods(List<OrdersFoods> ordersFoods) {
        this.ordersFoods = ordersFoods;
    }

    @Override
    public String toString() {
        return "OrdersForm{" +
                "dNumber=" + dNumber +
                ", ordersFoods=" + ordersFoods +
                '}';
    }
}
