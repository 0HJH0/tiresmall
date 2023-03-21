<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="board_faq_column">
		<div><a href="board.faq.read.search?f_sortation=">전체</a></div>
		<div><a href="board.faq.read.search?f_sortation=주문배송">주문/배송</a></div>
		<div><a href="board.faq.read.search?f_sortation=상품">상품</a></div>
		<div><a href="board.faq.read.search?f_sortation=장착">장착</a></div>
		<div><a href="board.faq.read.search?f_sortation=반품교환취소">반품/교환/취소</a></div>
		<div><a href="board.faq.read.search?f_sortation=기타">기타</a></div>
	</div>
	
	<div>
		<div>
			<c:if test="${!empty faqSearch }">
				"${faqSearch }"로 검색한 결과: ${faqCount }건
			</c:if>
		</div>
		
		<div>
			<form action="board.faq.read.search">
				<select name="faqSearchSelection">
				    <option value="1" <c:if test="${faqSearchSelectionAfterSearch == 1 }">selected="selected"</c:if>>전체</option>
				    <option value="2" <c:if test="${faqSearchSelectionAfterSearch == 2 }">selected="selected"</c:if>>제목</option>
				    <option value="3" <c:if test="${faqSearchSelectionAfterSearch == 3 }">selected="selected"</c:if>>내용</option>
				</select>
				<input name="faqSearch" value=${faqSearchAfterSearch }>
				<button>조회</button>
			</form>
		</div>
	</div>
	
	<c:choose>
		<c:when test="${empty faqs }">
			<div class="board_faq_none">
				<div>
					조회된 데이터가 없습니다.
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="board_faq_listContainer">
				<c:forEach var="f" items="${faqs }">
					<div class="board_faq_list_top">
						<div>
							Q
						</div>	
						<div>
							${f.f_title }
						</div>
					</div>
					<div class="board_faq_list_bottom">
						<div>
							A
						</div>
						<div>
							${f.f_txt }
						</div>
					</div>
				</c:forEach>
			</div>
		</c:otherwise>
	</c:choose>
	
	<div class="board_faq_buttons">
		<div></div>
		
		<c:choose>
			<c:when test="${empty faqs }">
				<div></div>
			</c:when>
			<c:otherwise>
				<div class="board_faq_pagingButtons">
					<c:choose>
						<c:when test="${pageNumber != 1 }">
							<div>
								<a href="board.faq.paging?pn=1"><i class="fa-solid fa-angles-left"></i></a>
							</div>
							<div>
								<a href="board.faq.paging?pn=${pageNumber - 1 }"><i class="fa-solid fa-chevron-left"></i></a>
							</div>
						</c:when>
						<c:otherwise>
							<div>
								<i class="fa-solid fa-angles-left" style="color:lightgray"></i>
							</div>
							<div>
								<i class="fa-solid fa-chevron-left" style="color:lightgray"></i>
							</div>
						</c:otherwise>
					</c:choose>
					
					<%--
					<c:forEach var="page" begin="${begin }" end="${end }">
					 --%>
					<%--
					 --%>
					<c:forEach var="page" begin="1" end="${pageCount }">
						<c:choose>
							<c:when test="${(page == param.pn) or (pageNumber == 1 and pageNumber == page) }">
								<div class="board_faq_pagingButtons_selected">
									<a href="board.faq.paging?pn=${page }" style="color: #fff;">${page }</a>
								</div>
							</c:when>
							<c:otherwise>
								<div>
									<a href="board.faq.paging?pn=${page }">${page }</a>
								</div>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<c:choose>
						<c:when test="${pageNumber != pageCount }">
							<div>
								<a href="board.faq.paging?pn=${pageNumber + 1 }"><i class="fa-solid fa-chevron-right"></i></a>
							</div>
							<div>
								<a href="board.faq.paging?pn=${pageCount }"><i class="fa-solid fa-angles-right"></i></a>
							</div>
						</c:when>
						<c:otherwise>
							<div>
								<i class="fa-solid fa-chevron-right" style="color:lightgray"></i>
							</div>
							<div>
								<i class="fa-solid fa-angles-right" style="color:lightgray"></i>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
			</c:otherwise>
		</c:choose>
		
		<div></div>
	</div>
</body>
</html>