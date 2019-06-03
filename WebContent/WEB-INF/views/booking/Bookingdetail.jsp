<%@page import="sh.model.ShMemberDto"%>
<%@page import="sh.model.ShBookingDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

   <style type="text/css">
   table.type01 {
       border-collapse: collapse;
       text-align: left;
       line-height: 1.5;
       margin : 20px 10px;
   }
   table.type01 th {
       /* width: 150px; */
       padding: 10px;
       font-weight: bold;
       vertical-align: top;
       border: 1px solid #ccc;
       text-align: center;
   }
   table.type01 td {
       /* width: 350px; */
       padding: 10px;
       vertical-align: top;
       border: 1px solid #ccc;
   }
   </style>
   
</head>
<body>


<%
Object ologin = session.getAttribute("login");
ShMemberDto mem = (ShMemberDto)ologin;
%>

<%

ShBookingDto bbbs = (ShBookingDto)request.getAttribute("booking");
/* // readcount 갱신
dao.readcount(seq); */
%>

<h1>상세 글 보기</h1>
<div align="center">
<input type="hidden" name="seq" value="${bbbs.seq }">
   <table border="1" class="type01">
      <col width="150"><col width="600">
      
      <tr>
         <th>아이디</th>
         <td><%=bbbs.getId() %></td>
      </tr>
      <tr>
         <th>이름</th>
         <td><%=bbbs.getName() %></td>
      </tr>
      <tr>
         <th>전화번호</th>
         <td><%=bbbs.getPnum() %></td>
      </tr>
      <tr>
         <th>객실이름</th>
         <td><%=bbbs.getRoomname() %></td>
      </tr>
      <tr>
      	<th>인원수</th>
      	<td><%=bbbs.getCountnum() %></td>
      </tr>
      <tr>
         <th>입실일</th>
         <td><%=bbbs.getSdate() %></td>
      </tr>
      <tr>
         <th>퇴실일</th>
         <td><%=bbbs.getEdate() %></td>
      </tr>
      <tr>
         <th>가격</th>
         <td><%=bbbs.getPrice() %></td>
      </tr>
      <tr>
         <th>요구사항</th>
         <td align="center">
            <textarea rows="10" cols="90" readonly="readonly"><%=bbbs.getContent() %></textarea>
         </td>
      </tr>
      <tr>
         <th>예약현황</th>
         <td><%=bbbs.getChecknum() %></td>
      </tr>
   </table>




</div>

<a href="Bookinglist.do">글목록</a>
<button type="button" id="_bookBtn" class="btn btn-default btn-block" onclick="location.href='BookSucess.do?seq='+ <%=bbbs.getSeq() %>">승인</button>


</body>
</html>