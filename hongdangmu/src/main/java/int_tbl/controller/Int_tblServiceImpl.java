package int_tbl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import int_tbl.bean.Int_tblDTO;
import int_tbl.dao.Int_tblDAO;
import users.bean.UsersDTO;

@Service
public class Int_tblServiceImpl implements Int_tblService{
	@Autowired
	private Int_tblDAO int_tblDAO;

	public int write(Int_tblDTO int_tblDTO) {
		// TODO Auto-generated method stub
		return int_tblDAO.write(int_tblDTO);
	}

	public int delete(String user_code, String goods_num) {
		// TODO Auto-generated method stub
		return int_tblDAO.delete(user_code, goods_num);
	}

	public List<Int_tblDTO> listG(String user_code) {
		// TODO Auto-generated method stub
		return int_tblDAO.listG(user_code);
	}

	public List<Int_tblDTO> listU(String goods_num) {
		// TODO Auto-generated method stub
		return int_tblDAO.listU(goods_num);
	}

	public int getTotalGoods(String user_code) {
		// TODO Auto-generated method stub
		return int_tblDAO.getTotalGoods(user_code);
	}

	public int getTotalUser(String goods_num) {
		// TODO Auto-generated method stub
		return int_tblDAO.getTotalUser(goods_num);
	}
	
	
}
