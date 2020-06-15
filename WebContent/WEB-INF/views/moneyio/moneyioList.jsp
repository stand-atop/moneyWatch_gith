<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	function filter(){
		$.ajax({
			url : "/moneyWatch/iolist.mw",
			data : {id: 'minmingk1', filter: $("#filter").val()},
			success : function(data){
				$("#iolist").html(data);
			}
		});
		
	}
</script>

<center>
<!-- 종합 -->
<div>	
	<table border = "1" width="300">
		<tr>
			<td>
				<select id="filter" name="filter" onChange="filter()">
					<option value="all" selected>전체</option>
					<option value="inMoney">수입</option>
					<option value="outMoney">지출</option>					
				</select>			
			</td>
			<td>
				마지막 업데이트 : 2020.##.##
			</td>			
		</tr>
		<tr>
			<td colspan=2>
				전체 남은 잔액 : ${moneyioList[0].io_remain} 원
			</td>
		</tr>
	</table>
<br />
</div>


<!-- 내역 출력 -->
<div id="ioList">
	<table border = "1" width="500">
		<c:forEach var="ioList" items="${moneyioList}">
			<tr>
				<td align = center>
					${ioList.io_reg_date}
				</td>
				<td align = right>
					거래 금액
				</td>
				<td align = right>
					${ioList.io_price} 원
				</td>
			</tr>
			<tr>
				<td align = center>
					${ioList.io_detail}
				</td>
				<td align = right>
					남은 잔액
				</td>
				<td align = right>
					${ioList.io_remain} 원
				</td>
			</tr>
		</c:forEach>
	</table>
</div>

</center>






<%-- 
<table id="spreadsheet">
<c:forEach var="ioList" items="${moneyioList}"  varStatus="varStatus">
<tr>
<td>${ioList.io_num}</td>
<td>${ioList.io_category}</td>
<td>${ioList.io_detail}</td>
<td>${ioList.io_reg_date}</td>
<td>${ioList.io_price}</td>
<td>${ioList.io_remain}</td>
<td>${ioList.io_bank}</td>
<td>${ioList.io_account}</td>
<td>${ioList.id}</td>
<td>${ioList.io_n_div}</td>
<td>${ioList.io_set}</td>	
</tr>

</c:forEach>
</table> --%>

<!-- 
	1) 먼저 날짜를 출력(tr,td)
	2) 다른 날짜로 넘어갈 때까지 이전 인덱스의 날짜값과 현재 인덱스의 날짜값 if비교하여
		같은 날짜일 경우에는 1)의 날짜(tr,td)를 출력시키지 않도록 한다.
		(날짜가 다를 경우에만 출력)
	    -->








