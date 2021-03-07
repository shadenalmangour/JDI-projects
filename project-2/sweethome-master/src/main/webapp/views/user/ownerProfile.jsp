<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<!-- content -->


<!-- OWNED HOUSES -->


<div class="min-vh-100">
<div class="container-xl flex  flex-row justify-evenly   p-10 ">
	<div
		class="container-sm flex flex-col justify-center  w-100 font-mono capitalize text-lg">
		<%
		if (session.getAttribute("user") != null) {
		%>

		<%
		if (session.getAttribute("userRole").equals("owner")) {
		%>
		<c:if test="${owner.id == user.id}">

			<div class="flex  flex-row justify-between">
			<div>
				<a href="${appName}user/ownerProfileEdit?id=${owner.id}"><img
					class=" mr-10 transform hover:scale-110 motion-reduce:transform-none"
					width="20" height="20"
					src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDQwMS41MjI4OSA0MDEiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiPjxnPjxsaW5lYXJHcmFkaWVudCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJhIj48c3RvcCBzdG9wLW9wYWNpdHk9IjEiIHN0b3AtY29sb3I9IiNmMTY1ODIiIG9mZnNldD0iMCI+PC9zdG9wPjxzdG9wIHN0b3Atb3BhY2l0eT0iMSIgc3RvcC1jb2xvcj0iIzNlOTVmZiIgb2Zmc2V0PSIwLjk5NjEzODk5NjEzODk5NjEiPjwvc3RvcD48c3RvcCBzdG9wLW9wYWNpdHk9IjEiIHN0b3AtY29sb3I9IiMwMGFjZWEiIG9mZnNldD0iMSI+PC9zdG9wPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgaWQ9ImIiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMSAwIDAgLTEgLTU1LjIyOCA0NTguMDEyMzM1KSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIyNDUuNTIzIiB4Mj0iMjQ1LjUyMyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhsaW5rOmhyZWY9IiNhIiB5MT0iNDYwIiB5Mj0iMzIiPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgaWQ9ImMiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMSAwIDAgLTEgLTU1LjIyOCA0NTguMDEyMzM1KSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIzMTAuMDg0IiB4Mj0iMzEwLjA4NCIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhsaW5rOmhyZWY9IiNhIiB5MT0iNDYwIiB5Mj0iMzIiPjwvbGluZWFyR3JhZGllbnQ+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMzcwLjU4OTg0NCAyNTAuOTcyNjU2Yy01LjUyMzQzOCAwLTEwIDQuNDc2NTYzLTEwIDEwdjg4Ljc4OTA2M2MtLjAxOTUzMiAxNi41NjI1LTEzLjQzNzUgMjkuOTg0Mzc1LTMwIDMwaC0yODAuNTg5ODQ0Yy0xNi41NjI1LS4wMTU2MjUtMjkuOTgwNDY5LTEzLjQzNzUtMzAtMzB2LTI2MC41ODk4NDRjLjAxOTUzMS0xNi41NTg1OTQgMTMuNDM3NS0yOS45ODA0NjkgMzAtMzBoODguNzg5MDYyYzUuNTIzNDM4IDAgMTAtNC40NzY1NjMgMTAtMTAgMC01LjUxOTUzMS00LjQ3NjU2Mi0xMC0xMC0xMGgtODguNzg5MDYyYy0yNy42MDE1NjIuMDMxMjUtNDkuOTY4NzUgMjIuMzk4NDM3LTUwIDUwdjI2MC41OTM3NWMuMDMxMjUgMjcuNjAxNTYzIDIyLjM5ODQzOCA0OS45Njg3NSA1MCA1MGgyODAuNTg5ODQ0YzI3LjYwMTU2Mi0uMDMxMjUgNDkuOTY4NzUtMjIuMzk4NDM3IDUwLTUwdi04OC43OTI5NjljMC01LjUyMzQzNy00LjQ3NjU2My0xMC0xMC0xMHptMCAwIiBmaWxsPSJ1cmwoI2IpIiBkYXRhLW9yaWdpbmFsPSJ1cmwoI2IpIiBzdHlsZT0iIj48L3BhdGg+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMzc2LjYyODkwNiAxMy40NDE0MDZjLTE3LjU3NDIxOC0xNy41NzQyMTgtNDYuMDY2NDA2LTE3LjU3NDIxOC02My42NDA2MjUgMGwtMTc4LjQwNjI1IDE3OC40MDYyNWMtMS4yMjI2NTYgMS4yMjI2NTYtMi4xMDU0NjkgMi43MzgyODItMi41NjY0MDYgNC40MDIzNDRsLTIzLjQ2MDkzNyA4NC42OTkyMTljLS45NjQ4NDQgMy40NzI2NTYuMDE1NjI0IDcuMTkxNDA2IDIuNTYyNSA5Ljc0MjE4NyAyLjU1MDc4MSAyLjU0Njg3NSA2LjI2OTUzMSAzLjUyNzM0NCA5Ljc0MjE4NyAyLjU2NjQwNmw4NC42OTkyMTktMjMuNDY0ODQzYzEuNjY0MDYyLS40NjA5MzggMy4xNzk2ODctMS4zNDM3NSA0LjQwMjM0NC0yLjU2NjQwN2wxNzguNDAyMzQzLTE3OC40MTAxNTZjMTcuNTQ2ODc1LTE3LjU4NTkzNyAxNy41NDY4NzUtNDYuMDU0Njg3IDAtNjMuNjQwNjI1em0tMjIwLjI1NzgxMiAxODQuOTA2MjUgMTQ2LjAxMTcxOC0xNDYuMDE1NjI1IDQ3LjA4OTg0NCA0Ny4wODk4NDQtMTQ2LjAxNTYyNSAxNDYuMDE1NjI1em0tOS40MDYyNSAxOC44NzUgMzcuNjIxMDk0IDM3LjYyNS01Mi4wMzkwNjMgMTQuNDE3OTY5em0yMjcuMjU3ODEyLTE0Mi41NDY4NzUtMTAuNjA1NDY4IDEwLjYwNTQ2OS00Ny4wOTM3NS00Ny4wOTM3NSAxMC42MDkzNzQtMTAuNjA1NDY5YzkuNzYxNzE5LTkuNzYxNzE5IDI1LjU4OTg0NC05Ljc2MTcxOSAzNS4zNTE1NjMgMGwxMS43MzgyODEgMTEuNzM0Mzc1YzkuNzQ2MDk0IDkuNzczNDM4IDkuNzQ2MDk0IDI1LjU4OTg0NCAwIDM1LjM1OTM3NXptMCAwIiBmaWxsPSJ1cmwoI2MpIiBkYXRhLW9yaWdpbmFsPSJ1cmwoI2MpIiBzdHlsZT0iIj48L3BhdGg+PC9nPjwvc3ZnPg==" /></a><br></div>
			<div>
			<a href="${appName}user/changePassword?id=${owner.id}"><img class=" mr-10 transform hover:scale-110 motion-reduce:transform-none"
					width="30" height="30" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiPjxnPjxsaW5lYXJHcmFkaWVudCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJsaW5lYXItZ3JhZGllbnQiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiB4MT0iMTA1LjU5MiIgeDI9IjQzOC40MDgiIHkxPSI0NzYuOTA2IiB5Mj0iMTQ0LjA5Ij48c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiM0MWRmZDAiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiNlZTgzZWYiPjwvc3RvcD48L2xpbmVhckdyYWRpZW50PjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgaWQ9ImdyYWRpZW50Ij48cGF0aCBkPSJtMjU2IDI2NGE4MCA4MCAwIDEgMCA4MCA4MCA4MC4wOTEgODAuMDkxIDAgMCAwIC04MC04MHptMzYuNjYgMTMyLjQxM2ExMDguODE1IDEwOC44MTUgMCAwIDAgOS4xODQtMjYuODMgOCA4IDAgMCAwIC0xNS42ODQtMy4xNjYgOTIuODQ2IDkyLjg0NiAwIDAgMSAtMTEuNDI2IDI5LjQ3N2wtNC43OTQgNy45OWE3Ljk2MyA3Ljk2MyAwIDAgMCAtMS4wMjcgMi44MDYgNjMuOTk0IDYzLjk5NCAwIDAgMSAtMTEuNTYzIDEuMjc2bDcuMTEtMTEuODVhOCA4IDAgMCAwIC0xMy43Mi04LjIzMmwtOS42IDE2YTguMDE0IDguMDE0IDAgMCAwIC0uODkzIDIuMTQ5IDYzLjQ4NiA2My40ODYgMCAwIDEgLTguNzc5LTIuOTNsMTcuMjE5LTI4LjdhNTEuMzQ5IDUxLjM0OSAwIDAgMCA3LjMxMy0yNi40MDMgNCA0IDAgMCAxIDggMHY4YTM1LjMxNCAzNS4zMTQgMCAwIDEgLTEuMzgyIDkuNzg0IDggOCAwIDEgMCAxNS4zNzQgNC40MzIgNTEuMzI0IDUxLjMyNCAwIDAgMCAyLjAwOC0xNC4yMTZ2LThhMjAgMjAgMCAwIDAgLTQwIDAgMzUuMzM3IDM1LjMzNyAwIDAgMSAtNS4wMzQgMTguMTc0bC0xNy4zODUgMjguOTc2YTY0LjAwOCA2NC4wMDggMCAxIDEgNzUuMDc5IDEuMjYzem0xMS4wNzItNTMuMjkyYTggOCAwIDAgMSAtNy4wNzMgOC44MzEgOC4zMjYgOC4zMjYgMCAwIDEgLS44ODguMDQ4IDggOCAwIDAgMSAtNy45NDItNy4xMjEgMjcuOTQ2IDI3Ljk0NiAwIDAgMCAtMjcuODI5LTI0Ljg3OSA4IDggMCAwIDEgMC0xNiA0My45MjYgNDMuOTI2IDAgMCAxIDQzLjczMiAzOS4xMjF6bS02MC4xNDMtMjguMTUzYTggOCAwIDAgMSAtMS4xODYgMTEuMjUxIDI3LjkwNSAyNy45MDUgMCAwIDAgLTEwLjQwMyAyMS43ODEgNDIuMzY2IDQyLjM2NiAwIDAgMSAtOS4yNDkgMjYuMzY4bC01LjMgNi42M2E4IDggMCAwIDEgLTEyLjQ5NC0xMGw1LjMtNi42MjlhMjYuMzA2IDI2LjMwNiAwIDAgMCA1Ljc0My0xNi4zNjkgNDMuODM1IDQzLjgzNSAwIDAgMSAxNi4zMzgtMzQuMjE5IDggOCAwIDAgMSAxMS4yNTEgMS4xODd6bTIwLjQxMSAxMzMuMDMyYTggOCAwIDEgMSAtOC04IDggOCAwIDAgMSA4IDh6bS0zMiAwYTYgNiAwIDEgMSAtNi02IDYgNiAwIDAgMSA2IDZ6bTYwIDBhNiA2IDAgMSAxIC02LTYgNiA2IDAgMCAxIDYgNnptLTE2NC0yODB2LTI0YTggOCAwIDAgMSAxNiAwdjI0YTggOCAwIDAgMSAtMTYgMHptMCAzMmE4IDggMCAwIDEgMTYgMHY4YTggOCAwIDAgMSAtMTYgMHptMjY0IDMyaC04di05NmExMTIgMTEyIDAgMCAwIC0yMjQgMHY0OGEzMiAzMiAwIDAgMCA2NCAwdi00OGE0OCA0OCAwIDAgMSA5NiAwdjk2aC0xOTBhMTguMDIxIDE4LjAyMSAwIDAgMCAtMTggMTh2MjMwYTggOCAwIDAgMCA4IDhoMzA0YTggOCAwIDAgMCA4LTh2LTIzMGExOC4wMjEgMTguMDIxIDAgMCAwIC0xOC0xOHptLTEyMC0xNjBhNjQuMDcyIDY0LjA3MiAwIDAgMCAtNjQgNjR2NDhhMTYgMTYgMCAwIDEgLTMyIDB2LTQ4YTk2IDk2IDAgMCAxIDE5MiAwdjk2aC0zMnYtOTZhNjQuMDcyIDY0LjA3MiAwIDAgMCAtNjQtNjR6bS0xNDQgMTc4YTIgMiAwIDAgMSAyLTJoMjU0djIyNGgtMjU2em0yODggMHYyMjJoLTE2di0yMjRoMTRhMiAyIDAgMCAxIDIgMnoiIGZpbGw9InVybCgjbGluZWFyLWdyYWRpZW50KSIgZGF0YS1vcmlnaW5hbD0idXJsKCNsaW5lYXItZ3JhZGllbnQpIiBzdHlsZT0iIj48L3BhdGg+PC9nPjwvZz48L3N2Zz4=" /></a></div>
			</div>
		</c:if>
		<%
		}
		%>
		<%
		}
		%>

		<div>
			<img
				class="object-cover m-10 w-60 h-60 rounded-full mr-10 ring-8 ring-indigo-400 ring-opacity-50 "
				src="${owner.userImage}" />
		</div>
		<div class=" pl-2 w-100 border-l-8 border-pink-500">
			<span class="text-sm mr-2">Role:</span>${owner.userRole}</div>
		<div class=" pl-2 w-100 border-l-8 border-yellow-600">
			<span class="text-sm mr-2">First Name:</span>${owner.firstName}</div>
		<div class=" pl-2 w-100 border-l-8 border-indigo-500">
			<span class="text-sm mr-2">Last Name:</span>${owner.lastName}</div>
		<div class=" pl-2 w-100 border-l-8 border-red-400">
			<span class="text-sm mr-2">Email Address:</span>${owner.emailAddress}</div>
		<div class=" pl-2 w-100 border-l-8 border-red-800">
			<span class="text-sm mr-2">Phone Number:</span>${owner.phoneNumber}</div>
	</div>


	<div
		class="container-sm flex flex-col justify-center bg-gray-100 w-100 ">
		<h2
			class="w-100  text-center text-gray-700 mt-3 tracking-widest antialiased">OWNED
			HOUSES</h2>
		<c:forEach items="${owner.getOwnedHouses()}" var="house">
			<div class="container-xl mr-2 ">
				<div class="card mb-3 mt-3 shadow" style="max-width: 600px;">
					<div class="row g-0">
						<div class="col-md-4">
							<img class="w-100 h-100 " src="${house.houseImage}"
								alt="House Image">
						</div>
						<div class="col-md-8">
							<div class="card-body">

								<a href="${appName}house/detail?id=${house.id}"
									class="btn  shadow-sm bg-indigo-400 hover:bg-indigo-100 text-gray-50 hover:text-gray-700">More
									Details</a>
									 <div class="px-1 pt-3 pb-4 ">
              <c:choose>
                <c:when test="${house.getRentee() != null}">
                 <div class="text-xs uppercase font-bold text-gray-600 tracking-wide">Rentee</div>

                <div class="flex items-center pt-2">
                    <a href="${appName}user/renteeProfile?id=${house.rentee.id}" class="">
                    <div class="bg-cover bg-center w-10 h-10 rounded-full mr-3 ring-4 ring-green-500 ring-opacity-50" style="background-image: url(${house.rentee.userImage})"></div></a>

                    <div>
                        <p class="font-bold text-gray-900">${house.rentee.firstName} ${house.rentee.lastName}</p>
                    </div>
               </div>
               </c:when>
               <c:otherwise>
					  <p class="statusFont tracking-widest text-green-500"> No Renters Yet </p>
					</c:otherwise>
               </c:choose>
               </div>
								<div class="flex flex-row w-100 justify-between ">
									<p class="card-text">
										<small class="text-muted ">Last updated:
											${house.updateAt}</small>
									</p>
									<%
									if (session.getAttribute("user") != null) {
									%>
									<%
									if (session.getAttribute("userRole").equals("owner")) {
									%>
									<c:if test="${owner.id == user.id}">
										<div class="flex flex-row w-10 justify-evenly ">
											<div>
												<a href="${appName}house/edit?id=${house.id}"><img
													class=" mr-10 transform hover:scale-110 motion-reduce:transform-none"
													width="20" height="20"
													src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDQwMS41MjI4OSA0MDEiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiPjxnPjxsaW5lYXJHcmFkaWVudCB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJhIj48c3RvcCBzdG9wLW9wYWNpdHk9IjEiIHN0b3AtY29sb3I9IiNmMTY1ODIiIG9mZnNldD0iMCI+PC9zdG9wPjxzdG9wIHN0b3Atb3BhY2l0eT0iMSIgc3RvcC1jb2xvcj0iIzNlOTVmZiIgb2Zmc2V0PSIwLjk5NjEzODk5NjEzODk5NjEiPjwvc3RvcD48c3RvcCBzdG9wLW9wYWNpdHk9IjEiIHN0b3AtY29sb3I9IiMwMGFjZWEiIG9mZnNldD0iMSI+PC9zdG9wPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgaWQ9ImIiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMSAwIDAgLTEgLTU1LjIyOCA0NTguMDEyMzM1KSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIyNDUuNTIzIiB4Mj0iMjQ1LjUyMyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhsaW5rOmhyZWY9IiNhIiB5MT0iNDYwIiB5Mj0iMzIiPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgaWQ9ImMiIGdyYWRpZW50VHJhbnNmb3JtPSJtYXRyaXgoMSAwIDAgLTEgLTU1LjIyOCA0NTguMDEyMzM1KSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIzMTAuMDg0IiB4Mj0iMzEwLjA4NCIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhsaW5rOmhyZWY9IiNhIiB5MT0iNDYwIiB5Mj0iMzIiPjwvbGluZWFyR3JhZGllbnQ+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMzcwLjU4OTg0NCAyNTAuOTcyNjU2Yy01LjUyMzQzOCAwLTEwIDQuNDc2NTYzLTEwIDEwdjg4Ljc4OTA2M2MtLjAxOTUzMiAxNi41NjI1LTEzLjQzNzUgMjkuOTg0Mzc1LTMwIDMwaC0yODAuNTg5ODQ0Yy0xNi41NjI1LS4wMTU2MjUtMjkuOTgwNDY5LTEzLjQzNzUtMzAtMzB2LTI2MC41ODk4NDRjLjAxOTUzMS0xNi41NTg1OTQgMTMuNDM3NS0yOS45ODA0NjkgMzAtMzBoODguNzg5MDYyYzUuNTIzNDM4IDAgMTAtNC40NzY1NjMgMTAtMTAgMC01LjUxOTUzMS00LjQ3NjU2Mi0xMC0xMC0xMGgtODguNzg5MDYyYy0yNy42MDE1NjIuMDMxMjUtNDkuOTY4NzUgMjIuMzk4NDM3LTUwIDUwdjI2MC41OTM3NWMuMDMxMjUgMjcuNjAxNTYzIDIyLjM5ODQzOCA0OS45Njg3NSA1MCA1MGgyODAuNTg5ODQ0YzI3LjYwMTU2Mi0uMDMxMjUgNDkuOTY4NzUtMjIuMzk4NDM3IDUwLTUwdi04OC43OTI5NjljMC01LjUyMzQzNy00LjQ3NjU2My0xMC0xMC0xMHptMCAwIiBmaWxsPSJ1cmwoI2IpIiBkYXRhLW9yaWdpbmFsPSJ1cmwoI2IpIiBzdHlsZT0iIj48L3BhdGg+PHBhdGggeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiBkPSJtMzc2LjYyODkwNiAxMy40NDE0MDZjLTE3LjU3NDIxOC0xNy41NzQyMTgtNDYuMDY2NDA2LTE3LjU3NDIxOC02My42NDA2MjUgMGwtMTc4LjQwNjI1IDE3OC40MDYyNWMtMS4yMjI2NTYgMS4yMjI2NTYtMi4xMDU0NjkgMi43MzgyODItMi41NjY0MDYgNC40MDIzNDRsLTIzLjQ2MDkzNyA4NC42OTkyMTljLS45NjQ4NDQgMy40NzI2NTYuMDE1NjI0IDcuMTkxNDA2IDIuNTYyNSA5Ljc0MjE4NyAyLjU1MDc4MSAyLjU0Njg3NSA2LjI2OTUzMSAzLjUyNzM0NCA5Ljc0MjE4NyAyLjU2NjQwNmw4NC42OTkyMTktMjMuNDY0ODQzYzEuNjY0MDYyLS40NjA5MzggMy4xNzk2ODctMS4zNDM3NSA0LjQwMjM0NC0yLjU2NjQwN2wxNzguNDAyMzQzLTE3OC40MTAxNTZjMTcuNTQ2ODc1LTE3LjU4NTkzNyAxNy41NDY4NzUtNDYuMDU0Njg3IDAtNjMuNjQwNjI1em0tMjIwLjI1NzgxMiAxODQuOTA2MjUgMTQ2LjAxMTcxOC0xNDYuMDE1NjI1IDQ3LjA4OTg0NCA0Ny4wODk4NDQtMTQ2LjAxNTYyNSAxNDYuMDE1NjI1em0tOS40MDYyNSAxOC44NzUgMzcuNjIxMDk0IDM3LjYyNS01Mi4wMzkwNjMgMTQuNDE3OTY5em0yMjcuMjU3ODEyLTE0Mi41NDY4NzUtMTAuNjA1NDY4IDEwLjYwNTQ2OS00Ny4wOTM3NS00Ny4wOTM3NSAxMC42MDkzNzQtMTAuNjA1NDY5YzkuNzYxNzE5LTkuNzYxNzE5IDI1LjU4OTg0NC05Ljc2MTcxOSAzNS4zNTE1NjMgMGwxMS43MzgyODEgMTEuNzM0Mzc1YzkuNzQ2MDk0IDkuNzczNDM4IDkuNzQ2MDk0IDI1LjU4OTg0NCAwIDM1LjM1OTM3NXptMCAwIiBmaWxsPSJ1cmwoI2MpIiBkYXRhLW9yaWdpbmFsPSJ1cmwoI2MpIiBzdHlsZT0iIj48L3BhdGg+PC9nPjwvc3ZnPg==" /></a>
											</div>
											<div>
												<a href="${appName}house/delete?id=${house.id}"><img
													class=" mr-10 transform hover:scale-110 motion-reduce:transform-none"
													width="20" height="20"
													src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOnN2Z2pzPSJodHRwOi8vc3ZnanMuY29tL3N2Z2pzIiB3aWR0aD0iNTEyIiBoZWlnaHQ9IjUxMiIgeD0iMCIgeT0iMCIgdmlld0JveD0iMCAwIDUxMiA1MTIiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDUxMiA1MTIiIHhtbDpzcGFjZT0icHJlc2VydmUiIGNsYXNzPSIiPjxnPjxnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGc+PHBhdGggZD0ibTMzNy42NDIgMTk2LjgzNS0xOC42NTYgMjIxLjEzYy0uODM0IDkuOSAxNC4xMDQgMTEuMjUyIDE0Ljk0NyAxLjI2MWwxOC42NTYtMjIxLjEzYy4zNDgtNC4xMjctMi43MTYtNy43NTUtNi44NDMtOC4xMDQtNC4xMzItLjM0OC03Ljc1NyAyLjcxNS04LjEwNCA2Ljg0M3oiIGZpbGw9IiNkYjhhOGEiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiPjwvcGF0aD48cGF0aCBkPSJtMTY2LjI1NCAxODkuOTkyYy00LjEyNy4zNDktNy4xOSAzLjk3Ny02Ljg0MyA4LjEwNGwxOC42NTYgMjIxLjEzYy44NDQgMTAuMDAzIDE1Ljc4MSA4LjYzOSAxNC45NDctMS4yNjFsLTE4LjY1Ni0yMjEuMTNjLS4zNDctNC4xMjgtMy45NzgtNy4xODktOC4xMDQtNi44NDN6IiBmaWxsPSIjZGI4YThhIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIj48L3BhdGg+PHBhdGggZD0ibTI0OC41IDE5Ny40NjV2MjIxLjEzYzAgNC4xNDIgMy4zNTcgNy41IDcuNSA3LjVzNy41LTMuMzU4IDcuNS03LjV2LTIyMS4xM2MwLTQuMTQyLTMuMzU3LTcuNS03LjUtNy41cy03LjUgMy4zNTgtNy41IDcuNXoiIGZpbGw9IiNkYjhhOGEiIGRhdGEtb3JpZ2luYWw9IiMwMDAwMDAiIHN0eWxlPSIiPjwvcGF0aD48cGF0aCBkPSJtNDQ1LjM2NyA1Ny45MzJoLTExNy45Mzh2LTI2LjM2MWMwLTE3LjQwOC0xNC4xNjMtMzEuNTcxLTMxLjU3Mi0zMS41NzFoLTc5LjcxNWMtMTcuNDA4IDAtMzEuNTcxIDE0LjE2My0zMS41NzEgMzEuNTcxdjI2LjM2MWgtMTE3LjkzOWMtMTkuMDc1IDAtMzQuNTk0IDE1LjUxOS0zNC41OTQgMzQuNTk0czE1LjUxOSAzNC41OTQgMzQuNTk0IDM0LjU5NGg4LjA2N2wyOC4wNTggMzMyLjU2NGMyLjQ5NCAyOS41NTcgMjcuMjA4IDUyLjMxNiA1Ni45MTYgNTIuMzE2aDE5Mi42NTRjMjkuNjYyIDAgNTQuNDE4LTIyLjcxMyA1Ni45MTYtNTIuMzE2bDMuODktNDYuMTA3Yy4zNDgtNC4xMjctMi43MTYtNy43NTUtNi44NDMtOC4xMDQtNC4xMzgtLjM1NS03Ljc1NiAyLjcxNS04LjEwNCA2Ljg0M2wtMy44OSA0Ni4xMDdjLTEuODI1IDIxLjYzMi0yMC4yNiAzOC41NzctNDEuOTY5IDM4LjU3N2gtMTkyLjY1NGMtMjEuNzA5IDAtNDAuMTQ0LTE2Ljk0NS00MS45NjktMzguNTc3bC0yNy45NTItMzMxLjMwM2gyMi4yMDZjNC4xNDMgMCA3LjUtMy4zNTggNy41LTcuNXMtMy4zNTctNy41LTcuNS03LjVjLTE2LjQyOSAwLTM1LjgwMiAwLTQ1LjMyNiAwLTEwLjgwNCAwLTE5LjU5NC04Ljc5LTE5LjU5NC0xOS41OTRzOC43OS0xOS41OTQgMTkuNTk0LTE5LjU5NGgzNzguNzM1YzEwLjgwNSAwIDE5LjU5NSA4Ljc5IDE5LjU5NSAxOS41OTRzLTguNzkgMTkuNTk0LTE5LjU5NSAxOS41OTRjLTExLjY0OSAwLTI3My4xMzcgMC0yOTguMzI2IDAtNC4xNDMgMC03LjUgMy4zNTgtNy41IDcuNXMzLjM1NyA3LjUgNy41IDcuNWgyNzUuMjA3bC0yMS4xMSAyNTAuMjA1Yy0uMzQ4IDQuMTI3IDIuNzE2IDcuNzU1IDYuODQzIDguMTA0LjIxNS4wMTguNDI4LjAyNy42NC4wMjcgMy44NTYgMCA3LjEzNS0yLjk1NyA3LjQ2NS02Ljg3bDIxLjIxNi0yNTEuNDY2aDguMDY2YzE5LjA3NSAwIDM0LjU5NS0xNS41MTkgMzQuNTk1LTM0LjU5NHMtMTUuNTIxLTM0LjU5NC0zNC41OTYtMzQuNTk0em0tMTMyLjkzOCAwaC0xMTIuODU4di0yNi4zNjFjMC05LjEzNyA3LjQzNC0xNi41NzEgMTYuNTcxLTE2LjU3MWg3OS43MTVjOS4xMzggMCAxNi41NzEgNy40MzQgMTYuNTcxIDE2LjU3MXYyNi4zNjF6IiBmaWxsPSIjZGI4YThhIiBkYXRhLW9yaWdpbmFsPSIjMDAwMDAwIiBzdHlsZT0iIj48L3BhdGg+PC9nPjwvZz48L2c+PC9zdmc+" /></a>
											</div>
										</div>
									</c:if>
									<%
									}
									%>
									<%
									}
									%>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

		</c:forEach>
	</div>
</div>
</div>
<jsp:include page="../shared/footer.jsp" />
