package com.webaid.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.webaid.domain.NoticeVO;
import com.webaid.domain.PageMaker;
import com.webaid.domain.SearchCriteria;
import com.webaid.service.NoticeService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private NoticeService nService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest req, @ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("main get");
		
		List<NoticeVO> list = nService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		Device device=DeviceUtils.getCurrentDevice(req);
		String deviceType="unknown";
		
		if(device == null){
			deviceType="unknown";
			logger.info("디바이스타입= "+deviceType);
			
			return "main/index";
		}
		if(device.isMobile()){
			deviceType="mobile";
			logger.info("디바이스타입= "+deviceType);			
			return "main/indexMobile";
		}else if(device.isTablet()){
			deviceType="mobile";
			logger.info("디바이스타입= "+deviceType);			
			return "main/indexMobile";
		}else{
			deviceType="normal";
			logger.info("디바이스타입= "+deviceType);
			return "main/index";
		}
	}
	
	@RequestMapping(value = "/eng", method = RequestMethod.GET)
	public String engHome(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("engMain get");
		
		List<NoticeVO> list = nService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "main/indexEng";
	}
	
	@RequestMapping(value = "/m", method = RequestMethod.GET)
	public String mobileHome(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("main get");
		
		List<NoticeVO> list = nService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "main/indexMobile";
	}
	
	@RequestMapping(value = "/m/eng", method = RequestMethod.GET)
	public String mobileEngHome(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		logger.info("main get");
		
		List<NoticeVO> list = nService.listSearch(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "main/indexMobileEng";
	}
	
	@RequestMapping(value = "/search_blog_get", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> register() {// @RequestBody이거 쓰면 무조건 json형식 사용할 때 씀
		
		ResponseEntity<Map<String, Object>> entity = null;
		try {
			StringBuffer str=search_blog();
			String result = str.toString();
			//System.out.println(result);
			/*String[] arr = result.split("[");
			for(int i=0;i<arr.length; i++){
				System.out.println(arr[i]+"\n");
			}*/
			Map<String, Object> map = new HashMap();
			map.put("result", result);
			
			entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);// 400 error
		}
		return entity;
	}
	
	public static StringBuffer search_blog(){
		String clientId = "PyGCsWIsGzsdElyaiWIM";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "Q78eM76t3V";//애플리케이션 클라이언트 시크릿값";
        StringBuffer response = new StringBuffer();
        try {
            String text = URLEncoder.encode("코어다이어트 딥롤러", "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/search/blog?query="+ text+"&display=15"; // json 결과
            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
               // System.out.println(inputLine);
               // System.out.println("=================================");
            }
            
            br.close();

            //System.out.println(response.toString());
            return response;
        } catch (Exception e) {
            System.out.println(e);
        }
		return response;
	}
	
	@RequestMapping(value="/noticeGet", method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> getNotice(@RequestBody Map<String, String> info) throws Exception{
		ResponseEntity<Map<String, Object>> entity = null;
		SearchCriteria cri = new SearchCriteria();
		if(info.size() != 0){
			cri.setPage(Integer.parseInt(info.get("page")));
			cri.setPerPageNum(Integer.parseInt(info.get("perPageNum")));
			cri.setSearchType(info.get("searchType"));
			cri.setKeyword(info.get("keyword"));
		}
		
		
		HashMap<String, Object> map=new HashMap<>();
		
		List<NoticeVO> list = nService.listSearch(cri);

		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.makeSearch(cri.getPage());
		pageMaker.setTotalCount(nService.listSearchCount(cri));
		
		map.put("list", list);
		map.put("pageMaker", pageMaker);
		
		entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
		return entity;
	}
	
	@RequestMapping(value = "/noticeRead", method = RequestMethod.GET)
	public String noticeRead(Model model) {
		logger.info("main get");
		
		return "main/index";
	}
}
