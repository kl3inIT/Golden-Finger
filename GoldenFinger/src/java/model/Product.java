package model;

import java.util.List;

public class Product {

    private int id;
    private String name;
    private float price;
    private int unitInStock;
    private int discontinue;
    private List<String> image;
    private String include;
    private String warranty;
    private String dimensions;
    private String speakerPower;
    private float starRating;
    private String weight;
    private String describe;
    private String releaseDate;
    private float discount;
    private int status;
    private Category category;
    private Supplier supplier;

    public Product() {
    }

    public Product(int id, String name, float price, int unitInStock, int discontinue,
            List<String> image, String include, String warranty, String dimensions,
            String speakerPower, float starRating, String weight, String describe,
            String releaseDate, float discount, int status, Category category, Supplier supplier) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.unitInStock = unitInStock;
        this.discontinue = discontinue;
        this.image = image;
        this.include = include;
        this.warranty = warranty;
        this.dimensions = dimensions;
        this.speakerPower = speakerPower;
        this.starRating = starRating;
        this.weight = weight;
        this.describe = describe;
        this.releaseDate = releaseDate;
        this.discount = discount;
        this.status = status;
        this.category = category;
        this.supplier = supplier;
    }

    public List<String> getImage() {
        return image;
    }

    public void setImage(List<String> image) {
        this.image = image;
    }

    public String getWeight() {
        return weight;
    }

    public void setWeight(String weight) {
        this.weight = weight;
    }

    public String getInclude() {
        return include;
    }

    public void setInclude(String include) {
        this.include = include;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(int unitInStock) {
        this.unitInStock = unitInStock;
    }

    public int getDiscontinue() {
        return discontinue;
    }

    public void setDiscontinue(int discontinue) {
        this.discontinue = discontinue;
    }

    public String getWarranty() {
        return warranty;
    }

    public void setWarranty(String warranty) {
        this.warranty = warranty;
    }

    public String getDimensions() {
        return dimensions;
    }

    public void setDimensions(String dimensions) {
        this.dimensions = dimensions;
    }

    public String getSpeakerPower() {
        return speakerPower;
    }

    public void setSpeakerPower(String speakerPower) {
        this.speakerPower = speakerPower;
    }

    public float getStarRating() {
        return starRating;
    }

    public void setStarRating(float starRating) {
        this.starRating = starRating;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Supplier getSupplier() {
        return supplier;
    }

    public void setSupplier(Supplier supplier) {
        this.supplier = supplier;
    }

}
