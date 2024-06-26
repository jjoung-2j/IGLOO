package product.model.jy;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import product.domain.TasteVO;


public interface MenuDAO {

	//아이스크림 맛의 전체개수를 알아오기
	int totalCount() throws Exception;

	


	//더보기 방식으로 상품정보 8개씩 잘라서 조회해오기 //이름순, 인기순 정렬      
	//List<TasteVO> selectIceAll(Map<String, String> paraMap) throws Exception;



	//정보
	// List<TasteVO> icejsonList(Map<String, String> paraMap) throws Exception;




	List<TasteVO> select_Member_paging(Map<String, String> paraMap) throws SQLException;




	int getTotalMemberCount(Map<String, String> paraMap) throws SQLException;




	int getTotalPage(Map<String, String> paraMap) throws SQLException;



	// 가나다순 메뉴
	List<TasteVO> getMenuByName(Map<String, String> paraMap) throws SQLException;



	// 인기순 메뉴
	List<TasteVO> getMenuByOrder(Map<String, String> paraMap) throws SQLException;





	



}
