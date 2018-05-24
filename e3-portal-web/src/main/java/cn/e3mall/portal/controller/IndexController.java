package cn.e3mall.portal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.e3mall.common.pojo.EasyUIDataGridResult;
import cn.e3mall.content.service.ContentService;
import cn.e3mall.pojo.TbContent;
import cn.e3mall.service.ItemService;

/**
 * 首页展示Controller
 * <p>Title: IndexController</p>
 * <p>Description: </p>
 * <p>Company: www.itcast.cn</p> 
 * @version 1.0
 */
@Controller
public class IndexController {
	@Value("${CONTENT_LOGO_ID}")
	private Long CONTENT_LOGO_ID;
	@Value("${CONTENT_LUNBO_ID}")
	private Long CONTENT_LUNBO_ID;
	@Value("${CONTENT_R_SIDE_SMALL_ADS_ID}")
	private Long CONTENT_R_SIDE_SMALL_ADS_ID;
	@Value("${CONTENT_RECOMMENDED_ID}")
	private Long CONTENT_RECOMMENDED_ID;
	@Value("${CONTENT_NEW_ARRIVALS_ID}")
	private Long CONTENT_NEW_ARRIVALS_ID;
	@Value("${CONTENT_RSIDE_AD_ID}")
	private Long CONTENT_RSIDE_AD_ID;
	@Value("${CONTENT_STORE_NEWS_ID}")
	private Long CONTENT_STORE_NEWS_ID;
	@Value("${CONTENT_fLOOR_AD_ID}")
	private Long CONTENT_fLOOR_AD_ID;
	@Value("${CONTENT_1ST_fLOOR_ADS_ID}")
	private Long CONTENT_1ST_fLOOR_ADS_ID;
	@Value("${CONTENT_FOOD_PICS_ID}")
	private Long CONTENT_FOOD_PICS_ID;
	@Autowired
	private ContentService contentService;

	@RequestMapping("/index")
	public String showIndex(Model model) {
		//查询内容列表
		List<TbContent> ad1List = contentService.getContentListByCid(CONTENT_LUNBO_ID);
		List<TbContent> rSideSmallAds = contentService.getContentListByCid(CONTENT_R_SIDE_SMALL_ADS_ID);
		List<TbContent> recommendedProductList = contentService.getContentListByCid(CONTENT_RECOMMENDED_ID);
		List<TbContent> newArrivalsList = contentService.getContentListByCid(CONTENT_NEW_ARRIVALS_ID);
		List<TbContent> rSideAd = contentService.getContentListByCid(CONTENT_RSIDE_AD_ID);
		List<TbContent> storeNews = contentService.getContentListByCid(CONTENT_STORE_NEWS_ID);
		List<TbContent> floorAd = contentService.getContentListByCid(CONTENT_fLOOR_AD_ID);
		List<TbContent> floorItemAdS = contentService.getContentListByCid(CONTENT_1ST_fLOOR_ADS_ID);
		List<TbContent> logo = contentService.getContentListByCid(CONTENT_LOGO_ID);
		List<TbContent> footPics = contentService.getContentListByCid(CONTENT_FOOD_PICS_ID);


		// 把结果传递给页面
		model.addAttribute("ad1List", ad1List);
		
		model.addAttribute("recommendedProductList", recommendedProductList);
		model.addAttribute("newArrivalsList", newArrivalsList);
		model.addAttribute("rSideAd", rSideAd);
		model.addAttribute("storeNews", storeNews);
		model.addAttribute("floorAd", floorAd);
		model.addAttribute("floorItemAdS", floorItemAdS);
		model.addAttribute("rSideSmallAds", rSideSmallAds);
		model.addAttribute("logo", logo);
		model.addAttribute("footPics", footPics);


		return "index";
	}
	
}
