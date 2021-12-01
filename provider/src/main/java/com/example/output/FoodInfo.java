package com.example.output;

public class FoodInfo {
    private Integer number;
    private String type;

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "FoodInfo{" +
                "number=" + number +
                ", type='" + type + '\'' +
                '}';
    }
}
