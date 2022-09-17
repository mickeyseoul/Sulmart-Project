package mall.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import alcohol.model.AlcoholBean;
import alcohol.model.AlcoholDao;

@Controller
public class MallMainController {
	
	private final String command = "/main.mall";
	private String getPage = "/main";
	
	@Autowired
	private AlcoholDao alcoholDao;
	
	@RequestMapping(command)
	public String main(Model model) {
		
		List<AlcoholBean> lists = new ArrayList<AlcoholBean>();
		lists = alcoholDao.getNewAlcohol();
		
		model.addAttribute("lists", lists);
		
		return getPage;
	}

}
