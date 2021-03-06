<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<spring:url value="/resources/yaml/core/js/yaml-focusfix.js" var="focusfixUrl"/>
<spring:url value="/resources/bootstrap/css/bootstrap.min.css" var="bootstrapCssUrl"/>
<spring:url value="/resources/bootstrap/css/bootstrap-rtl.css" var="responsiveBootstrapCssUrl"/>


<spring:url value="/resources/styles/datepicker.css" var="datePickerCssUrl"/>

<spring:url value="/resources/jquery/jquery.min.js" var="jqueryUrl"/>
<spring:url value="/resources/bootstrap/js/bootstrap.min.js" var="bootstrapJsUrl"/>
<spring:url value="/resources/bootstrap/js/boot-business.js" var="customJsUrl"/>
<spring:url value="/resources/js/jqBootstrapValidation.min.js" var="validationJsUrl"/>
<spring:url value="/resources/js/bootstrap-datepicker.js" var="datePickerJsUrl"/>
<spring:url value="/resources/fonts/Fonts.css" var="farsiFontsCssUrl"/>
<spring:url value="/resources/styles/main.css" var="mainCssUrl"/>
<spring:url value="/j_spring_security_check?path=${currentPath}" var="loginUrl"/>
<spring:url value="/logout" var="logoutUrl"/>


<spring:url value="/resources/sliedshow/js/jquery.slides.min.js" var="slideshowJsUrl"/>
<spring:url value="/resources/sliedshow/css/slide.css" var="slideshowCssUrl"/>

<%@ page contentType="text/html;charset=UTF-8" pageEncoding="utf-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="rtl">
<head>
    <meta charset="utf-8"/>
    <title>Twitter Bootstrap Theme Demo</title>

    <!-- Mobile viewport optimisation -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="${bootstrapCssUrl}" rel="stylesheet" type="text/css"/>
    <link href="${responsiveBootstrapCssUrl}" rel="stylesheet" type="text/css"/>

    <link href="${rtlCssUrl}" rel="stylesheet" type="text/css"/>
    <link href="${rtlBootstrapCssUrl}" rel="stylesheet" type="text/css"/>
    <link href="${rtlResponsiveBootstrapCssUrl}" rel="stylesheet" type="text/css"/>
    <link href="${farsiFontsCssUrl}" rel="stylesheet" type="text/css"/>
    <link href="${mainCssUrl}" rel="stylesheet" type="text/css"/>
    <link href="${datePickerCssUrl}" rel="stylesheet" type="text/css"/>

    <!-- this line should removed as soon as possible -->
    <link href="${slideshowCssUrl}" rel="stylesheet" type="text/css"/>
    <!--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ -->
