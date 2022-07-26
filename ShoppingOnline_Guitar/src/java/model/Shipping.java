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
public class Shipping {
    private int id;
    private String name;
    private String phone;
    private String address;
}
