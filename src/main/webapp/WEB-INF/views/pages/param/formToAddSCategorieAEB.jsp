<jsp:include page="../../includes/tag.jsp"/>
<jsp:include page="../../includes/header.jsp"/>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="../../menu/menu_verticale.jsp"/>

<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet"/>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<style>
    .form-container {
        margin-top: 80px;
        padding: 30px;
        border-raduis: 10px;
        box-shadow: 0px 0px 5px 0px #000;

    }

    .switch {
        position: relative;
        display: inline-block;
        width: 45px;
        height: 18px;
    }

    .switch input {
        opacity: 0;
        width: 0;
        height: 0;
    }

    .slider {
        position: absolute;
        cursor: pointer;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: #ccc;
        -webkit-transition: .4s;
        transition: .4s;
    }

    .slider:before {
        position: absolute;
        content: "";
        height: 10px;
        width: 10px;
        left: 4px;
        bottom: 4px;
        background-color: white;
        -webkit-transition: .4s;
        transition: .4s;
    }

    input:checked + .slider {
        background-color: #2196F3;
    }

    input:focus + .slider {
        box-shadow: 0 0 1px #2196F3;
    }

    input:checked + .slider:before {
        -webkit-transform: translateX(26px);
        -ms-transform: translateX(26px);
        transform: translateX(26px);
    }

    /* Rounded sliders */
    .slider.round {
        border-radius: 34px;
    }

    .slider.round:before {
        border-radius: 50%;
    }
</style>


<div class="col-12 from_add"  style="margin: 60px 0px 20px 0px;">
    <div class="row p-0 m-0 justify-content-center">
        <div class="col-md-8 mt-5 col-sm-12 grid-margin">
            <div class="row pl-3 pr-3 mt-4" >
                <div class="container-fluid" >
                    <div class="row justify-content-center card mx-2">
                        <div class="card-body col-md-12" style="background-color: white">

                            <%--<div class="col-md-6 card p-4 col-sm-12 col-lg-6">--%>
                                <div class="" style="height: 70px; display: flex; justify-content: center;background-color: #184a00bd     ">
                                    <div class="col-md-12 my-4 text-center">
                                        <strong class="profil text-white">Catégorie du matériel <i class="ml-2 fa fa-list-alt"></i></strong><br>
                                    </div>
                                </div>
                                <div class="row mt-5">
                                    <form id="myForm">
                                        <div class="col-md-12 col-sm-12 col-lg-12" >
                                            <div class="form-group">
                                                <label>DESIGNATION</label>
                                                <input class="form-control" type="hidden" name="sCatId" id="sCatId" value="${SCategorieAEB.sCatId}">
                                                <input class="form-control" type="text" name="desigSCat" id="desigSCat" value="${SCategorieAEB.desigSCat}" required>
                                            </div>
                                            <div class="form-group">
                                                <label>ABREVIATION </label>
                                                <%--<textarea class="form-control" type="text" name="abrSCat" id="abrSCat" rows="3">${SCategorieAEB.abrSCat}</textarea>--%>
                                                <input class="form-control" type="text" name="abrSCat" id="abrSCat" value="${SCategorieAEB.abrSCat}" required>
                                            </div>
                                        </div>

                                    </form>

                                </div>
                                <div class="row justify-content-center sw">
                                    <div class="col-5 toolbar">
                                        <button class="btn sw-btn-next btn-danger-2 " onclick="goToList()"><i class="fa fa-chevron-circle-left" aria-hidden="true"></i><spring:message code="label.Retour"/></button>
                                        <button class="btn btn-success float-right" onclick="save()"><i class="ml-2 fa fa-save"></i><spring:message code="label.Enregistrer"/></button>

                                    </div>
                                </div>
                                <div class="col-md-1 col-sm-12 col-lg-1" ></div>
                            <%--</div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../../includes/footer.jsp"/>

<script>

    function goToList() {
        window.location.href="/api/param/listeSCategorieAEB"
    }

    $.fn.serializeObject = function() {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function() {
            if (o[this.name]) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };

    function save(){
        var id=$("#sCatId").val();
        var se = $("#myForm").serializeObject();

            $.ajax({
                url: '/api/param/addSCategorieAEB/'+id, // url where to submit the request
                type : "POST", // type of action POST || GET
                contentType : 'application/json; charset=utf-8',
                data : JSON.stringify(se),

                success : function(result) {

                    window.location = "/api/param/listeSCategorieAEB";



                },
                error: function(xhr, resp, text) {
                    console.log(xhr, resp, text);
                }
            })

    }


</script>
