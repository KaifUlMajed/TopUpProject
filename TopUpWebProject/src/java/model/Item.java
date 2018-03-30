/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import javax.persistence.*;

/**
 *
 * @author Kaif Ul Majed
 */
@Entity
@Table(name="ITEMS")
public class Item {
    @Id @GeneratedValue
    private int item_id;
    private int order_id;
    private int med_id;
    private int quantity;

    public Item() {
    }

    public Item(int order_id, int med_id, int quantity) {
        this.order_id = order_id;
        this.med_id = med_id;
        this.quantity = quantity;
    }
    

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }
    


    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int item_id) {
        this.item_id = item_id;
    }

    public int getMed_id() {
        return med_id;
    }

    public void setMed_id(int med_id) {
        this.med_id = med_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public boolean equals(Object obj) {
      if (obj == null) return false;
      if (!this.getClass().equals(obj.getClass())) return false;

      Item obj2 = (Item)obj;
      if((this.item_id == obj2.getItem_id()) && (this.order_id ==obj2.getOrder_id())) {
         return true;
      }
      return false;
   }
   
   public int hashCode() {
      int tmp = 0;
      tmp = ( item_id + order_id + med_id * quantity + "medicine").hashCode();
      return tmp;
   }
    
}
