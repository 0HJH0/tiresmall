<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<title>order</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"
	integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
	crossorigin="anonymous"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<link rel="stylesheet" href="resources/css/admin/order/admin_order.css">
<link rel="stylesheet" href="resources/css/admin/order/admin_order_modal.css">
</head>
<body>

	<div id="order_modal" class="order_modal hidden"
		style="display: none;">

		<form id="update_modal" action="update.order.do">
			<div class="modal-wrapper">
				<div class="order_modalcontent">
					<div class="order_header">주문 관리</div>
					<div>
						<input type="hidden" name="o_no" id="orderInput_M">

						<table class="modal_table">
							<tr>
								<td class="left_td">주문번호</td>
								<td class="modal_content_td">
								<input name="o_name" id="ordernumber_M" type="hidden"></td>
								<td class="left_td">주문일시</td>
								<td class="modal_content_td">
								<input name="o_orderdate" id="date_M" type="hidden"></td>
							</tr>
							<tr>
								<td class="left_td">주문자명</td>
								<td class="modal_content_td">
								<input name="o_name" id="orderName_M" type="hidden"></td>
								<td class="left_td">연락처</td>
								<td class="modal_content_td">
								<input name="o_phone" id="orderPhoneNum_M" type="hidden"></td>
							</tr>
							<tr>
								<td class="left_td">회원아이디</td>
								<td class="modal_content_td">
								<input name="o_sortation" id="userSortation_M" type="hidden">
								<input name="a_id" id="userID_M" type="hidden"></td>
								<td class="left_td">광고동의</td>
								<td class="modal_content_td">
								</td>
							</tr>
							<tr>
								<td class="left_td">차량번호</td>
								<td class="modal_content_td">
								<input name="o_carnubmer" id="carNumber_M" type="hidden">
								</td>
								<td class="left_td">차종</td>
								<td class="modal_content_td">
								<input name="o_caryear" id="ocy_M" type="hidden">
								<input name="o_carbrand" id="ocb_M" type="hidden">
								<input name="o_carname" id="ocn_M" type="hidden"></td>
							</tr>
							<tr>
								<td class="left_td">주문명</td>
								<td class="modal_content_td">
								<input name="o_ordername" id="orderName_M" type="hidden">
								</td>
								<td class="left_td">배송방법</td>
								<td class="modal_content_td">
								<input name="o_deliverymethod" id="deliveryMethod_M" type="hidden">
								<input name="o_storeshop" id="orderStoreShop_M" type="hidden"></td>
							</tr>
							<tr>
								<td class="left_td_long">주문자메모</td>
								<td class="modal_content_td_long">
								<input name="o_request" id="orederReq_M" type="hidden">
								</td>
							</tr>
							<tr>
								<td class="left_td_tire">주문상품 1종</td>
								<td class="modal_content_td_tire">
									<table>
										<tr>
											<th>종류</th>
											<th>브랜드명</th>
											<th>제품명</th>
											<th>스펙</th>
											<th>주문수량</th>
										</tr>
										<tr>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
										</tr>
									</table>
								<input name="ti_id" id="tireNo_M" type="hidden">
								<input name="ti_name" id="tireName_M" type="hidden">
								<input name="ti_hg" id="tireHg_M" type="hidden">
								<input name="ti_speed" id="tireSpeed_M" type="hidden">
								<input name="ti_width" id="tireWidth_M" type="hidden">
								<input name="ti_ratio" id="tireRatio_M" type="hidden">
								<input name="ti_inch" id="tireInch_M" type="hidden">
								</td>
							</tr>
							<tr>
								<td class="left_td_long">배송지</td>
								<td class="modal_content_td_long">
								<input name="o_deliverymethod" id="deliveryMethod_M" type="hidden">
								</td>
							</tr>
							<tr>
								<td class="left_td">결제방법</td>
								<td class="modal_content_td">
								<input name="o_paymethod" id="orderPayMethod_M" type="hidden">
								</td>
								<td class="left_td">주문금액</td>
								<td class="modal_content_td">
								<input name="o_price" id="storeShop_M" type="hidden"></td>
							</tr>
							<tr>
								<td class="left_td_long">방문예약일</td>
								<td class="modal_content_td_long">
								<input name="o_tireinstalldate" id="tireInstallDate_M" type="hidden">
								</td>
								<td>직영점 방문 예약일입니다. 상품을 준비하고 주문자에게 해피콜해주세요.</td>
							</tr>
							<tr>
								<td class="left_td_long">주문진행</td>
								<td class="modal_content_td_long">
								<input name="o_step" id="orderStep_M" type="hidden">
								<label><input type="radio" name="o_step" value="결제대기">결제대기</label>
								<label><input type="radio" name="o_step" value="결제완료">결제완료</label>
								<label><input type="radio" name="o_step" value="배송준비중">배송준비중</label>
								<label><input type="radio" name="o_step" value="배송중">배송중</label>
								<label><input type="radio" name="o_step" value="배송완료">배송완료</label>
								<label><input type="radio" name="o_step" value="주문취소">주문취소</label>
								</td>
							</tr>
							<tr>
								<td class="left_td">배송사명</td>
								<td class="modal_content_td">
								<input>
								</td>
								<td class="left_td">송장번호</td>
								<td class="modal_content_td">
								<input>
								</td>
							</tr>
						</table>

					</div>
					<div class="modalBtn">
						<button class="modalBtn1">저장</button>
						<button class="modalBtn2" id="cancleModal" type="button">닫기</button>
						<button class="modalBtn3" id="deleteModal" type="button">삭제</button>
					</div>
				</div>
			</div>
		</form>
	</div>

	<div class="container">
		<div class="DashBoard">
			<form class="order_form" action="search.order.do">
				<div>
					<div class="input_box1">
						<div class="no-drag">기간검색</div>
						<input type="text" id="datepicker" placeholder="시작" autocomplete="off" name="dateSearch1">
						<input type="text" id="datepicker1" placeholder="종료" autocomplete="off" name="dateSearch2">
					</div>
					<div class="input_box2">
						<div class="no-drag">주문자명</div>
						<input name="nameInput" id="o_name">
					</div>
					<div class="input_box3">
						<div class="no-drag">주문자전화</div>
						<input name="phoneInput" placeholder="010 제외" id="o_phone">
					</div>
					<div class="input_box4">
						<div class="no-drag">주문번호</div>
						<input name="orderNumberInput" id="o_ordernumber">
					</div>
					<div class="button_box">
						<button id="searchBtn" class="orderBtn">검색</button>
					</div>
				</div>


				<div class="DashBoard order_content">
					<table class="order_content">
						<tr>
							<th class="th_head">No</th>
							<th class="th_head">회원구분</th>
							<th class="th_head">주문번호</th>
							<th class="th_head">주문일시</th>
							<th class="th_head">주문자명</th>
							<th class="th_head">주문자전화</th>
							<th class="th_head">주문명</th>
							<th class="th_head">총금액</th>
							<th class="th_head">결제방법</th>
							<th class="th_head">배송방법</th>
							<th class="th_head">STEP</th>
						</tr>
						<c:if test="${empty orders}">
							<tr>
								<td colspan="11">해당 목록이없습니다</td>
							</tr>
						</c:if>
						<c:forEach var="o" items="${orders }" varStatus="status">
								<tr class="order_modal_go">
									<td class="td_c1">${status.count }
										<input type="hidden" value="${o.o_no }">
									</td>
									<td class="td_c2">${o.o_sortation }</td>
									<td class="td_c3">${o.o_ordernumber }</td>
									<td class="td_c4"><fmt:formatDate
											pattern="yyyy-MM-dd HH:mm:ss" value="${o.o_orderdate }" /></td>
									<td class="td_c5">${o.o_name }</td>
									<td class="td_c6">0${o.o_phone }</td>
									<td class="td_c7">${o.o_ordername }</td>
									<td class="td_c8">${o.o_price }</td>
									<td class="td_c9">${o.o_paymethod }</td>
									<td class="td_c10">${o.o_deliverymethod }</td>
									<td class="td_c11">
											<input type="hidden" value="${o.o_step }">	
											<c:choose>
												<c:when test="${o.o_step eq '결제완료'}">
												결제완료
												</c:when>
												<c:when test="${o.o_step eq '결제대기'}">
												결제대기
												</c:when>
												<c:when test="${o.o_step eq '주문취소'}">
												주문취소
												</c:when>
											</c:choose>
									</td>
								</tr>
						</c:forEach>
					</table>
				</div>
			</form>
		</div>
	</div>
	<div id="paging-box">
		<c:if test="${curPage != 1 }">
			<a style="color: black;" href="order.page.change?p=${curPage - 1 }">이전</a>
		</c:if>

		<c:forEach var="page" begin="1" end="${pageCount }">
			<c:choose>
					<c:when test="${page eq param.p or (curPage == 1 and curPage == page)}}">
						<a style="color:white; background-color: #333;" href="order.page.change?p=${page }">${page } </a>
					</c:when>
					<c:otherwise>
						<a style="color: black;" href="order.page.change?p=${page }">${page } </a>
					</c:otherwise>
				</c:choose>
		</c:forEach>
		<c:if test="${curPage != pageCount }">
			<a style="color: black;" href="order.page.change?p=${curPage + 1 }">다음</a>
		</c:if>
	</div>
	<script src="resources/js/admin/order/admin_order.js"></script>

</body>
</html>