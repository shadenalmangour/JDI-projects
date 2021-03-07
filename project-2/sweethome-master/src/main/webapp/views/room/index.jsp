<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />
<!-- content -->

<div class="container-sm flex flex-col justify-center mt-10">

 
  <input class="form-control" id="searchBar" type="text" placeholder="Search..">
  <br>
  <div class="min-vh-100">
<table class="table table-hover ">
<thead class="bg-blue-100">
 <tr>
  <th>Room Name</th>
  <th>Room Image</th>
  <th>Room Area</th>
  <th>House Number</th>
  <th>House Image</th>
  <% if(session.getAttribute("user") != null) {%>
	<th>Action</th>
  <% } %>
 </tr>
 </thead>
 <tbody id="myRows">
 <c:forEach items="${rooms}" var="room">
 <c:if test="${room.house.user.id == user.id}" >
  <tr>
   <td>${room.roomName}</td>
   <td> <img  src="${room.roomImage}" width="75px" height="75px"/></td>
   <td>${room.roomArea} <b>m2</b></td>
   <td>${room.house.houseNumber}</td>
    <td><a href=""> <img  src="${room.house.houseImage}" width="75px" height="75px"/></a></td>

		<td>
		 <% if(session.getAttribute("user") != null) {%>
         <% if(! session.getAttribute("userRole").equals("rentee")){ %> 

        <div class="flex flex-row w-10 justify-evenly " >
		<a href="${appName}room/edit?id=${room.id}"> <img  class=" mr-10 transform hover:scale-110 motion-reduce:transform-none" width="20" height="20" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDQwMS41MjI4OSA0MDEiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiPjxnPjxsaW5lYXJHcmFkaWVudCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJhIj48c3RvcCBzdG9wLW9wYWNpdHk9IjEiIHN0b3AtY29sb3I9IiNmMTY1ODIiIG9mZnNldD0iMCI+PC9zdG9wPjxzdG9wIHN0b3Atb3BhY2l0eT0iMSIgc3RvcC1jb2xvcj0iIzNlOTVmZiIgb2Zmc2V0PSIwLjk5NjEzODk5NjEzODk5NjEiPjwvc3RvcD48c3RvcCBzdG9wLW9wYWNpdHk9IjEiIHN0b3AtY29sb3I9IiMwMGFjZWEiIG9mZnNldD0iMSI+PC9zdG9wPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgaWQ9ImIiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMSAwIDAgLTEgLTU1LjIyOCA0NTguMDEyMzM1KSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIyNDUuNTIzIiB4Mj0iMjQ1LjUyMyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhsaW5rOmhyZWY9IiNhIiB5MT0iNDYwIiB5Mj0iMzIiPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgaWQ9ImMiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMSAwIDAgLTEgLTU1LjIyOCA0NTguMDEyMzM1KSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIzMTAuMDg0IiB4Mj0iMzEwLjA4NCIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhsaW5rOmhyZWY9IiNhIiB5MT0iNDYwIiB5Mj0iMzIiPjwvbGluZWFyR3JhZGllbnQ+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMzcwLjU4OTg0NCAyNTAuOTcyNjU2Yy01LjUyMzQzOCAwLTEwIDQuNDc2NTYzLTEwIDEwdjg4Ljc4OTA2M2MtLjAxOTUzMiAxNi41NjI1LTEzLjQzNzUgMjkuOTg0Mzc1LTMwIDMwaC0yODAuNTg5ODQ0Yy0xNi41NjI1LS4wMTU2MjUtMjkuOTgwNDY5LTEzLjQzNzUtMzAtMzB2LTI2MC41ODk4NDRjLjAxOTUzMS0xNi41NTg1OTQgMTMuNDM3NS0yOS45ODA0NjkgMzAtMzBoODguNzg5MDYyYzUuNTIzNDM4IDAgMTAtNC40NzY1NjMgMTAtMTAgMC01LjUxOTUzMS00LjQ3NjU2Mi0xMC0xMC0xMGgtODguNzg5MDYyYy0yNy42MDE1NjIuMDMxMjUtNDkuOTY4NzUgMjIuMzk4NDM3LTUwIDUwdjI2MC41OTM3NWMuMDMxMjUgMjcuNjAxNTYzIDIyLjM5ODQzOCA0OS45Njg3NSA1MCA1MGgyODAuNTg5ODQ0YzI3LjYwMTU2Mi0uMDMxMjUgNDkuOTY4NzUtMjIuMzk4NDM3IDUwLTUwdi04OC43OTI5NjljMC01LjUyMzQzNy00LjQ3NjU2My0xMC0xMC0xMHptMCAwIiBmaWxsPSJ1cmwoI2IpIiBkYXRhLW9yaWdpbmFsPSJ1cmwoI2IpIiBzdHlsZT0iIj48L3BhdGg+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMzc2LjYyODkwNiAxMy40NDE0MDZjLTE3LjU3NDIxOC0xNy41NzQyMTgtNDYuMDY2NDA2LTE3LjU3NDIxOC02My42NDA2MjUgMGwtMTc4LjQwNjI1IDE3OC40MDYyNWMtMS4yMjI2NTYgMS4yMjI2NTYtMi4xMDU0NjkgMi43MzgyODItMi41NjY0MDYgNC40MDIzNDRsLTIzLjQ2MDkzNyA4NC42OTkyMTljLS45NjQ4NDQgMy40NzI2NTYuMDE1NjI0IDcuMTkxNDA2IDIuNTYyNSA5Ljc0MjE4NyAyLjU1MDc4MSAyLjU0Njg3NSA2LjI2OTUzMSAzLjUyNzM0NCA5Ljc0MjE4NyAyLjU2NjQwNmw4NC42OTkyMTktMjMuNDY0ODQzYzEuNjY0MDYyLS40NjA5MzggMy4xNzk2ODctMS4zNDM3NSA0LjQwMjM0NC0yLjU2NjQwN2wxNzguNDAyMzQzLTE3OC40MTAxNTZjMTcuNTQ2ODc1LTE3LjU4NTkzNyAxNy41NDY4NzUtNDYuMDU0Njg3IDAtNjMuNjQwNjI1em0tMjIwLjI1NzgxMiAxODQuOTA2MjUgMTQ2LjAxMTcxOC0xNDYuMDE1NjI1IDQ3LjA4OTg0NCA0Ny4wODk4NDQtMTQ2LjAxNTYyNSAxNDYuMDE1NjI1em0tOS40MDYyNSAxOC44NzUgMzcuNjIxMDk0IDM3LjYyNS01Mi4wMzkwNjMgMTQuNDE3OTY5em0yMjcuMjU3ODEyLTE0Mi41NDY4NzUtMTAuNjA1NDY4IDEwLjYwNTQ2OS00Ny4wOTM3NS00Ny4wOTM3NSAxMC42MDkzNzQtMTAuNjA1NDY5YzkuNzYxNzE5LTkuNzYxNzE5IDI1LjU4OTg0NC05Ljc2MTcxOSAzNS4zNTE1NjMgMGwxMS43MzgyODEgMTEuNzM0Mzc1YzkuNzQ2MDk0IDkuNzczNDM4IDkuNzQ2MDk0IDI1LjU4OTg0NCAwIDM1LjM1OTM3NXptMCAwIiBmaWxsPSJ1cmwoI2MpIiBkYXRhLW9yaWdpbmFsPSJ1cmwoI2MpIiBzdHlsZT0iIj48L3BhdGg+PC9nPjwvc3ZnPg==" /></a> 
		 <a href="${appName}room/delete?id=${room.id}"> <img class=" mr-10 transform hover:scale-110 motion-reduce:transform-none" width="20" height="20" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiIGNsYXNzPSIiPjxnPjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGc+PHBhdGggZD0ibTMzNy42NDIgMTk2LjgzNS0xOC42NTYgMjIxLjEzYy0uODM0IDkuOSAxNC4xMDQgMTEuMjUyIDE0Ljk0NyAxLjI2MWwxOC42NTYtMjIxLjEzYy4zNDgtNC4xMjctMi43MTYtNy43NTUtNi44NDMtOC4xMDQtNC4xMzItLjM0OC03Ljc1NyAyLjcxNS04LjEwNCA2Ljg0M3oiIGZpbGw9IiNkYjhhOGEiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiPjwvcGF0aD48cGF0aCBkPSJtMTY2LjI1NCAxODkuOTkyYy00LjEyNy4zNDktNy4xOSAzLjk3Ny02Ljg0MyA4LjEwNGwxOC42NTYgMjIxLjEzYy44NDQgMTAuMDAzIDE1Ljc4MSA4LjYzOSAxNC45NDctMS4yNjFsLTE4LjY1Ni0yMjEuMTNjLS4zNDctNC4xMjgtMy45NzgtNy4xODktOC4xMDQtNi44NDN6IiBmaWxsPSIjZGI4YThhIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIj48L3BhdGg+PHBhdGggZD0ibTI0OC41IDE5Ny40NjV2MjIxLjEzYzAgNC4xNDIgMy4zNTcgNy41IDcuNSA3LjVzNy41LTMuMzU4IDcuNS03LjV2LTIyMS4xM2MwLTQuMTQyLTMuMzU3LTcuNS03LjUtNy41cy03LjUgMy4zNTgtNy41IDcuNXoiIGZpbGw9IiNkYjhhOGEiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiPjwvcGF0aD48cGF0aCBkPSJtNDQ1LjM2NyA1Ny45MzJoLTExNy45Mzh2LTI2LjM2MWMwLTE3LjQwOC0xNC4xNjMtMzEuNTcxLTMxLjU3Mi0zMS41NzFoLTc5LjcxNWMtMTcuNDA4IDAtMzEuNTcxIDE0LjE2My0zMS41NzEgMzEuNTcxdjI2LjM2MWgtMTE3LjkzOWMtMTkuMDc1IDAtMzQuNTk0IDE1LjUxOS0zNC41OTQgMzQuNTk0czE1LjUxOSAzNC41OTQgMzQuNTk0IDM0LjU5NGg4LjA2N2wyOC4wNTggMzMyLjU2NGMyLjQ5NCAyOS41NTcgMjcuMjA4IDUyLjMxNiA1Ni45MTYgNTIuMzE2aDE5Mi42NTRjMjkuNjYyIDAgNTQuNDE4LTIyLjcxMyA1Ni45MTYtNTIuMzE2bDMuODktNDYuMTA3Yy4zNDgtNC4xMjctMi43MTYtNy43NTUtNi44NDMtOC4xMDQtNC4xMzgtLjM1NS03Ljc1NiAyLjcxNS04LjEwNCA2Ljg0M2wtMy44OSA0Ni4xMDdjLTEuODI1IDIxLjYzMi0yMC4yNiAzOC41NzctNDEuOTY5IDM4LjU3N2gtMTkyLjY1NGMtMjEuNzA5IDAtNDAuMTQ0LTE2Ljk0NS00MS45NjktMzguNTc3bC0yNy45NTItMzMxLjMwM2gyMi4yMDZjNC4xNDMgMCA3LjUtMy4zNTggNy41LTcuNXMtMy4zNTctNy41LTcuNS03LjVjLTE2LjQyOSAwLTM1LjgwMiAwLTQ1LjMyNiAwLTEwLjgwNCAwLTE5LjU5NC04Ljc5LTE5LjU5NC0xOS41OTRzOC43OS0xOS41OTQgMTkuNTk0LTE5LjU5NGgzNzguNzM1YzEwLjgwNSAwIDE5LjU5NSA4Ljc5IDE5LjU5NSAxOS41OTRzLTguNzkgMTkuNTk0LTE5LjU5NSAxOS41OTRjLTExLjY0OSAwLTI3My4xMzcgMC0yOTguMzI2IDAtNC4xNDMgMC03LjUgMy4zNTgtNy41IDcuNXMzLjM1NyA3LjUgNy41IDcuNWgyNzUuMjA3bC0yMS4xMSAyNTAuMjA1Yy0uMzQ4IDQuMTI3IDIuNzE2IDcuNzU1IDYuODQzIDguMTA0LjIxNS4wMTguNDI4LjAyNy42NC4wMjcgMy44NTYgMCA3LjEzNS0yLjk1NyA3LjQ2NS02Ljg3bDIxLjIxNi0yNTEuNDY2aDguMDY2YzE5LjA3NSAwIDM0LjU5NS0xNS41MTkgMzQuNTk1LTM0LjU5NHMtMTUuNTIxLTM0LjU5NC0zNC41OTYtMzQuNTk0em0tMTMyLjkzOCAwaC0xMTIuODU4di0yNi4zNjFjMC05LjEzNyA3LjQzNC0xNi41NzEgMTYuNTcxLTE2LjU3MWg3OS43MTVjOS4xMzggMCAxNi41NzEgNy40MzQgMTYuNTcxIDE2LjU3MXYyNi4zNjF6IiBmaWxsPSIjZGI4YThhIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIj48L3BhdGg+PC9nPjwvZz48L2c+PC9zdmc+" /></a>
		</div>
		<%} %>
		<%} %>
		</td>
		
  </tr>
  </c:if>
 </c:forEach>
 </tbody>
</table>
</div>
<script>
$(document).ready(function(){
  $("#searchBar").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myRows tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>

 <jsp:include page="../shared/footer.jsp" />   