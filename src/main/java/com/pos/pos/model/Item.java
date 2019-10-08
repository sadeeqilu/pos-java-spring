package com.pos.pos.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import javax.validation.constraints.NotBlank;

public class Item {
    private int id;

    @NotBlank
    private String item_name;
    private double unit_price;
    private int quantity;
    private Category category;

    public Item() {
    }

    public Item(@JsonProperty("id") int id,
                @JsonProperty("item_name") String item_name,
                @JsonProperty("unit_price") double unit_price,
                @JsonProperty("quantity") int quantity) {
        this.id = id;
        this.item_name = item_name;
        this.unit_price = unit_price;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getItem_name() {
        return item_name;
    }

    public void setItem_name(String item_name) {
        this.item_name = item_name;
    }

    public double getUnit_price() {
        return unit_price;
    }

    public void setUnit_price(double unit_price) {
        this.unit_price = unit_price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Item{" +
                "id=" + id +
                ", item_name='" + item_name + '\'' +
                ", unit_price=" + unit_price +
                ", quantity=" + quantity +
                '}';
    }
}
