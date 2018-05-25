package cn.e3mall.search.mapper;

import java.util.List;

import cn.e3mall.common.pojo.SearchItem;

public interface ItemMapper {

	List<SearchItem> getItemList();
	SearchItem getItemById(long itemId);
	List<SearchItem> getAllList();
	List<SearchItem> getListByCid(long cid);
	List<SearchItem> getOganicList();
	
}
