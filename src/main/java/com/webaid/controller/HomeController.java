package com.webaid.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		logger.info("main get");
		
		return "main/index";
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
}