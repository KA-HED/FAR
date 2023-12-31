

"use strict";function _typeof(t){return(_typeof="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function _classCallCheck(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}function _defineProperties(t,e){for(var s=0;s<e.length;s++){var i=e[s];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}function _createClass(t,e,s){return e&&_defineProperties(t.prototype,e),s&&_defineProperties(t,s),t}
/*!
 * jQuery SmartWizard v5.0.0
 * The awesome jQuery step wizard plugin
 * http://www.techlaboratory.net/jquery-smartwizard
 *
 * Created by Dipu Raj
 * http://dipu.me
 *
 * @license Licensed under the terms of the MIT License
 * h-t-t-p-s://github.com/techlab/jquery-smartwizard/blob/master/LICENSE
 */!function(v,i,t){var n={selected:0,theme:"default",justified:!0,autoAdjustHeight:!0,cycleSteps:!1,backButtonSupport:!0,enableURLhash:!0,transition:{animation:"none",speed:"400",easing:""},toolbarSettings:{toolbarPosition:"bottom",toolbarButtonPosition:"right",showNextButton:!0,showPreviousButton:!0,toolbarExtraButtons:[]},anchorSettings:{anchorClickable:!0,enableAllAnchors:!1,markDoneStep:!0,markAllPreviousStepsAsDone:!0,removeDoneStepOnNavigateBack:!1,enableAnchorOnDoneStep:!0},keyboardSettings:{keyNavigation:!0,keyLeft:[37],keyRight:[39]},lang:{next:"Next",previous:"Previous"},disabledSteps:[],errorSteps:[],hiddenSteps:[]},s=function(){function s(t,e){_classCallCheck(this,s),this.options=v.extend(!0,{},n,e),this.main=v(t),this.nav=this._getFirstDescendant(".nav"),this.steps=this.nav.find(".nav-link"),this.container=this._getFirstDescendant(".tab-content"),this.pages=this.container.children(".tab-pane"),this._initOptions(),this._initLoad()}return _createClass(s,[{key:"_initLoad",value:function(){this.pages.hide(),this.steps.removeClass("done active"),this.current_index=null;var t=this._getStepIndex();this._setPreviousStepsDone(t),this._showStep(t)}},{key:"_initOptions",value:function(){this._setElements(),this._setToolbar(),this._setEvents()}},{key:"_getFirstDescendant",value:function(i){var n=this.main.children(i);return 0<n.length?n:(this.main.children().each(function(t,e){var s=v(e).children(i);if(0<s.length)return n=s,!1}),0<n.length?n:(this._showError("Element not found "+i),!1))}},{key:"_setElements",value:function(){this.main.addClass("sw"),this._setTheme(this.options.theme),this._setJustify(this.options.justified),!0===this.options.anchorSettings.enableAllAnchors&&!0===this.options.anchorSettings.anchorClickable||this.steps.addClass("inactive"),this._setCSSClass(this.options.disabledSteps,"disabled"),this._setCSSClass(this.options.errorSteps,"danger"),this._setCSSClass(this.options.hiddenSteps,"hidden")}},{key:"_setEvents",value:function(){var s=this;if(this.main.data("click-init"))return!0;this.main.data("click-init",!0),v(this.steps).on("click",function(t){if(t.preventDefault(),!1===s.options.anchorSettings.anchorClickable)return!0;var e=s.steps.index(t.currentTarget);return e===s.current_index||(!(!1!==s.options.anchorSettings.enableAnchorOnDoneStep||!s._isDone(e))||void(!1===s.options.anchorSettings.enableAllAnchors&&!s._isDone(e)||s._showStep(e)))}),this.main.find(".sw-btn-next").on("click",function(t){t.preventDefault(),s._showNext()}),this.main.find(".sw-btn-prev").on("click",function(t){t.preventDefault(),s._showPrevious()}),this.options.keyboardSettings.keyNavigation&&v(t).keyup(function(t){s._keyNav(t)}),this.options.backButtonSupport&&v(i).on("hashchange",function(t){var e=s._getURLHashIndex();!1!==e&&(t.preventDefault(),s._showStep(e))})}},{key:"_setToolbar",value:function(){if("none"===this.options.toolbarSettings.toolbarPosition)return!0;switch(this.options.toolbarSettings.toolbarPosition){case"top":this.container.before(this._createToolbar("top"));break;case"bottom":this.container.after(this._createToolbar("bottom"));break;case"both":this.container.before(this._createToolbar("top")),this.container.after(this._createToolbar("bottom"));break;default:this.container.after(this._createToolbar("bottom"))}}},{key:"_createToolbar",value:function(t){if(0<this.main.find(".toolbar-"+t).length)return null;var s=v("<div></div>").addClass("toolbar toolbar-"+t).attr("role","toolbar"),e=!1!==this.options.toolbarSettings.showNextButton?v("<button></button>").text(this.options.lang.next).addClass("btn sw-btn-next").attr("type","button"):null,i=!1!==this.options.toolbarSettings.showPreviousButton?v("<button></button>").text(this.options.lang.previous).addClass("btn sw-btn-prev").attr("type","button"):null;return s.append(i,e),this.options.toolbarSettings.toolbarExtraButtons&&0<this.options.toolbarSettings.toolbarExtraButtons.length&&v.each(this.options.toolbarSettings.toolbarExtraButtons,function(t,e){s.append(e.clone(!0))}),s.css("text-align",this.options.toolbarSettings.toolbarButtonPosition),s}},{key:"_showNext",value:function(){var t=this._getNextShowable(this.current_index);if(!1===t)return!1;this._showStep(t)}},{key:"_showPrevious",value:function(){var t=this._getPreviousShowable(this.current_index);if(!1===t)return!1;this._showStep(t)}},{key:"_showStep",value:function(t){return t!=this.current_index&&(!!this.steps.eq(t)&&(!!this._isShowable(t)&&void this._loadStep(t)))}},{key:"_getNextShowable",value:function(t){for(var e=!1,s=t+1;s<this.steps.length;s++)if(this._isShowable(s)){e=s;break}if(!1!==e&&this.steps.length<=e){if(!this.options.cycleSteps)return!1;e=0}return e}},{key:"_getPreviousShowable",value:function(t){for(var e=!1,s=t-1;0<=s;s--)if(this._isShowable(s)){e=s;break}if(!1!==e&&e<0){if(!this.options.cycleSteps)return!1;e=this.steps.length-1}return e}},{key:"_isShowable",value:function(t){var e=this.steps.eq(t);return!e.hasClass("disabled")&&!e.hasClass("hidden")}},{key:"_isDone",value:function(t){return!!this.steps.eq(t).hasClass("done")}},{key:"_setPreviousStepsDone",value:function(t){if(0<t&&this.options.anchorSettings.markDoneStep&&this.options.anchorSettings.markAllPreviousStepsAsDone)for(var e=t;0<=e;e--)this._setCSSClass(e,"done")}},{key:"_setCSSClass",value:function(t,e){var s=this;if(null===t)return!1;(v.isArray(t)?t:[t]).map(function(t){s.steps.eq(t).addClass(e)})}},{key:"_resetCSSClass",value:function(t,e){var s=this;(v.isArray(t)?t:[t]).map(function(t){s.steps.eq(t).removeClass(e)})}},{key:"_getStepDirection",value:function(t){return null==this.current_index?"":this.current_index<t?"forward":"backward"}},{key:"_getStepPosition",value:function(t){var e="middle";return 0===t?e="first":t===this.steps.length-1&&(e="last"),e}},{key:"_getStepAnchor",value:function(t){return null==t?null:this.steps.eq(t)}},{key:"_getStepPage",value:function(t){if(null==t)return null;var e=this._getStepAnchor(t);return 0<e.length?this.main.find(e.attr("href")):null}},{key:"_setStepContent",value:function(t,e){var s=this._getStepPage(t);s&&s.html(e)}},{key:"_loadStep",value:function(e){var s=this,t=this._getStepAnchor(this.current_index),i=this._getStepDirection(e);if(null!==this.current_index&&!1===this._triggerEvent("leaveStep",[t,this.current_index,i]))return!1;var n=this._getStepAnchor(e),o=this._triggerEvent("stepContent",[n,e,i]);o?"object"==_typeof(o)?o.then(function(t){s._setStepContent(e,t),s._transitStep(e)}).catch(function(t){console.error(t),s._setStepContent(e,t),s._transitStep(e)}):("string"==typeof o&&this._setStepContent(e,o),this._transitStep(e)):this._transitStep(e)}},{key:"_transitStep",value:function(s){var i=this,n=this._getStepAnchor(s);this._setURLHash(n.attr("href")),this._setAnchor(s),this._doStepAnimation(s,function(){i._fixHeight(s);var t=i._getStepDirection(s),e=i._getStepPosition(s);i._triggerEvent("showStep",[n,i.current_index,t,e])}),this.current_index=s,this._setButtons(s)}},{key:"_doStepAnimation",value:function(t,e){var s=this,i=this._getStepPage(this.current_index),n=this._getStepPage(t),o=this.options.transition.animation.toLowerCase();switch(this._stopAnimations(),o){case"slide-horizontal":case"slide-h":var a,r,h=this.container.width(),l=h,u=-2*h;t>this.current_index&&(l=-1*h,u=h),null==this.current_index&&this.container.height(n.outerHeight()),i&&(a=i.css("position"),r=i.css("left"),i.css("position","absolute").css("left",0).animate({left:l},this.options.transition.speed,this.options.transition.easing,function(){v(this).hide(),i.css("position",a).css("left",r)})),a=n.css("position"),r=n.css("left"),n.css("position","absolute").css("left",u).outerWidth(h).show().animate({left:0},this.options.transition.speed,this.options.transition.easing,function(){n.css("position",a).css("left",r),e()});break;case"slide-vertical":case"slide-v":var c,p,d=this.container.height(),f=d,_=-2*d;t>this.current_index&&(f=-1*d,_=d),i&&(c=i.css("position"),p=i.css("top"),i.css("position","absolute").css("top",0).animate({top:f},this.options.transition.speed,this.options.transition.easing,function(){v(this).hide(),i.css("position",c).css("top",p)})),c=n.css("position"),p=n.css("top"),n.css("position","absolute").css("top",_).show().animate({top:0},this.options.transition.speed,this.options.transition.easing,function(){n.css("position",c).css("top",p),e()});break;case"slide-swing":case"slide-s":i?i.slideUp("fast",this.options.transition.easing,function(){n.slideDown(s.options.transition.speed,s.options.transition.easing,function(){e()})}):n.slideDown(this.options.transition.speed,this.options.transition.easing,function(){e()});break;case"fade":i?i.fadeOut("fast",this.options.transition.easing,function(){n.fadeIn("fast",s.options.transition.easing,function(){e()})}):n.fadeIn(this.options.transition.speed,this.options.transition.easing,function(){e()});break;default:i&&i.hide(),n.show(),e()}}},{key:"_stopAnimations",value:function(){this.pages.finish(),this.container.finish()}},{key:"_setAnchor",value:function(t){this._resetCSSClass(this.current_index,"active"),!1!==this.options.anchorSettings.markDoneStep&&null!==this.current_index&&(this._setCSSClass(this.current_index,"done"),!1!==this.options.anchorSettings.removeDoneStepOnNavigateBack&&"backward"===this._getStepDirection(t)&&this._resetCSSClass(this.current_index,"done")),this._resetCSSClass(t,"done"),this._setCSSClass(t,"active")}},{key:"_setButtons",value:function(t){if(!this.options.cycleSteps)switch(this.main.find(".sw-btn-prev").removeClass("disabled"),this.main.find(".sw-btn-next").removeClass("disabled"),this._getStepPosition(t)){case"first":this.main.find(".sw-btn-prev").addClass("disabled");break;case"last":this.main.find(".sw-btn-next").addClass("disabled");break;default:!1===this._getNextShowable(t)&&this.main.find(".sw-btn-next").addClass("disabled"),!1===this._getPreviousShowable(t)&&this.main.find(".sw-btn-prev").addClass("disabled")}}},{key:"_getStepIndex",value:function(){var t=this._getURLHashIndex();return!1===t?this.options.selected:t}},{key:"_setTheme",value:function(t){this.main.removeClass(function(t,e){return(e.match(/(^|\s)sw-theme-\S+/g)||[]).join(" ")}).addClass("sw-theme-"+t)}},{key:"_setJustify",value:function(t){!0===t?this.main.addClass("sw-justified"):this.main.removeClass("sw-justified")}},{key:"_keyNav",value:function(t){if(-1<v.inArray(t.which,this.options.keyboardSettings.keyLeft))this._showPrevious(),t.preventDefault();else{if(!(-1<v.inArray(t.which,this.options.keyboardSettings.keyRight)))return;this._showNext(),t.preventDefault()}}},{key:"_fixHeight",value:function(t){if(this.options.autoAdjustHeight){var e=this._getStepPage(t);this.container.finish().animate({height:e.outerHeight()},this.options.transition.speed)}}},{key:"_triggerEvent",value:function(t,e){var s=v.Event(t);return this.main.trigger(s,e),!s.isDefaultPrevented()&&s.result}},{key:"_setURLHash",value:function(t){this.options.enableURLhash&&i.location.hash!==t&&history.pushState(null,null,t)}},{key:"_getURLHashIndex",value:function(){if(this.options.enableURLhash){var t=i.location.hash;if(0<t.length){var e=this.nav.find("a[href*='"+t+"']");if(0<e.length)return this.steps.index(e)}}return!1}},{key:"_loader",value:function(t){switch(t){case"show":this.main.addClass("sw-loading");break;case"hide":this.main.removeClass("sw-loading");break;default:this.main.toggleClass("sw-loading")}}},{key:"_showError",value:function(t){console.error(t)}},{key:"goToStep",value:function(t){this._showStep(t)}},{key:"next",value:function(){this._showNext()}},{key:"prev",value:function(){this._showPrevious()}},{key:"reset",value:function(){this._setURLHash("#"),this._initOptions(),this._initLoad()}},{key:"stepState",value:function(t,e){if(!t)return!1;switch(e){case"disable":this._setCSSClass(t,"disabled");break;case"enable":this._resetCSSClass(t,"disabled");break;case"hide":this._setCSSClass(t,"hidden");break;case"show":this._resetCSSClass(t,"hidden");break;case"error-on":this._setCSSClass(t,"danger");break;case"error-off":this._resetCSSClass(t,"danger")}}},{key:"setOptions",value:function(t){this.options=v.extend(!0,{},this.options,t),this._initOptions()}},{key:"getStepIndex",value:function(){return this.current_index}},{key:"loader",value:function(t){"show"===t?this.main.addClass("sw-loading"):this.main.removeClass("sw-loading")}}]),s}();v.fn.smartWizard=function(t){if(void 0===t||"object"===_typeof(t))return this.each(function(){v.data(this,"smartWizard")||v.data(this,"smartWizard",new s(this,t))});if("string"==typeof t&&"_"!==t[0]&&"init"!==t){var e=v.data(this[0],"smartWizard");return"destroy"===t&&v.data(this,"smartWizard",null),e instanceof s&&"function"==typeof e[t]?e[t].apply(e,Array.prototype.slice.call(arguments,1)):this}}}(jQuery,window,document);







$(document).ready(function() {

    $('.photo').click(function() {
        bounce($('.photo'));
    });

    $('.nav-tabs > li a[title]').tooltip();

    //Wizard
    $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {

        var target = $(e.target);

        if (target.parent().hasClass('disabled')) {
            return false;
        }
    });

    $(".next-step").click(function (e) {

        var active = $('.wizard .nav-tabs li.active');
        active.next().removeClass('disabled');
        nextTab(active);

    });
    $(".prev-step").click(function (e) {

        var active = $('.wizard .nav-tabs li.active');
        prevTab(active);

    });

    // pour gérer les checkbox au niveau de profils.html & profils_ma.html
    $('.checkAll').on('click', function() {
        $(this).closest('tr').find('input:checkbox').prop('checked', this.checked);
    });


    $('#tableProfils tbody').on('click', 'button[class="btn btn-danger btn-sm rounded-0"],btn.btn-danger.btn-sm.rounded-circle.tab_trash', function () {
        var btn = this;

        swal({
            title: 'Êtes-vous sûr ?',
            text: "Vous ne pourrez pas revenir sur cela !",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#00695c',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Oui, supprimer !',
            cancelButtonText: "Annuler",
        }, function (isConfirm) {
            if (isConfirm) {
                swal("Supprimé!", "L'élément a bien été supprimé", "success");
                tableProfils.row($(btn).parents('tr')).remove().draw(false);
            } else {
                swal("Annulé!", "L'élément n'a pas été supprimé", "error");
            }
        });
    });

});

function nextTab(elem) {
    $(elem).next().find('a[data-toggle="tab"]').click();
}
function prevTab(elem) {
    $(elem).prev().find('a[data-toggle="tab"]').click();
}

$('.nav-tabs').on('click', 'li', function() {
    $('.nav-tabs li.active').removeClass('active');
    $(this).addClass('active');
});

function edit_profil(){
    window.location = "ajouter-profil.html";
}

function ajout_profil_fin(){
    window.location = "liste-profils.html";
}

$("#notificationDropdown").parents("li.nav-item:first").find("div:first").html('<p class="mb-0 font-weight-normal float-left dropdown-header">2 nouveau Notifications</p><a class="dropdown-item preview-item"><div class="preview-thumbnail"><div class="preview-icon bg-success"><i class="mdi mdi-information mx-0"></i></div></div><div class="preview-item-content"><h6 class="preview-subject font-weight-normal">Fin Autorisation 12/33 </h6><p class="font-weight-light small-text mb-0 text-muted">date : 22/05/2020</p></div></a><a class="dropdown-item preview-item"><div class="preview-thumbnail"><div class="preview-icon bg-warning"><i class="mdi mdi-settings mx-0"></i></div></div><div class="preview-item-content"><h6 class="preview-subject font-weight-normal">Actualisation du rapport Annuel</h6><p class="font-weight-light small-text mb-0 text-muted">avant date : 12/06/2020</p></div></a>')



$('#search-friends').on("click",function(){
    return false;
})


function fun_del(val){
    $(val).tooltip("hide");
    $(val).off().on('hidden.bs.tooltip', function () {
        $(val).parents("tr").remove();
    })
}

function fun_edit(val,id){
    $(val).tooltip("hide");
    $(val).off().on('hidden.bs.tooltip', function () {
        fun_affiche(id);
    })
}



function fun_affiche (id){
    $(".zone_tab").slideUp('400');
    $(id).slideDown('400');
}

function affiche_form(id){
    if($(id+" .rech_form ").is(":visible")){
        $(".rech_form").slideUp('400');
    }else{
        $(id+" .rech_form ").slideDown('400');
    }
}



function Add_tr(val){
    var tr = $(val).parents('tr');
    var tmp_tr = "<tr class='text-center' ><td colspan='4'><textarea class='form-control' rows='2'></textarea>  <button onclick='saveTr(this)' class='btn btn-primary-2 float-right ml-2'>Enregistrer</button>  <button onclick='remove_row(this)' class='btn btn-danger-2 float-right'>Annuler</button> </td></tr>";
    $(tr).after(tmp_tr);
}

function edit_tr(val){
    $("#com_1,#com_11").remove();
    var tr = $(val).parents('tr');
    $(tr).find("td").each(function(indx,el){
        $(el).attr("rowspan","");
    })

    var tmp_tr = "<tr class='text-center' ><td colspan='4'><textarea class='form-control' rows='2'>le fichier est corrompu</textarea>  <button onclick='saveTr(this)' class='btn btn-primary-2 float-right ml-2'>Enregistrer</button>  <button onclick='remove_row(this)' class='btn btn-danger-2 float-right'>Annuler</button> </td></tr>";
    $(tr).after(tmp_tr);
}

function remove_row(val){
    var tr = $(val).parents('tr');
    $(tr).remove();
}

function saveTr(val){
    var message = $(val).parents("td").find("textarea").val();
    var tr = $(val).parents("tr");
    var td = $(val).parents("tr").find("td");
    $(td).remove();
    $(tr).addClass("bg-danger","text-center");
    var tmp_tr = "<td colspan='4'>"+message+"</td>";
    $(tr).append(tmp_tr);
}

function active_valide(){
    var x = false;
    $(".is_active").each(function(index,el){
        if(!$(el).is(":checked") && !x){
            x = true;
        }
    })
    if(x){
        $("#valider , #refuse").attr("disabled","disabled");
    }else{
        $("#valider").removeAttr("disabled");
        $("#refuse").removeAttr("disabled");
    }

}


function affiche_refus(id){
    if($(id).is(":visible")){
        $(id).slideUp('400');
        $("#valider").show();
        $("#refuse").show();
        $("#complement").show();
    }else{
        $(id).slideDown('400');
        $("#valider").hide();
        $("#refuse").hide();
        $("#complement").hide();
    }
}

function save_refus(){
    swal({
        title: 'Êtes-vous sûr de refusé la demande ?',
        text: "Vous ne pourrez pas annuler cette action !",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#376afb',
        cancelButtonColor: '#dc3545',
        confirmButtonText: 'Oui, Refusé !',
        cancelButtonText: "Annuler",
        closeOnConfirm: false,
        closeOnCancel: false
    }, function (isConfirm) {
        if (isConfirm) {
            swal("Refusé!", "La demande a bien été refusé", "success");
        } else {
            swal("Annulé!", "La demande n'a pas été refusé", "error");
        }
    });
}


function test_date(){
    var d = $("#inp_rdv").val();
    if(d=="2021-02-12"){
        swal("Attention!", "il existe déja un rendez vous a cette date", "warning");
    }else{
        swal({
            title: "Prise de rendez-vous!",
            text: "votre rendez-vous à été bien pris en charge",
            type: "success"
        }, function() {
            fun_affiche('#Nouvdemande');
        });

    }
}

function alert_attache2(){
    swal({
        title: "Rapport",
        text: "Le rapport a été bien attaché",
        type: "success"
    }, function() {
        fun_affiche('#Nouvdemande');
    });
}
function alert_superficie(){
    swal({
        title: "Redevance",
        text: "La Redevance a été bien pris en compt",
        type: "success"
    }, function() {
        fun_affiche('#Nouvdemande');
    });
}

function active_valide2(){
    var x = false;
    $(".is_active2").each(function(index,el){
        if(!$(el).is(":checked") && !x){
            x = true;
        }
    })
    if(x){
        $("#valider2").attr("disabled","disabled");
    }else{
        $("#valider2").removeAttr("disabled");
    }

}

function change_text(val,collapsein,collapsout){
    $(collapsein).show();
    $(collapsout).hide();
    $(val).removeAttr("disabled");
}

function disable_text(type,collapsein,collapsout,val){
    $(collapsein).show();
    $(collapsout).hide();
        $.ajax({
            type : "GET",
            url :"/api/UpdateDocumentImportationDechet",
            data:{
                "type":type,
                "val":val,
            },
            success : function(data) {
                $(type).attr("disabled","disabled");
            },
            error : function(response) {
                alert("error")
            }
        });
}

function disable_text2(type,collapsein,collapsout,val){
    $(collapsein).show();
    $(collapsout).hide();
    $.ajax({
        type : "GET",
        url :"/api/UpdateDocumentImportationND",
        data:{
            "type":type,
            "val":val,
        },
        success : function(data) {
            $(type).attr("disabled","disabled");
        },
        error : function(response) {
            alert("error")
        }
    });
}

function disable_text3(type,collapsein,collapsout,val){
    $(collapsein).show();
    $(collapsout).hide();
    $.ajax({
        type : "GET",
        url :"/api/UpdateDocumentInstalation",
        data:{
            "type":type,
            "val":val,
        },
        success : function(data) {
            $(type).attr("disabled","disabled");
        },
        error : function(response) {
            alert("error")
        }
    });
}

function disable_text6(type,collapsein,collapsout,val){
    $(collapsein).show();
    $(collapsout).hide();
    $.ajax({
        type : "GET",
        url :"/api/UpdateDocumentExportation",
        data:{
            "type":type,
            "val":val,
        },
        success : function(data) {
            $(type).attr("disabled","disabled");
        },
        error : function(response) {
            alert("error")
        }
    });
}

function disable_text7(type,collapsein,collapsout,val){
    $(collapsein).show();
    $(collapsout).hide();
    $.ajax({
        type : "GET",
        url :"/api/UpdateDocumentTr",
        data:{
            "type":type,
            "val":val,
        },
        success : function(data) {
            $(type).attr("disabled","disabled");
        },
        error : function(response) {
            alert("error")
        }
    });
}

function disable_text8(type,collapsein,collapsout,val){
    $(collapsein).show();
    $(collapsout).hide();
    $.ajax({
        type : "GET",
        url :"/api/UpdateDocumentEie",
        data:{
            "type":type,
            "val":val,
        },
        success : function(data) {
            $(type).attr("disabled","disabled");
        },
        error : function(response) {
            alert("error")
        }
    });
}




function disable_textCT(type,collapsein,collapsout,val){
    $(collapsein).show();
    $(collapsout).hide();
    $.ajax({
        type : "GET",
        url :"/api/UpdateDocumentCT",
        data:{
            "type":type,
            "val":val,
        },
        success : function(data) {
            $(type).attr("disabled","disabled");
        },
        error : function(response) {
            alert("error")
        }
    });
}


function back_up(from,to){
    $(to).val($(from).val());

}

function fun_affiche2 (id,val){
    $(".bg_hover").removeClass("active");
    $(val).parent(".bg_hover").addClass("active");
    $(".zone_tab").slideUp('400');
    $(id).slideDown('400');
}

function affiche_tab(id_show,class_hide,el){
    $(".nav.nav-tabs .nav-link").removeClass("active");
    $(class_hide).hide();
    $(id_show).show();
    $(el).addClass("active");
}

function select_comment(id_comment,val_select,val_declenche){
    var tab = val_declenche.split(",");
    var iddd=false;
    $(tab).each(function(indx,el){

        if( (el==val_select) && !iddd){
            iddd=true;
        }
    });
    if (iddd){
        $(id_comment).removeClass("collapse");
    }else{
        $(id_comment).addClass("collapse");
    }
}

function affichebyId(ids,val,clasTat){
    var tab = ids.split(",");
    var iddd=false;
    $(tab).each(function(indx,el){
        console.log(el);
        var tab2 = el.split("|");
        if(tab2[0]==val && !iddd){
            iddd=true;
            $(clasTat).addClass("hidden");
            $(tab2[1]).removeClass("hidden");
        }
    });
}

function fun_affiche_before(step){
    swal({
        title: 'Etape précedente',
        text: "Souhaitez vous envoyé la demande à l'étape: "+step+"?",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#376afb',
        cancelButtonColor: '#dc3545',
        confirmButtonText: 'Oui, Confirmer !',
        cancelButtonText: "Annuler",
        closeOnConfirm: false,
        closeOnCancel: true
    }, function (isConfirm) {
        if (isConfirm) {
            swal({
                title: "Demande envoyé",
                text: "La Dossier a été envoyé a l'etape précédente",
                type: "success"
            }, function() {
                fun_affiche('#Nouvdemande');
            });
        } else {
            fun_affiche('#Nouvdemande');
        }
    });
}

function confirm_signature(class_show,class_hide){
    $(class_show).show("slow");
    $(class_hide).hide("slow");
}

function signer_test(){
    swal({
        title: 'Type de signature',
        text: "Quel type de signature voulez vous utiliser ?",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#376afb',
        cancelButtonColor: '#dc3545',
        confirmButtonText: 'Signature Humide',
        cancelButtonText: "Signature éléctronique",
        closeOnConfirm: true,
        closeOnCancel: false
    }, function (isConfirm) {
        if (isConfirm) {
            confirm_signature(".step2",".my_tab_tab");
        } else {
            swal({
                title: "Demande signé",
                text: "La Demande à été signé automatiquement",
                type: "success"
            }, function() {
                fun_affiche('#Nouvdemande');
            });
        }
    });
}

function alert_message_perso(title,text,type){
    swal({
        title: title,
        text: text,
        type: type
    }, function() {
        fun_affiche('#Nouvdemande');
    });
}

function checkall_check(class_check,val){
    if($(val).is(":checked")){
        $("."+class_check).prop("checked",true)
    }else{
        $("."+class_check).prop("checked",false)
    }
}

function GenererBV(id){
    swal({
        title: "Générer le recus",
        text: "le recus à été générer avec success",
        type: "success"
    }, function() {
        window.location.href="tab.pdf";
        fun_affiche('#Nouvdemande');
    });

}

function alert_message_perso_id(title,text,type,id){
    swal({
        title: title,
        text: text,
        type: type
    }, function() {
        fun_affiche(id);
    });
}



