package int_tbl.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import int_tbl.bean.Int_tblDTO;
import int_tbl.dao.Int_tblDAO;
import users.bean.UsersDTO;
import users.dao.UsersDAO;

//@Controller
public class Int_tblController {
	
	@Autowired
	private Int_tblService service;
	
	// 유저가 관심갖는 물품 명
	@RequestMapping(value = "/int_tbl/listG.do", method = RequestMethod.POST)
	public ModelAndView listG(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		String user_code = request.getParameter("user_code");
		
		// DB
		Int_tblDAO dao = new Int_tblDAO();
		List<Int_tblDTO> list = null;
		
		String rt = null;
		try {
			list = service.listG(user_code);
		} catch(Exception e) {
			rt = "Fail";
			e.printStackTrace();
		}
		// JSON
		int total = list.size(); // 조회된 데이터 수
		// 조회된 데이터 수로 성공/실패 판단
		if (total > 0) {
			rt = "OK";
		} else {
			rt = "Fail";
		}
		// json 객체 생성
		JSONObject json = new JSONObject();
		json.put("rt", rt);
		json.put("total", total);
		// json 배열 만들기
		if (total > 0) {
			JSONArray item = new JSONArray();

			for (int i = 0; i < list.size(); i++) {
				Int_tblDTO int_tblDTO = list.get(i);
				JSONObject temp = new JSONObject();
				temp.put("user_code", int_tblDTO.getUser_code());
				temp.put("goods_num", int_tblDTO.getGoods_num());
				temp.put("int_date", int_tblDTO.getInt_date());
				item.add(i, temp);
			}
			// json 객체에 배열 추가
			json.put("item", item);
		}
		System.out.println(json);
		modelAndView.setViewName("/users/delete.jsp");
		// modelAndView.addObject("su",su);
		modelAndView.addObject("json", json);
		// System.out.println("su = " + su);

		return modelAndView;
	}
	
}
