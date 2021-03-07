<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../shared/_layout.jsp" />

<!-- content -->
 <div class="container-xl flex flex-col">
<c:forEach items="${houses}" var="house"> 
<div class="min-vh-100">
<div class="container-xl mr-2 ">
 <div class="card mb-3 mt-3 shadow " style="max-width:100%; ">
        <div class="row g-0">
          <div class="col-md-4">
            <img  class="w-100 h-100 " src="${house.houseImage}" alt="House Image">
          </div>
          <div class="col-md-8">
            <div class="card-body">
              <p class="card-text">${house.description}</p>
              
              <a href="${appName}house/detail?id=${house.id}" class="btn  shadow-sm bg-indigo-400 hover:bg-indigo-100 text-gray-50 hover:text-gray-700">More Details</a>
              <div class="px-1 pt-3 pb-4 ">
                <div class="text-xs uppercase font-bold text-gray-600 tracking-wide">Owner</div>
                <div class="flex items-center pt-2">
                    <a href="${appName}user/ownerProfile?id=${house.user.id}" class="">
                    <div class="bg-cover bg-center w-10 h-10 rounded-full mr-3 ring-4 ring-yellow-500 ring-opacity-50" style="background-image: url(${house.user.userImage})"></div></a>
                    
                    <div>
                        <p class="font-bold text-gray-900">${house.user.firstName} ${house.user.lastName}</p>
                        <p class="text-sm text-gray-700">${house.user.phoneNumber}</p>
                    </div>
               </div>
               </div>
               <c:choose>
					<c:when test="${house.getRentee() != null}">
					<div class="bg-gradient-to-br from-pink-500 to-rose-900 text-center statusFont tracking-widest text-gray-700 text-lg "> Not Available Now</div>
					</c:when>
					<c:otherwise>
					<div class="bg-gradient-to-br from-green-400 to-cyan-500 text-center statusFont tracking-widest text-gray-700 text-lg "> Available Now</div>
					</c:otherwise>
				</c:choose>
               
               <p class="card-text"><small class="text-muted ">Last updated: ${house.updateAt}</small></p> 
            </div>
          </div>
        </div>
      </div>
      </div>
      </c:forEach> 
</div>

 <jsp:include page="../shared/footer.jsp" /> 