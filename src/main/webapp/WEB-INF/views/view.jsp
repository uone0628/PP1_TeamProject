<%@ page import="com.example.BoardVO" %>
\<%@ page language="java" contentType="text/html; charset=UTF-8"
          pageEncoding="UTF-8"  isELIgnored="false"%>

<%
    BoardVO u = (BoardVO) request.getAttribute("u");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>

    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='../deleteOK/' + id;
        }
    </script>
</head>
<body>


<h1>상세페이지</h1>

<p>Title : <%=u.getTitle() %></p>
<p>Writer : <%=u.getWriter() %></p>
<p>Content : <%=u.getContent() %></p>
<p>Category : <%=u.getCategory() %></p>
<p>등록일 : <%=u.getRegdate() %> 수정일 : <%=u.getModifydate()%></p>


<a href="../editform/${u.getSeq()}">Edit</a>
<a href="javascript:delete_ok('${u.getSeq()}')">Delete</a><br>
<a href="../list">리스트로 돌아가기</a>

</body>
</html>