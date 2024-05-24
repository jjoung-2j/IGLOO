package product.model.yj;
import java.sql.SQLException;
import java.util.List;
import product.domain.ProductVO;
import product.domain.TasteVO;
public interface ProductDAO {
	
	// == 상품에 대한 정보 알아오는 메소드 == //
	List<ProductVO> getproductList() throws SQLException;
	
	// == 맛 목록 조회해오기 == //
	List<TasteVO> selectTasteList() throws SQLException;

	
	
}