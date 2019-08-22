package goods_board.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import goods_board.bean.Goods_boardDTO;
import users.bean.UsersDTO;
import users.dao.UsersDAO;

@Controller
public class Goods_boardController {
	@Autowired
	private Goods_boardService service;

	// 웹 리스트용
	@RequestMapping(value = "/goods/boardList.do", method = RequestMethod.POST)
	public ModelAndView boardList(HttpServletRequest request) {

		String str_pg = request.getParameter("pg");

		int pg = 1;
		if (str_pg != null) {
			pg = Integer.parseInt(str_pg);
		}
		System.out.println("pg = " + pg);
		int endNum = pg * 10;
		int startNum = endNum - 9;

		List<Goods_boardDTO> list = service.boardList(startNum, endNum);

		System.out.println(list.size());
		int totalA = service.getTotalA(); // 총 글수
		int totalP = (totalA + 4) / 5; // 총페이지수

		int startPage = (pg - 1) / 3 * 3 + 1;
		int endPage = startPage + 2;
		if (totalP < endPage)
			endPage = totalP;

		String rt = null;
		int total = list.size(); // 조회된 데이터 수
		// 조회된 데이터 수로 성공/실패 판단
		if (total > 0) {
			rt = "OK";
		} else {
			rt = "FAIL";
		}

		// json 객체 생성
		JSONObject json = new JSONObject();
		json.put("rt", rt);
		json.put("total", total);

		if (total > 0) {
			JSONArray item = new JSONArray();
			for (int i = 0; i < list.size(); i++) {

				Goods_boardDTO boardDTO = list.get(i);

				JSONObject temp = new JSONObject();

				temp.put("user_name", boardDTO.getUser_name());
				temp.put("area", boardDTO.getArea());
				temp.put("board_date", boardDTO.getBoard_date());
				temp.put("category_code", boardDTO.getCategory_code());
				temp.put("content", boardDTO.getContent());
				temp.put("image0", boardDTO.getImage0());
				temp.put("image1", boardDTO.getImage1());
				temp.put("image2", boardDTO.getImage2());
				temp.put("interest_count", boardDTO.getInterest_count());
				temp.put("lat", boardDTO.getLat());
				temp.put("lng", boardDTO.getLng());
				temp.put("num", boardDTO.getNum());
				temp.put("price", boardDTO.getPrice());
				temp.put("readcount", boardDTO.getReadcount());
				temp.put("reply_count", boardDTO.getReply_count());
				temp.put("subject", boardDTO.getSubject());
				temp.put("hide_tf", boardDTO.getHide_tf());
				temp.put("trade_tf", boardDTO.getTrade_tf());
				
				System.out.println("i = " + i);

				/*
				 * }else { temp.put("none", "none"); }
				 */
				item.add(i, temp);
			}
			json.put("item", item);

		}
		System.out.println(json);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("json", json);

		modelAndView.setViewName("/users/delete.jsp");
		return modelAndView;
	}

