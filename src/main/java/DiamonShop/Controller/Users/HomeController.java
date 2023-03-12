package DiamonShop.Controller.Users;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController {
	
	@RequestMapping(value = {"/","/trang-chu"})
	public ModelAndView Index() {
		//ModelAndView mv = new ModelAndView("users/index");
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("Menus", _homeService.GetDataMenus());
		_mvShare.addObject("products", _homeService.GetDataProducts());
		_mvShare.setViewName("users/index");
		return _mvShare;
	}
	
	
}
