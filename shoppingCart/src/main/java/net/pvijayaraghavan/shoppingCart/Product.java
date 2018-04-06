package net.pvijayaraghavan.shoppingCart;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class Product {
	private String name;
	private String description;
	private BigDecimal price;

	// Factory Method
	public static List<Product> getProducts() {
		List<Product> products = new ArrayList<>();
		Product apple = new Product();
		apple.setName("Apple");
		apple.setDescription("This is an apple");
		apple.setPrice(new BigDecimal("0.50"));
		products.add(apple);

		;
		Product orange = new Product();
		orange.setName("Orange");
		orange.setDescription("This is an orange");
		orange.setPrice(new BigDecimal("0.75"));
		products.add(orange);

		Product banana = new Product();
		banana.setName("Banana");
		banana.setDescription("This is a banana");
		banana.setPrice(new BigDecimal("0.25"));
		products.add(banana);

		return products;

	}

	public static Product getProduct(String nameOfProduct) {
		for (Product thisProduct : getProducts()) {
			if (nameOfProduct.equals(thisProduct.getName())) {
				return thisProduct;
			}
		}
		return null;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((price == null) ? 0 : price.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (price == null) {
			if (other.price != null)
				return false;
		} else if (!price.equals(other.price))
			return false;
		return true;
	}

}
