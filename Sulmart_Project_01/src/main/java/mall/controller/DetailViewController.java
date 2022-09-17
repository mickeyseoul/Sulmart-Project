package mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import alcohol.model.AlcoholDao;
import mall.cart.ShoppingInfo;

@Controller
public class DetailViewController {

	private final String command ="detailView.mall";
	private final String getPage ="/shopDetailview";
	
	@Autowired
	private AlcoholDao alcoholDao;
	
	@RequestMapping(command)
	public String detailView(@RequestParam("orderid") String orderid, Model model) {
		
		List<ShoppingInfo> lists = alcoholDao.getOrderDetail(orderid);
		
		System.out.println("lists:"+lists);
		
		model.addAttribute("lists", lists);
		model.addAttribute("orderid", orderid);
		
		return getPage;
		
	}
	
	
}
