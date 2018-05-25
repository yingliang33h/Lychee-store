package cn.e3mall.search.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.e3mall.common.pojo.SearchResult;
import cn.e3mall.search.service.SearchService;

/**
 * 商品搜索Controller
 * <p>Title: SearchController</p>
 * <p>Description: </p>
 * <p>Company: www.itcast.cn</p> 
 * @version 1.0
 */
@Controller
public class SearchController {
	
	@Autowired
	private SearchService searchService;
	
	@Value("${SEARCH_RESULT_ROWS}")
	private Integer SEARCH_RESULT_ROWS;

	@RequestMapping("/search")
	public String searchItemList(String keyword, 
			@RequestParam(defaultValue="1") Integer page, Model model) throws Exception {
		keyword = new String(keyword.getBytes("iso-8859-1"), "utf-8");
		//查询商品列表
		SearchResult searchResult = searchService.search(keyword, page, SEARCH_RESULT_ROWS);
		//把结果传递给页面
		model.addAttribute("query", keyword);
		model.addAttribute("totalPages", searchResult.getTotalPages());
		model.addAttribute("page", page);
		model.addAttribute("recourdCount", searchResult.getRecordCount());
		model.addAttribute("itemList", searchResult.getItemList());
		//异常测试
		//int a = 1/0;
		//返回逻辑视图
		if (searchResult.getRecordCount() == 0) {
			return "upcome";
		}
		return "search";
	}
	
	@RequestMapping("/search/list")
	public String showAllItem( 
			@RequestParam(defaultValue="1") Integer page, Model model) throws Exception {
		//查询商品列表
		SearchResult searchResult = searchService.getAllList(page, SEARCH_RESULT_ROWS);
		//把结果传递给页面
		model.addAttribute("totalPages", searchResult.getTotalPages());
		model.addAttribute("page", page);
		model.addAttribute("recourdCount", searchResult.getRecordCount());
		model.addAttribute("itemList", searchResult.getItemList());
		//异常测试
		//int a = 1/0;
		//返回逻辑视图
		if (searchResult.getRecordCount() == 0) {
			return "upcome";
		}
		return "list";
	}
	@RequestMapping("/search/organic")
	public String showOrganic( 
			@RequestParam(defaultValue="1") Integer page, Model model) throws Exception {
		//查询商品列表
		SearchResult searchResult = searchService.getOrganicList(page, SEARCH_RESULT_ROWS);
		//把结果传递给页面
		model.addAttribute("totalPages", searchResult.getTotalPages());
		model.addAttribute("page", page);
		model.addAttribute("recourdCount", searchResult.getRecordCount());
		model.addAttribute("itemList", searchResult.getItemList());
		//异常测试
		//int a = 1/0;
		//返回逻辑视图
		if (searchResult.getRecordCount() == 0) {
			return "upcome";
		}
		return "organic";
	}
	
	@RequestMapping("/search/category/{cid}")
	public String showListByCid( 
			@PathVariable long cid,@RequestParam(defaultValue="1") Integer page, Model model) throws Exception {
		//查询商品列表
		SearchResult searchResult = searchService.getListByCid(cid, page, SEARCH_RESULT_ROWS);
		//把结果传递给页面
		model.addAttribute("totalPages", searchResult.getTotalPages());
		model.addAttribute("page", page);
		model.addAttribute("recourdCount", searchResult.getRecordCount());
		model.addAttribute("itemList", searchResult.getItemList());
		//异常测试
		//int a = 1/0;
		//返回逻辑视图
		if (searchResult.getRecordCount() == 0) {
			return "upcome";
		}
		return "search";
	}
}
