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
@Builder // no se hien thi het contructer
@Getter // thay the cho getter
@Setter // thay the cho setter
@ToString
public class OrderDetail {
    private int id;
    private int orderId;
    private String productName;
    private String productImage;
    private double productPrice;
    private int quantity;
}