	// 앱 리스트용
	@RequestMapping(value = "/goods/list.do", method = RequestMethod.POST)
	public ModelAndView list(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		String str_Mylat = request.getParameter("Mylat");
		double Mylat = 999.0;
		if (str_Mylat != null) {
			Mylat = Double.parseDouble(str_Mylat);
		}
		String str_Mylng = request.getParameter("Mylng");

		double Mylng = 999.0;
		if (str_Mylng != null) {
			Mylng = Double.parseDouble(str_Mylng);
		}
		// DB
		Goods_boardDTO dao = new Goods_boardDTO();
		List<Goods_boardDTO> list = service.list();

		// JSON
		String rt = null;
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
				Goods_boardDTO boardDTO = list.get(i);
				double kilometer = LocationDistance.distance(Mylat, Mylng, boardDTO.getLat(), boardDTO.getLng(),
						"meter");
				JSONObject temp = new JSONObject();
				if (kilometer <= 1) {
					System.out.println("meter = " + kilometer);
					temp.put("user_name", boardDTO.getUser_name());
					temp.put("area", boardDTO.getArea());
					temp.put("board_date", boardDTO.getBoard_date());
					temp.put("category_code", boardDTO.getCategory_code());
					temp.put("content", boardDTO.getContent());
					temp.put("image0", boardDTO.getImage0());
					temp.put("image1", boardDTO.getImage1());
					temp.put("image2", boardDTO.getImage2());
					temp.put("interest_count", boardDTO.getInterest_count());
					temp.put("lat", boardDTO.getLat());
					temp.put("lng", boardDTO.getLng());
					temp.put("num", boardDTO.getNum());
					temp.put("price", boardDTO.getPrice());
					temp.put("readcount", boardDTO.getReadcount());
					temp.put("reply_count", boardDTO.getReply_count());
					temp.put("subject", boardDTO.getSubject());
					temp.put("hide_tf", boardDTO.getHide_tf());
					temp.put("trade_tf", boardDTO.getTrade_tf());
					
					System.out.println("i = " + i);

					/*
					 * }else { temp.put("none", "none"); }
					 */
					int j = 0;
					item.add(j++, temp);
				}
				json.put("item", item);
			}
		}

		System.out.println(json);
		modelAndView.setViewName("/users/delete.jsp");
		// modelAndView.addObject("su",su);
		modelAndView.addObject("json", json);
		// System.out.println("su = " + su);

		return modelAndView;
	}

	@RequestMapping(value = "/goods/getTotalA.do", method = RequestMethod.POST)
	public ModelAndView getTotalA(HttpServletRequest request) {

		int su = service.getTotalA();
		String rt = "";
		if (su > 0) {
			rt = "OK";
		} else {
			rt = "Fail";
		}
		JSONObject json = new JSONObject();
		json.put("rt", rt);
		JSONArray item = new JSONArray();
		JSONObject temp = new JSONObject();
		temp.put("count", su);
		item.add(0, temp);
		json.put("item", item);
		System.out.println(json);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/users/delete.jsp");
		// modelAndView.addObject("su", su);
		modelAndView.addObject("json", json);

		// System.out.println("su = " + su);

		return modelAndView;
	}

	@RequestMapping(value = "/goods/boardView.do", method = RequestMethod.POST)
	public ModelAndView boardView(HttpServletRequest request) {
		String str_num = request.getParameter("num");

		int num = 0;
		if (str_num != null) {
			num = Integer.parseInt(str_num);
		}
		System.out.println("num = " + num);
		Goods_boardDTO boardDTO = null;
		String rt = "";
		try {
			boardDTO = service.boardView(num);
		} catch (Exception e) {
			rt = "Fail";
			e.printStackTrace();
		}
		int RC = service.updateRC(num);

		if (boardDTO != null) {
			rt = "OK";
		} else {
			rt = "Fail";
		}
		JSONObject json = new JSONObject();
		json.put("rt", rt);
		json.put("RC", RC);
		JSONArray item = new JSONArray();
		JSONObject temp = new JSONObject();
		temp.put("user_name", boardDTO.getUser_name());
		temp.put("area", boardDTO.getArea());
		temp.put("board_date", boardDTO.getBoard_date());
		temp.put("category_code", boardDTO.getCategory_code());
		temp.put("content", boardDTO.getContent());
		temp.put("image0", boardDTO.getImage0());
		temp.put("image1", boardDTO.getImage1());
		temp.put("image2", boardDTO.getImage2());
		temp.put("interest_count", boardDTO.getInterest_count());
		temp.put("lat", boardDTO.getLat());
		temp.put("lng", boardDTO.getLng());
		temp.put("num", boardDTO.getNum());
		temp.put("price", boardDTO.getPrice());
		temp.put("readcount", boardDTO.getReadcount());
		temp.put("reply_count", boardDTO.getReply_count());
		temp.put("subject", boardDTO.getSubject());
		temp.put("hide_tf", boardDTO.getHide_tf());
		temp.put("trade_tf", boardDTO.getTrade_tf());
		
		item.add(0, temp);
		json.put("item", item);
		System.out.println(json);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/users/delete.jsp");
		// modelAndView.addObject("su", su);
		modelAndView.addObject("json", json);

		// System.out.println("su = " + su);

		return modelAndView;
	}

	@RequestMapping(value = "/goods/boardDelete.do", method = RequestMethod.POST)
	public ModelAndView boardDelete(HttpServletRequest request) {
		String str_num = request.getParameter("num");

		int num = 0;
		if (str_num != null) {
			num = Integer.parseInt(str_num);
		}

		int su = 0;
		String rt = "";
		try {
			su = service.boardDelete(num);
		} catch (Exception e) {
			rt = "Fail";
			e.printStackTrace();
		}

		if (su > 0) {
			rt = "OK";
		} else {
			rt = "Fail";
		}
		JSONObject json = new JSONObject();
		json.put("rt", rt);
		System.out.println(json);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/users/delete.jsp");
		modelAndView.addObject("su", su);
		modelAndView.addObject("json", json);

		System.out.println("su = " + su);

		return modelAndView;
	}

	@RequestMapping(value = "/goods/requestupload2.do")
	public String requestupload2(MultipartHttpServletRequest mtfRequest) {
		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		String src = mtfRequest.getParameter("src");
		System.out.println("src value : " + src);

		String path = "C:\\image\\";

		for (MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename(); // 원본 파일 명
			long fileSize = mf.getSize(); // 파일 사이즈

			System.out.println("originFileName : " + originFileName);
			System.out.println("fileSize : " + fileSize);

			String safeFile = path + System.currentTimeMillis() + originFileName;
			try {
				mf.transferTo(new File(safeFile));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return "redirect:/";
	}

	@RequestMapping(value = "/goods/boardModify.do", method = RequestMethod.POST)
	public ModelAndView boardModify(MultipartHttpServletRequest mtfRequest) throws IllegalStateException, IOException {
		// 데이터 처리
		// post 방식에서의 한글 처리
		try {
			mtfRequest.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Goods_boardDTO boardDTO = new Goods_boardDTO();
		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		System.out.println("fileList : " + fileList.size());
		String image0 = "null";
		String image1 = "null";
		String image2 = "null";
		if (fileList.size() > 0) {
			String src = mtfRequest.getParameter("src");
			System.out.println("src value : " + src);

			String filePath = "C:\\storage\\";
			int i = 0;
			for (MultipartFile mf : fileList) {
				String originFileName = mf.getOriginalFilename(); // 원본 파일 명
				long fileSize = mf.getSize(); // 파일 사이즈

				System.out.println("originFileName : " + originFileName);
				System.out.println("fileSize : " + fileSize);

				switch (i) {
				case 0:
					image0 = filePath + System.currentTimeMillis() + originFileName;
					mf.transferTo(new File(image0));

					break;
				case 1:
					image1 = filePath + System.currentTimeMillis() + originFileName;
					mf.transferTo(new File(image1));
					break;
				case 2:
					image2 = filePath + System.currentTimeMillis() + originFileName;
					mf.transferTo(new File(image2));
					break;

				default:
					System.out.println("갯수 초과");
					break;
				}
				try {
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();

				}
				i++;
			}
		}
		System.out.println("test1");
		String str_lat = mtfRequest.getParameter("lat");
		double lat = 999;
		if (str_lat != null) {
			lat = Double.parseDouble(str_lat);
		}

		System.out.println("test1");
		String str_lng = mtfRequest.getParameter("lng");
		double lng = 999;
		if (str_lng != null) {
			lng = Double.parseDouble(str_lng);
		}
		System.out.println("test1");
		String user_name = mtfRequest.getParameter("user_name");
		if (user_name == null) {
			user_name = "null";
		}
		System.out.println("test1");
		// String user_photo = request.getParameter("user_photo");
		String subject = mtfRequest.getParameter("subject");
		if (subject == null) {
			subject = "null";
		}
		System.out.println("test1");
		String category_code = mtfRequest.getParameter("category_code");
		if (category_code == null) {
			category_code = "null";
		}
		System.out.println("test1");
		String area = mtfRequest.getParameter("area");
		if (area == null) {
			area = "null";
		}
		System.out.println("test1");
		String content = mtfRequest.getParameter("content");
		if (content == null) {
			content = "null";
		}
		System.out.println("test1");
		String str_price = mtfRequest.getParameter("price");
		int price = 0;
		if (str_price != null) {
			price = Integer.parseInt(str_price);
		}
		System.out.println("test1");
		// System.out.println("manner = " + manner);
		// int reply_percent = Integer.parseInt(request.getParameter("reply_percent"));
		String str_reply_count = mtfRequest.getParameter("reply_count");
		int reply_count = 0;
		if (str_reply_count != null) {
			reply_count = Integer.parseInt(str_reply_count);
		}
		System.out.println("test1");
		// System.out.println("reply_percent = " + reply_percent);
		// int sales_count = Integer.parseInt(request.getParameter("sales_count"));
		String str_interest_count = mtfRequest.getParameter("interest_count");
		int interest_count = 0;
		if (str_interest_count != null) {
			interest_count = Integer.parseInt(str_interest_count);
		}
		System.out.println("test1");
		// System.out.println("sales_count = " + sales_count);
		// int purchase_count =
		// Integer.parseInt(request.getParameter("purchase_count"));
		String str_readcount = mtfRequest.getParameter("readcount");
		int readcount = 0;
		if (str_readcount != null) {
			readcount = Integer.parseInt(str_readcount);
		}

		String str_num = mtfRequest.getParameter("num");
		int num = 0;
		if (str_num != null) {
			num = Integer.parseInt(str_num);
		}
		System.out.println("test1");
		// DB 처리

		boardDTO.setInterest_count(interest_count);
		boardDTO.setArea(area);
		boardDTO.setCategory_code(category_code);
		boardDTO.setContent(content);
		boardDTO.setImage0(image0);
		boardDTO.setImage1(image1);
		boardDTO.setImage2(image2);
		boardDTO.setPrice(price);
		boardDTO.setReadcount(readcount);
		boardDTO.setReply_count(reply_count);
		boardDTO.setSubject(subject);
		boardDTO.setLat(lat);
		boardDTO.setLng(lng);
		boardDTO.setUser_name(user_name);
		boardDTO.setNum(num);
		;
		System.out.println("image0 = " + boardDTO.getImage0());
		System.out.println("image1 = " + boardDTO.getImage1());
		System.out.println("image2 = " + boardDTO.getImage2());
		int su = 0;
		String rt = "";
		try {
			su = service.boardModify(boardDTO);
		} catch (Exception e) {
			rt = "Fail";
			e.printStackTrace();
		}
		System.out.println("su = " + su);

		if (su > 0) {
			rt = "OK";
		} else {
			rt = "Fail";
		}

		JSONObject json = new JSONObject();
		json.put("rt", rt);
		System.out.println(json);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/users/write.jsp");
		modelAndView.addObject("su", su);
		modelAndView.addObject("json", json);
		// modelAndView.addObject("usersDTO", usersDTO);
		System.out.println("su = " + su);

		return modelAndView;
	}

	@RequestMapping(value = "/goods/write.do", method = RequestMethod.POST)
	public ModelAndView write(MultipartHttpServletRequest mtfRequest) throws IllegalStateException, IOException {
		// 데이터 처리
		// post 방식에서의 한글 처리
		try {
			mtfRequest.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Goods_boardDTO boardDTO = new Goods_boardDTO();
		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		System.out.println("fileList : " + fileList.size());
		String image0 = "null";
		String image1 = "null";
		String image2 = "null";
		if (fileList.size() > 0) {
			String src = mtfRequest.getParameter("src");
			System.out.println("src value : " + src);

			String filePath = "C:\\storage\\";
			int i = 0;
			for (MultipartFile mf : fileList) {
				String originFileName = mf.getOriginalFilename(); // 원본 파일 명
				long fileSize = mf.getSize(); // 파일 사이즈

				System.out.println("originFileName : " + originFileName);
				System.out.println("fileSize : " + fileSize);

				switch (i) {
				case 0:
					image0 = filePath + System.currentTimeMillis() + originFileName;
					mf.transferTo(new File(image0));

					break;
				case 1:
					image1 = filePath + System.currentTimeMillis() + originFileName;
					mf.transferTo(new File(image1));
					break;
				case 2:
					image2 = filePath + System.currentTimeMillis() + originFileName;
					mf.transferTo(new File(image2));
					break;

				default:
					System.out.println("갯수 초과");
					break;
				}
				try {
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();

				}
				i++;
			}
		}
		System.out.println("test1");
		String str_lat = mtfRequest.getParameter("lat");
		double lat = 999;
		if (str_lat != null) {
			lat = Double.parseDouble(str_lat);
		}

		System.out.println("test1");
		String str_lng = mtfRequest.getParameter("lng");
		double lng = 999;
		if (str_lng != null) {
			lng = Double.parseDouble(str_lng);
		}
		System.out.println("test1");
		String user_name = mtfRequest.getParameter("user_name");
		if (user_name == null) {
			user_name = "null";
		}
		System.out.println("test1");
		// String user_photo = request.getParameter("user_photo");
		String subject = mtfRequest.getParameter("subject");
		if (subject == null) {
			subject = "null";
		}
		System.out.println("test1");
		String category_code = mtfRequest.getParameter("category_code");
		if (category_code == null) {
			category_code = "null";
		}
		System.out.println("test1");
		String area = mtfRequest.getParameter("area");
		if (area == null) {
			area = "null";
		}
		System.out.println("test1");
		String content = mtfRequest.getParameter("content");
		if (content == null) {
			content = "null";
		}
		System.out.println("test1");
		String str_price = mtfRequest.getParameter("price");
		int price = 0;
		if (str_price != null) {
			price = Integer.parseInt(str_price);
		}
		System.out.println("test1");
		// System.out.println("manner = " + manner);
		// int reply_percent = Integer.parseInt(request.getParameter("reply_percent"));
		String str_reply_count = mtfRequest.getParameter("reply_count");
		int reply_count = 0;
		if (str_reply_count != null) {
			reply_count = Integer.parseInt(str_reply_count);
		}
		System.out.println("test1");
		// System.out.println("reply_percent = " + reply_percent);
		// int sales_count = Integer.parseInt(request.getParameter("sales_count"));
		String str_interest_count = mtfRequest.getParameter("interest_count");
		int interest_count = 0;
		if (str_interest_count != null) {
			interest_count = Integer.parseInt(str_interest_count);
		}
		System.out.println("test1");
		// System.out.println("sales_count = " + sales_count);
		// int purchase_count =
		// Integer.parseInt(request.getParameter("purchase_count"));
		String str_readcount = mtfRequest.getParameter("readcount");
		int readcount = 0;
		if (str_readcount != null) {
			readcount = Integer.parseInt(str_readcount);
		}
		System.out.println("test1");
		// DB 처리

		boardDTO.setInterest_count(interest_count);
		boardDTO.setArea(area);
		boardDTO.setCategory_code(category_code);
		boardDTO.setContent(content);
		boardDTO.setImage0(image0);
		boardDTO.setImage1(image1);
		boardDTO.setImage2(image2);
		boardDTO.setPrice(price);
		boardDTO.setReadcount(readcount);
		boardDTO.setReply_count(reply_count);
		boardDTO.setSubject(subject);
		boardDTO.setLat(lat);
		boardDTO.setLng(lng);
		boardDTO.setUser_name(user_name);
		System.out.println("image0 = " + boardDTO.getImage0());
		System.out.println("image1 = " + boardDTO.getImage1());
		System.out.println("image2 = " + boardDTO.getImage2());
		int su = 0;
		String rt = "";
		try {
			su = service.boardWrite(boardDTO);
		} catch (Exception e) {
			rt = "Fail";
			e.printStackTrace();
		}
		System.out.println("su = " + su);

		if (su > 0) {
			rt = "OK";
		} else {
			rt = "Fail";
		}

		JSONObject json = new JSONObject();
		json.put("rt", rt);
		System.out.println(json);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/users/write.jsp");
		modelAndView.addObject("su", su);
		modelAndView.addObject("json", json);
		// modelAndView.addObject("usersDTO", usersDTO);
		System.out.println("su = " + su);

		return modelAndView;
	}

}
