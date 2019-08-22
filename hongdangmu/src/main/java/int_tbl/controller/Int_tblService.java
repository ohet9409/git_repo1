package int_tbl.controller;

import java.util.List;

import int_tbl.bean.Int_tblDTO;
import users.bean.UsersDTO;

public interface Int_tblService {
	public int write(Int_tblDTO int_tblDTO);
	public int delete(String user_code, String goods_num);
	public List<Int_tblDTO> listG(String user_code);
	public List<Int_tblDTO> listU(String goods_num);
	public int getTotalGoods(String user_code);
	public int getTotalUser(String goods_num);
}
