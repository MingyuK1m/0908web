package testBean;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
public class studentDAO {
 public void insert(studentVO item) throws Exception {
  String number = item.getNumber();
  String name = item.getName();
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/201412357","201412357","123456789");
  PreparedStatement sql = conn.prepareStatement("insert into student values(?,?)");
  sql.setString(1,number);
  sql.setString(2,name);
  sql.executeUpdate();
 }
 
// public List<studentVO> select() throws Exception { //List�� record set�� ��� �Ѱ� �ش�
//	   List<studentVO> rsList = new ArrayList<studentVO>();
//	 
//	 while(rs.next()) {
//	 
//	   rsList.add(item);
//	   } 
//	  return rsList;
//	 }
}

