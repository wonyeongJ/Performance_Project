<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../base/base.jsp"></c:import>
</head>
<body>
    <c:import url="../base/header.jsp"></c:import>
    <section class="container mt-5 mx-auto" style="width: 75%;">
        <h1 class="mb-5 text-center">공연시설 관리</h1>

        <div class="input-group mb-3">
            <form action="./placeList" method="get" id="frm" class="d-flex w-50">
                <input type="hidden" value="${pager.page}" name="page" id="page">
                <select name="kind" id="k" data-kind="${pager.kind}" class="form-select w-25" aria-label="Default select example">
                    <option class="kind" value="name">Name</option>
                    <option class="kind" value="address">Address</option>
                </select>
                <input type="text" name="search" value="${pager.search}" placeholder="검색어를 입력하세요" class="form-control me-2 w-75" aria-label="Search">
                  <div class="col-auto">
                      <button type="submit" class="btn btn-dark">검색</button>
                  </div>
              </form>
          </div>

          <table class="table table-hover">
              <thead>
                  <tr class="table-dark">
                    <th>공연시설명</th>
                    <th>주소</th>
                    <th>전화번호</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${list}" var="d">
                    <tr>
                        <td><a href="/performance/placeDetail?mt10id=${d.mt10id}" class="text-decoration-none text-dark">${d.fcltynm}</a></td>
                        <td>${d.adres}</td>
                        <td>${d.telno}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item ${pager.pre?'':'disabled'}">
                <a class="page-link move" href=# data-num="${pager.startNum-1}" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                  <li class="page-item"><a class="page-link move" href=# data-num="${i}">${i}</a></li>
              </c:forEach>
              <li class="page-item ${pager.next?'':'disabled'}">
                <a class="page-link move" href=# data-num="${pager.lastNum+1}" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>
    
    <div class="d-flex justify-content-end mb-5">
        <button type="button" class="btn btn-dark" id="btn">공연시설 업데이트</button>
    </div>
    
    </section>
    
    <script src="/resources/js/list.js"></script>
    
    <script>
        const btn = document.getElementById('btn');

        btn.addEventListener('click', function(){
            location.href='/performance/placeUpdate';
        })

    </script>
</body>
</html>