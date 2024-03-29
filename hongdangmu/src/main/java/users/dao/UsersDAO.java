package users.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import users.bean.UsersDTO;

@Repository
public class UsersDAO {
	@Autowired
	private SqlSessionTemplate sessionTemplate;

	// 데이터 저장
	public int write(UsersDTO usersDTO) {
		return sessionTemplate.insert("mybatis.usersMapper.write", usersDTO);
	}

	// 로그인 검사
	public String login(int user_code) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("user_code", user_code);
		return sessionTemplate.selectOne("mybatis.usersMapper.login", map);
	}

	// ID 데이터 검색 : 존재 확인
	public String isExistId(int user_code) {

		return sessionTemplate.selectOne("mybatis.usersMapper.isExistId", user_code);
	}

	// ID 데이터 검색 : 1명 데이터
	public UsersDTO selectOne(int user_code) {

		return sessionTemplate.selectOne("mybatis.usersMapper.selectOne", user_code);
	}

	// 데이터 수정
	public int modify(UsersDTO usersDTO) {

		return sessionTemplate.update("mybatis.usersMapper.modify", usersDTO);
	}

	// 데이터 삭제
	public int delete(int user_code) {

		return sessionTemplate.delete("mybatis.usersMapper.delete", user_code);
	}

	// 전체 회원 목록 검색 페이징
	public List<UsersDTO> selectList(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		return sessionTemplate.selectList("mybatis.usersMapper.selectList", map);
	}
	
	// 전체 회원 목록 검색
		public List<UsersDTO> list() {
			return sessionTemplate.selectList("mybatis.usersMapper.list");
		}

	// 총회원수 구하기
	public int getTotalMember() {

		return sessionTemplate.selectOne("mybatis.usersMapper.getTotalMember");
	}
}
