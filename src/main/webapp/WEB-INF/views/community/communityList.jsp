<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:setBundle basename="i18n/board"/>
<%@ taglib prefix="jk" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/include/staticFiles.jsp" />
<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<!-- Nucleo Icons -->
<link href="<c:url value="/static/css/nucleo-icons.css"/>" rel="stylesheet" />
<link href="<c:url value="/static/css/nucleo-svg.css"/>" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
<!-- Material Icons -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
<!-- CSS Files -->
<link id="pagestyle" href="<c:url value="/static/css/material-dashboard.css"/>" rel='stylesheet' />

  
<body>
<jsp:include page="/WEB-INF/views/include/header.jsp" />


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
              <div class="container">
      				<div class="container-fluid py-4">
				<div class="row">
					<div class="col-12">
						<div class="card my-4">
							<div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
								<div class="bg-gradient-secondary shadow-primary border-radius-lg pt-4 pb-3">
									<h6 class="text-white text-capitalize ps-3">커뮤니티 게시판</h6>
								</div>
							</div>
							<div class="card-body px-0 pb-2">
								<div class="table-responsive p-0">
									<table class="table align-items-center mb-0">
										<thead>
											<tr>
												<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">글번호</th>
												<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성자</th>
												<th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">게시글 제목</th>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">조회수</th>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성일자</th>
												<th class="text-secondary opacity-7"></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="community" items="${communityList}">
												<tr>
													<td>
														<p class="text-xs font-weight-bold mb-0">${community.communityBoardId}</p>
													</td>
													<td>
														<div class="d-flex px-2 py-1">
															<div>
																<!-- <img src="../assets/img/team-2.jpg" class="avatar avatar-sm me-3 border-radius-lg" alt="user1"> -->
															</div>
															<div class="d-flex flex-column justify-content-center">
																<h6 class="mb-0 text-sm">${community.usersId}</h6>
																<p class="text-xs text-secondary mb-0">${community.communityEmail}</p>
															</div>
														</div>
													</td>
													<td>
														<p class="text-xs text-secondary mb-0">${community.communityTitle}</p>
													</td>
													<td class="align-middle text-center text-sm">
														<span class="badge badge-sm bg-gradient-success">${community.communityReadCount}</span>
													</td>
													<td class="align-middle text-center">
														<span class="text-secondary text-xs font-weight-bold">${community.communityWriteDate}</span>
													</td>
													<td class="align-middle">
														<a href="javascript:;" class="text-secondary font-weight-bold text-xs" data-toggle="tooltip" data-original-title="Edit user"> Edit </a>
													</td>
												</tr>
											</c:forEach>

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
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