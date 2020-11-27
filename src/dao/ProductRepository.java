package dao;

import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	//다른 여러 클래스에서  instance메소드를 통해서 동일한 ProductRepository를 사용가능
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public ProductRepository() {

		
		// 아이폰 정보
		Product phone = new Product("p1234", "iPhone12", 1000000);
		phone.setDescription("6.1-inch, 2532X1170 Super Retina XDR display, 듀얼 12MP 카메라");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");

		// 노트북정보
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13,3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("NoteBoock");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.png");

		// 테블릿 정보
		Product tablet = new Product("p1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Saumsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);

	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}

	public Product getProductById(String productId) {
		Product productById = null;
		
		for(int i =0; i<listOfProducts.size(); i++) {
			Product product =listOfProducts.get(i);
			//상품의 아이디가 맞는지 확인
			if(product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;//맞을경우 
				break;
			}
		}
		return productById;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
		//상품의 정보를 하나하나씩 listOfProducts에 저장
	}

}
