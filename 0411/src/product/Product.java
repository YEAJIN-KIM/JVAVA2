package product;

public class Product {
	private String name;
	private String company;
	private String trait;
	private String price;
	
	public Product(String name, String company, String trait, String price) {
		super();
		this.name = name;
		this.company = company;
		this.trait = trait;
		this.price = price;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getTrait() {
		return trait;
	}

	public void setTrait(String trait) {
		this.trait = trait;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	
}
