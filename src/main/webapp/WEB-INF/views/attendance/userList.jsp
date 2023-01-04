<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/include/staticFiles.jsp" />
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp" />

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
		var calendar = new FullCalendar.Calendar(calendarEl, {
			headerToolbar : {
	            left : 'prev,next today',
	            center : 'title',
	            right : 'dayGridMonth,listWeek'
	         },
			initialView: 'dayGridMonth',
			events: [
				<c:forEach items = "${attendanceList}" var="list">
					{
						title : '${list.attTime} [${list.status}]',
						start : '${list.attDate}'
					},
					<c:if test="${list.leaveTime == null}">
					
					</c:if>
					<c:if test="${list.leaveTime != null}">
						{
							title : '${list.leaveTime}',
							start : '${list.attDate}'
						},
					</c:if>
				</c:forEach>
			]
		});
		calendar.render();
	});
</script>
	<div class="main">
	    <div class="wrapper">
	        <div class="section">
	            <div class="top_navbar">
	                <div class="hamburger">
	                    <a href="#">
	                        <i class="fa-solid fa-bars"></i>
	                    </a>
	                </div>
	            </div>
	     		<div class="mainview d-flex">
	     		</div>
	     			<div class="container-fluid" style="background-color:white; margin:60px; width:92%; padding:50px;">
	     				<div>
	     					<h1>나의 출석</h1>
	     				<div id="calendar">
	     				</div>
	     			</div>
	     		</div>
	     	</div>
	    	<jsp:include page="/WEB-INF/views/include/sidebar.jsp" />       
	    </div>
	</div>
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
</body>
</html>