</head>
<body class="demo-2col" style="padding-top:30px;">
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a href="index.html" style="font-family: Yekan; font-size: 25px;" class="navbar-brand"><b>آزما!</b></a>
        </div>

        <div class="navbar-inner">
            <div class="container">

                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">لیست
                            دوره های جاری<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="nav-header">دوره های آغاز شده</li>
                                <li><a href="product.html">ASP.NET</a></li>
                                <li><a href="product.html">C Sharp</a></li>
                                <li><a href="product.html">Entity Framework</a></li>
                                <li><a href="all_products.html">Linq</a></li>
                                <li class="divider"></li>
                                <li class="nav-header">دوره های در حال ثبت نام</li>
                                <li><a href="service.html">Java مقدماتی</a></li>
                                <li><a href="service.html">Scala مقدماتی</a></li>
                                <li><a href="service.html"> آشنایی با Fortran</a></li>
                                <li><a href="service.html"> برنامه نویسی تحت وب با QBasic</a></li>
                                <li><a href="service.html">کارگاه سیستم های خبره یا Expert Systems </a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">درباره ی ما<b
                                class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="our_works.html">تیم ما</a></li>
                                <li><a href="patnerships.html">پشتیبانی مالی</a></li>
                                <li><a href="leadership.html">همکاری فنی</a></li>
                                <li><a href="news.html">همکاری در کادر آموزش</a></li>
                                <li><a href="events.html">رویداد ها</a></li>
                                <li><a href="blog.html">روزنوشت ها</a></li>
                            </ul>
                        </li>
                        <li><a href="faq.html">سوالات رایج</a></li>
                        <li><a href="contact_us.html">تماس با ما</a></li>


                        <li class="dropdown <c:if test="${not empty error}">open</c:if>"><a href="#"
                                                                                            class="dropdown-toggle"
                                                                                            data-toggle="dropdown">کاربران
                            <b
                                    class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <sec:authorize access="isAnonymous()">
                                    <li>


                                        <div id="login_form">
                                            <form class="form-inline" method="post" action="${loginUrl}">
                                                <div class="control-group">
                                                    <label class="control-label">
                                                        آدرس ایمیل
                                                    </label>

                                                    <div class="controls">
                                                        <input
                                                                id="email"
                                                                name="j_username"
                                                                data-validation-required-message="پر کردن این گزینه ضروریست"
                                                                type="email"
                                                                data-validation-email-message="آدرس ایمیل صحیح نیست"
                                                                class="input-small"
                                                                placeholder="Email" required
                                                                />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">
                                                        رمز عبور
                                                    </label>

                                                    <div class="controls">
                                                        <input
                                                                id="password"
                                                                name="j_password"
                                                                minlength="6"
                                                                data-validation-required-message="پر کردن این گزینه ضروریست"
                                                                data-validation-minlength-message="پسورد خیلی کوتاه است"
                                                                type="password"
                                                                class="input-small"
                                                                placeholder="Password"
                                                                required
                                                                />

                                                    </div>
                                                </div>


                                                </p>
                                                <button id="loginbtn" type="submit" class="btn">
                                                    Sign in
                                                </button>
                                                <label class="checkbox" id="rememberme">
                                                    Remember me
                                                    <input id="remembermeCheckbox" type="checkbox"/>
                                                </label>
                                                <c:if test="${not empty error}">
                                                    <label class="alert-danger" id="credentialError">
                                                        <spring:message code="${error}"></spring:message>
                                                    </label>
                                                </c:if>


                                            </form>
                                        </div>
                                    </li>
                                    <li><a href="register.html">عضویت</a></li>
                                    <li><a href="recovery.html">فراموشی پسورد</a></li>
                                    <li><a href="help.html">راهنمایی</a></li>
                                </sec:authorize>
                                <sec:authorize access="isAuthenticated()">
                                    <li><sec:authentication property="principal.username"></sec:authentication> خوش
                                        آمدید
                                    </li>
                                    <li><a htef="">پروفایل من</a></li>
                                    <li><a href="${logoutUrl}">خروج</a></li>
                                </sec:authorize>

                            </ul>
                        </li>


                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div>
    <sec:authorize access="isAuthenticated()">
        welcome: <sec:authentication property="principal.username"/>
    </sec:authorize>
    <tiles:insertAttribute name="body"/>
</div>


<script src="${jqueryUrl}"></script>
<script src="${bootstrapJsUrl}"></script>
<script src="${customJsUrl}"></script>
<script src="${validationJsUrl}"></script>
<script src="${datePickerJsUrl}"></script>

<!-- SlidesJS Required: Link to jquery.slides.js -->
<script src="${slideshowJsUrl}"></script>
<!-- End SlidesJS Required -->
<!-- SlidesJS Required: Initialize SlidesJS with a jQuery doc ready -->
<script>
    $(function () {
        $('#slides').slidesjs({
            width: 400,
            height: 200,
            navigation: true
        });
        $("input").not("[type=submit]").jqBootstrapValidation();
        $('#dp3').datepicker();
    });
</script>
</body>
</html>