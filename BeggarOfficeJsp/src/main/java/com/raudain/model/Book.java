package com.raudain.model;

import java.io.Serializable;

public class Book implements Serializable {
    static final long serialVersionUID = 12345L;
    private String title;
    private String description;
    private float price;

    public Book() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(final String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(final String description) {
        this.description = description;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(final float price) {
        this.price = price;
    }

}
