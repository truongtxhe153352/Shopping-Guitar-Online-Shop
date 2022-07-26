/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author truon
 */

// Su dung lombook de khi them mot thuoc tinh thi ta khong phai sua lai code

@Builder // no se hien thi het contructer
@Getter // thay the cho getter
@Setter // thay the cho setter
@ToString
public class Product {
    private int id;
    private String name;
    private int quantity;
    private double price;
    private String description;
    private String imageUrl;
    private String title;
    private int categoryId;
    
    
}
