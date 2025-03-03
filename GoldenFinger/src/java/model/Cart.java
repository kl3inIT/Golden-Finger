package model;

import dal.ProductDAO;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nhudi
 */
public class Cart {

    private List<Item> listItems;

    public Cart(String txt, ArrayList<Product> productList) {
        listItems = new ArrayList<>();
        String[] items = txt.split("/");
        for (String x : items) {
            String[] str = x.split(":");
            try {
                int pid = Integer.parseInt(str[0]);
                int quantity = Integer.parseInt(str[1]);
                Product p = getProductById(pid, productList);
                Item item = new Item();
                item.setProduct(p);
                item.setQuantity(quantity);
                item.setPrice(p.getPrice() - p.getPrice() * p.getDiscount());
                addItem(item);
            } catch (Exception e) {
            }
        }
    }

    public void addItem(Item item) {
        
        Item i = getItemByProductId(item.getProduct().getId());
        if (i != null) {
            i.setQuantity(i.getQuantity() + item.getQuantity());
        }
        else{
            listItems.add(item);                  
        }
    }

    public Item getItemByProductId(int id) {
        for (Item i : listItems) {
            if (i.getProduct().getId() == id) {
                return i;
            }
        }
        return null;
    }

    public Product getProductById(int id, ArrayList<Product> productList) {
        for (Product p : productList) {
            if (p.getId() == id) {
                return p;
            }
        }
        return null;
    }

    public float getTotalAmount(){
        float amount = 0;
        for(Item x : listItems){
            amount += x.getPrice() * x.getQuantity();
        }
        return amount;
    }
    
    public List<Item> getListItems() {
        return listItems;
    }

    public void setListItems(List<Item> listItems) {
        this.listItems = listItems;
    }
    
    
 
}
