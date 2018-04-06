package net.pvijayaraghavan.shoppingCart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CartController {

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String displayProducts(ModelMap modelHolder) {
		List<Product> products = Product.getProducts();
		modelHolder.put("products", products);

		return "showProducts";

	}

	@RequestMapping(path = "/addToCart", method = RequestMethod.POST)
	public String addToCart(@RequestParam String nameOfFruit, HttpSession session, RedirectAttributes flashScope) {
		Product selectedFruit = Product.getProduct(nameOfFruit);
		Map<Product, Integer> shoppingCart;
		
		if(session.getAttribute("shoppingCart") != null) {	
			shoppingCart = (Map<Product,Integer>)session.getAttribute("shoppingCart");
		} else {	
			
			shoppingCart  = new HashMap<>();
		} 
		if(shoppingCart.containsKey(selectedFruit)) {
			int quantity = shoppingCart.get(selectedFruit);
			quantity++;
			shoppingCart.put(selectedFruit, quantity);
		} else {
			shoppingCart.put(selectedFruit, 1);
		}
		
		session.setAttribute("shoppingCart", shoppingCart);
		flashScope.addFlashAttribute("message", "Your" + selectedFruit.getName() + "was added to the cart");
		return "redirect:/";
	}
}
