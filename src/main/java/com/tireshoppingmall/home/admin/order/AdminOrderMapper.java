package com.tireshoppingmall.home.admin.order;

import java.util.List;

public interface AdminOrderMapper {

	int getOrderCount(OrderSearchDTO orderSearch);

	List<OrderDTO> getOrder(OrderSearchDTO orderSearch);

	int updateOrder(OrderUpdateDTO ouDTO);

	int deleteOrder(String o_no);

}
