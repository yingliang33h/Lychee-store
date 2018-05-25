package cn.e3mall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.e3mall.common.pojo.EasyUIDataGridResult;
import cn.e3mall.common.utils.E3Result;
import cn.e3mall.content.service.ContentService;
import cn.e3mall.pojo.TbContent;

/**
 * 内容管理Controller
 * <p>Title: ContentController</p>
 * <p>Description: </p>
 * <p>Company: www.itcast.cn</p> 
 * @version 1.0
 */
@Controller
@RequestMapping("/content")
public class ContentController {
	
	@Autowired
	private ContentService contentService;

	@RequestMapping(value="/save", method=RequestMethod.POST)
	@ResponseBody
	public E3Result addContent(TbContent content) {
		//调用服务把内容数据保存到数据库
		E3Result e3Result = contentService.addContent(content);
		return e3Result;
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	@ResponseBody
	public E3Result updateContent(TbContent content) {
		E3Result result = contentService.updateContent(content);
		return result;
	}

	@RequestMapping("/delete")
	@ResponseBody
	public E3Result deleteContentByIds(Long[] ids) {
		E3Result result = contentService.deleteContentByIds(ids);
		return result;
	}

	@RequestMapping("/query/list")
	@ResponseBody
	public EasyUIDataGridResult getContentById(Long categoryId, Integer page, Integer rows) {
		EasyUIDataGridResult result = contentService.getContentListByCatId(categoryId, page, rows);
		return result;
	}
}
