

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<spring:url value="/resources/" var="resources" />
<jsp:include page="../../includes/header.jsp" />
<jsp:include page="../../menu/menu_verticale.jsp" />
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />


<div >
    <div>
        <div >

            <div class="row " dir="${pageContext.response.locale=='ar'?'rtl':'ltr'}">


                <div class="col-lg-4 col-md-6 col-ms-12 pl-10 pr-1 ">
                    <div class="row border-secondary border rounded rou  p-2 pl-4 pr-4 m-1">

                        <div class="col-8 pb-3 text-info">
                            <%--<h3 class="">${nbr_EE}</h3>--%>
                        </div>
                        <div class="col-4 pb-3 text-info">
                            <span class="f-40 fa fa-users" style="color:#d59d32;opacity: .4;"></span>
                        </div>

                        <h2 >Gestion du personnel</h2>

                        <div class="col-12  p-0 m-0">
                            <div class="row justify-content-center border-top border-secondary">
                                <div class="col-md-5 btn-sm-12 mt-3 p-0">
                                    <a href="/api/getAccount5/0/40/0" class="btn  btn-sms4"> <span class="fa fa-plus-circle"></span> <spring:message code='label.Detail'/></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%-- col 3 --%>
                <div class=" col-lg-4 col-md-6 col-ms-12 pl-10 pr-1">
                    <div class="row border-secondary border rounded rou  p-2 pl-4 pr-4 m-1" style=" padding: 10px 60px 10px 60px;">

                        <div class="col-8 pb-3 text-info">
                            <%--<h3 class="">${nbr_NT}</h3>--%>
                        </div>
                        <div class="col-4 pb-3 text-info">
                            <span class="f-40 fa fa-calculator" style="color:#d59d32;opacity: .4;"></span>
                        </div>

                        <h2>Calcul du salaire</h2>


                        <div class="col-12 p-0 m-0">
                            <div class="row justify-content-center border-top border-secondary">
                                <div class="col-md-5 btn-sm-12 mt-3 p-0">
                                    <a  href="#" class="btn  btn-sms4"> <span class="fa fa-plus-circle"></span> <spring:message code='label.Detail'/> </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%-- col 4 --%>
                <div class="col-lg-4 col-md-6 col-ms-12 pl-1 pr-15">
                    <div class="row border-secondary border rounded rou  p-2 pl-4 pr-4 m-1">

                        <div class="col-8 pb-3 text-info">
                            <%--<h3 class="">${nbr_AE}</h3>--%>
                        </div>
                        <div class="col-4 pb-3 text-info">
                            <span class="f-40 fa fa-cog" style="color:#d59d32;opacity: .4;"></span>
                        </div>

                        <h2 > Paramètres</h2>


                        <div class="col-12 p-0 m-0">
                            <div class="row justify-content-center border-top border-secondary">
                                <div class="col-md-5 btn-sm-12 mt-3 p-0">
                                    <a  href="#" class="btn  btn-sms4"> <span class="fa fa-plus-circle"></span> <spring:message code='label.Detail'/></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


            <script>
                function changedt(){
                    $("#bodymodal").hide();
                    $("#repotreunion").show();
                }
                $(document).ready(function() {
                    $('#DataTables_Table_1').DataTable().clear().destroy();
                });
                $(document).ready(function() {
                    $('#DataTables_Table_0').css("width","100%");
                });
                $(document).ready(function() {
                    $('#DataTables_Table_0_filter').css("display","none");
                });

            </script>
            <script src="${pageContext.request.contextPath}/assets/js/custom_hatim.js"></script>

            <jsp:include page="../../includes/footer.jsp" />


        </div>
    </div>
</div>
</div>