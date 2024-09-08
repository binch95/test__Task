package com.example.demo.vo;

import com.opencsv.bean.CsvBindByName;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {

    @CsvBindByName
    private String id;

    @CsvBindByName
    private String name;

    @CsvBindByName
    private String price;

    @CsvBindByName
    private String description;

    // Getters and setters
}
