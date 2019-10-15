package com.webaid.persistence;

import java.util.List;

import com.webaid.domain.NoticeVO;
import com.webaid.domain.SearchCriteria;

public interface NoticeDao {
	public List<NoticeVO> selectAll();
	public NoticeVO selectOne(int no);
	public void insert(NoticeVO vo);
	public void update(NoticeVO vo);
	public void updateCnt(int no);
	public void delete(int no);
	public List<NoticeVO> listSearch(SearchCriteria cri) throws Exception;
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
