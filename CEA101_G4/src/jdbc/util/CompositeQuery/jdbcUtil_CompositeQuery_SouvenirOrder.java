/*
 *  1. 萬用複合查詢-可由客戶端隨意增減任何想查詢的欄位
 *  2. 為了避免影響效能:
 *        所以動態產生萬用SQL的部份,本範例無意採用MetaData的方式,也只針對個別的Table自行視需要而個別製作之
 * */


package jdbc.util.CompositeQuery;

import java.util.*;

public class jdbcUtil_CompositeQuery_SouvenirOrder {

	public static String get_aCondition_For_Oracle(String columnName, String value) {

		String aCondition = null;

		if ("sou_shipment_fee".equals(columnName) ||"sou_shipping_method".equals(columnName) || "sou_order_status".equals(columnName) || "sou_payment_status".equals(columnName)|| "sou_shipment_status".equals(columnName))
			aCondition = columnName + "=" + value;
		else if ("sou_order_id".equals(columnName)||"emp_id".equals(columnName) ||"mem_id".equals(columnName) ||"sou_receiver_name".equals(columnName) ||"sou_receiver_address".equals(columnName) ||"sou_receiver_phone".equals(columnName) ||"sou_order_remarks".equals(columnName) )
			aCondition = columnName + " like '%" + value + "%'";
		else if ("sou_order_date".equals(columnName))                          // 用於Oracle的date
			aCondition = "to_char(" + columnName + ",'yyyy-mm-dd')='" + value + "'";
		return aCondition + " ";
	}

	public static String get_WhereCondition(Map<String, String[]> map) {
		Set<String> keys = map.keySet();
		StringBuffer whereCondition = new StringBuffer();
		int count = 0;
		for (String key : keys) {
			String value = map.get(key)[0];
			if (value != null && value.trim().length() != 0	&& !"action".equals(key)) {
				count++;
				String aCondition = get_aCondition_For_Oracle(key, value.trim());

				if (count == 1)
					whereCondition.append(" where " + aCondition);
				else
					whereCondition.append(" and " + aCondition);

				System.out.println("有送出查詢資料的欄位數count =" + count);
			}
		}
		
		return whereCondition.toString();
	}

	public static void main(String argv[]) {

		// 配合 req.getParameterMap()方法 回傳 java.util.Map<java.lang.String,java.lang.String[]> 之測試
		Map<String, String[]> map = new TreeMap<String, String[]>();
		map.put("mem_id", new String[] { "MEM001" });
		map.put("sou_shipping_method", new String[] { "0" });
		map.put("sou_order_status", new String[] { "0" });
		map.put("sou_payment_status", new String[] { "0" });
		

		String finalSQL = "select * from SOUVENIR_ORDER "
				          + jdbcUtil_CompositeQuery_SouvenirOrder.get_WhereCondition(map)
				          + "order by sou_order_id";
		System.out.println("●●finalSQL= " + finalSQL);

	}
}
