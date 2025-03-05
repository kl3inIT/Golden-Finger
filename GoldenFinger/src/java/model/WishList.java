package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author nhudi
 */
public class WishList {

    private List<Item> listItems;

    public WishList(String txt, ArrayList<Product> productList) {
        listItems = new ArrayList<>();
        String[] items = txt.split("/");
        for (String x : items) {
            if (!x.isEmpty() && !x.isBlank()) { 
                try {
                    int pid = Integer.parseInt(x);
                    Product p = getProductById(pid, productList);
                    Item item = new Item();
                    item.setProduct(p);
                    item.setPrice(p.getPrice() - p.getPrice() * p.getDiscount());
                    addItem(item);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

        }
    }

    public void addItem(Item item) {
        Item i = getItemByProductId(item.getProduct().getId());
        if (i == null) {
            listItems.add(item);
        }
    }

    public void removeItemByProductId(int id) {
        listItems.remove(getItemByProductId(id));
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

    public int getSizeWishList() {
        return listItems.size();
    }

    public List<Item> getListItems() {
        return listItems;
    }

    public void setListItems(List<Item> listItems) {
        this.listItems = listItems;
    }

    public String listWishListToString() {
        String str = "";
        for (Item i : listItems) {
            str += i.getProduct().getId() + "/";
        }
        return str;
    }
}
