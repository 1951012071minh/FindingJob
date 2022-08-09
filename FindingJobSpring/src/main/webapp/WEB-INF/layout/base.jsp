<%-- 
    Document   : base
    Created on : Jul 24, 2022, 1:05:52 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title" />
        </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <style>
            * {
                margin: 0;
                padding: 0;
            }

            /*********** dung chung*******/
            /*****************************/
            .pe-3 {
                padding-right: 1rem !important;
            }
            .logo img{
                width: 70px;
                height: 50px;
            }
            .align-self-center {
                align-self: center !important;
            }

            .justify-content-start {
                justify-content: flex-start !important;
            }

            /*****************************/
            .below-nav {
                background-color: black;
                height: 50vh;
                padding: 88px 0 20px 0;
            }

            .nav-item {
                font-size: 16px;
                margin-left: 20px;
            }

            .main {
                background-color: #e9e9e9;
                padding-bottom: 50px;
                padding-top: 20px;
            }

            .navbar-bran {
                font-size: 35px;
                font-weight: 700;
            }

            .below-nav-list {
                padding: 0 48px 30px 48px;
            }

            .below-nav .below-nav-list>li {
                list-style: none;
                color: white;

                margin-top: 40px;
            }

            .below-nav .form-control {
                width: 65%;
                height: 45px;
                color: black;
                font-size: 18px;
                font-weight: 450;
            }

            .btn-primary {
                background-color: #D82727;
                font-size: 20px;
                font-weight: 600;
                border: none;
                padding: 10px 20px;
                margin-left: 10px;
                color: white;
            }

            .list-langue {
                padding: 0;
                margin-left: -15px;
            }

            .list-langue li {
                display: inline-block;
                margin-top: 0;
                margin-left: 15px;
                padding: 0;

            }

            a {
                text-decoration: none;
                color: white;

            }

            .list-langue>li>a:hover {
                background-color: white;
                color: black;
            }

            .card {
                margin-top: 20px;
                border: none;
                min-height: 306px;
            }

            .card:hover {
                box-shadow: 2px 2px 5px 1px gray;
            }

            .tittle-card {
                padding-bottom: -10px;
                padding-top: 60px;
                font-weight: 400;
            }

            .card-img-top {
                width: 170px;
                height: 170px;
                margin: auto;
                margin-top: 30px;
                margin-bottom: 20px;
                line-height: 170px;
            }

            .card-title {
                margin-top: 10px;
                font-size: 19px;
                height: 56px;
            }

            /****************/
            /********* footer***********/
            .footer {
                background-color: black;

            }

            .footer-list {
                padding: 0;
            }

            .footer-info-link li {
                list-style: none;
                font-size: 17px;
                margin-top: 5px;
                line-height: 30px;
                color: #929497;

            }

            .footer-info-link li a {
                color: #929497;
            }

            .footer-info-link li:hover a {
                color: white;
                border: 1px solid white;
                transition: all .2s;
                transform: scale(1.1);
            }

            .footer-info-link {
                margin-top: 20px;
            }

            .footer-tittle {
                font-size: 20px;
                color: #e1e1e4;
                letter-spacing: 0.02em;
                margin: 0 0 20px;

                font-weight: 400;
                /* line-height: 22px; */
                text-transform: uppercase;

            }

            .img-titlt-blog {
                width: 100%
            }

            /****************/
            /*******dropdownlist*******/
            /**************************/
            .btn-primary {
                font-size: 16px;
            }

            /**********blog************/
            .blog {
                margin-top: 20px;
            }

            .blog_description-content {
                padding-top: 10px;
                color: #727272;
                font-size: 13px;
            }

            .blog_description-title {

                margin-top: -5px;
                font-size: 20px;
                line-height: 20px;
                margin-bottom: 0;
                font-weight: normal;
            }

            .blog_read-more {
                margin-top: 30px;
            }

            .text-copyright {
                text-align: center;
            }

            .hr {
                border-top: 1px solid #fff;
            }

            ul.cat-menu {
                display: none;
                padding: 0;
                margin: 0;
                position: absolute;
            }

            .dropdown:hover .cat-menu {
                display: block;
            }

            .cat-menu-item--box {
                position: relative;
                padding-left: 20px;
                padding-right: 10px;
            }

            .arrowright-icon {
                position: absolute;
                top: 15px;
                right: 5px;
            }

            .dropdown-items {
                list-style: none;
                height: 40px;
                width: 230px;
                line-height: 40px;
                padding: 0;
                box-sizing: border-box;
                border-bottom: 1px solid #222021;
            }

            .dropdown-items:hover {
                color: #000 !important;
                background-color: rgb(211, 211, 211);
            }

            .dropdown-items:hover span {
                color: #000 !important;
            }

            .dropdown-items:hover>.cat-menu__sub-menu {
                display: flex;
            }

            .cat-menu__sub-menu {
                display: none;
                margin-left: 230px;
                position: absolute;
                width: 400px;
                top: 0;
                padding: 0 10px;
                list-style: none;
                box-sizing: border-box;
                background-color: #222021;
                border-left: 1px solid #222021;
                color: #ececec;
                min-width: fit-content;
                box-shadow: 8px 3px 15px rgb(0 0 0 / 50%);
            }

            .cat-menu__sub-menu>div {
                white-space: nowrap;
                display: flex;
                flex-direction: column;
                padding: 0 10px;
            }

            .cat-menu__sub-menu-item {
                text-decoration: none;
                color: #fff;
                display: block;
            }



            .cat-menu__sub-menu-item:hover:not(.view-all) {
                color: #3b3b3b !important;
                background-color: #eee;
                transition: all 0.2s ease;
            }

            /*** icon search*********/
            /************************/
            .search-form__keyword-section {
                /* z-index: 999; */
                position: relative;
                flex-grow: 1;
                display: flex;
                height: 45px;
                line-height: 45px;
                background: white;
                border: 1px solid #bebebe;
            }

            .input-group {
                position: relative;
                display: flex;
                flex-wrap: wrap;
                align-items: stretch;
                width: 100%;
            }

            .search-form__icon {
                padding-left: 10px;
                padding-right: 10px;

            }

            .form-control {
                margin-top: -1px;
                margin-right: -10px;
                border-left: none;
                border-right: none;
            }

            .search-form__keyword-section:hover .list-drop-search {
                display: block;
            }

            input {
                outline: none !important;
                box-shadow: none
            }

            .form-control:focus {
                outline: none;
                box-shadow: none
            }


            .svg-icon {
                display: flex;
                align-items: center;
            }

            /****box search*****/

            .ts-dropdown {
                color: #343a40;
                font-family: inherit;
                font-size: inherit;
                line-height: 1.5;
            }

            .w-100 {
                width: 100% !important;
            }

            .m-0 {
                margin: 0 !important;
            }

            .list-drop-search {
                border-top: 1px solid #000;
                display: none;
            }

            /****** login ***************/
            /****************************/
            /* body {font-family: Arial, Helvetica, sans-serif;} */

            /* Full-width input fields */
            .input_username,
            .input_password,
            .input_text {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                box-sizing: border-box;
                border-radius: 10px;
            }

            /* Set a style for all buttons */
            .btn_login {
                background-color: rgba(44, 149, 255);
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                margin: 20px 0 0px 0;
                width: 100%;
            }

            button:hover {
                opacity: 0.8;
            }

            /* Extra styles for the cancel button */
            .cancelbtn {
                width: auto;
                padding: 10px 18px;
                background-color: #f44336;
            }

            /* Center the image and position the close button */
            .imgcontainer {
                text-align: center;
                margin: 24px 0 12px 0;
                position: relative;
            }

            img.avatar {
                width: 40%;
                border-radius: 50%;
            }

            .footer_login {
                padding: 16px;
            }

            span.psw {
                float: right;
                padding-top: 16px;

            }

            span.span_left {
                float: left;
            }

            span.psw a {
                color: rgb(87, 167, 248);
            }

            /* The Modal (background) */
            .modal {
                display: none;
                /* Hidden by default */
                position: fixed;
                /* Stay in place */
                z-index: 1;
                /* Sit on top */
                left: 0;
                top: 0;
                width: 100%;
                /* Full width */
                height: 100%;
                /* Full height */
                overflow: auto;
                /* Enable scroll if needed */
                background-color: rgb(0, 0, 0);
                /* Fallback color */
                background-color: rgba(0, 0, 0, 0.4);
                /* Black w/ opacity */
                padding-top: 60px;
            }

            /* Modal Content/Box */
            .modal-content {
                background-color: #fefefe;
                border-radius: 20px;
                padding: 20px 10px;
                margin: 5% auto 15% auto;
                /* 5% from the top, 15% from the bottom and centered */
                border: 1px solid #888;
                width: 45%;
                /* Could be more or less, depending on screen size */
                box-shadow: 1px 2px 2px 1px;
            }

            .below_btn_login {
                display: flex;
                justify-content: space-between;
            }

            .check_Account {
                margin-top: -10px;
            }

            /* The Close Button (x) */
            .close {
                position: absolute;
                right: 25px;
                top: 0;
                color: #000;
                font-size: 35px;
                font-weight: bold;
            }



            /* Add Zoom Animation */
            .animate {
                -webkit-animation: animatezoom 0.6s;
                animation: animatezoom 0.6s
            }

            @-webkit-keyframes animatezoom {
                from {
                    -webkit-transform: scale(0)
                }

                to {
                    -webkit-transform: scale(1)
                }
            }

            @keyframes animatezoom {
                from {
                    transform: scale(0)
                }

                to {
                    transform: scale(1)
                }
            }

            /* Change styles for span and cancel button on extra small screens */
            @media screen and (max-width: 300px) {
                span.psw {
                    display: block;
                    float: none;
                }

                .cancelbtn {
                    width: 100%;
                }
            }

            .hr_signlog {
                /* margin-bottom: 30px;
                margin-top: -5px; */
                color: rgb(47, 48, 48);
                height: 20px;
            }

            /************ sigin_company************/
            .signin_company {

                padding-top: 80px;
            }
            .btn_login_company{
                margin: 0 !important;
            }
            /*********login_candidate***********/
            #login_section {
                padding-top: 55px;
                width: 100%;
                /* height: 100vh; */

            }

            .login_left-img {
                position: relative;
                background-color: rgba(1, 50, 83, 0.8);
                width: 100%;
                height: 100vh;
            }

            .login_left-img img {
                opacity: .5;
                width: 100%;
                height: 100%;
            }

            .login_left-title {
                position: absolute;
                top: 200px;
                left: 140px;
            }

            .login_left-title h5,
            .login_left-title h4 {
                color: #fff;

            }

            .login_left-title h5 {
                font-size: 80px;
            }

            .login_left-title h4 {
                font-size: 48px;
            }
            .modal-content_login{
                width: 90%;
                padding: 0px 0 10px 40px;
            }
            /********* signin***********/
            /***************************/
            .form-control_inputFile{
                margin-top: 5px;
                border: 1px solid #ccc;
                border-radius: 5px;

            }
            /******moreinfomation*********/

            .notification {
                width: 80%;
                margin-left: 60px;
                color: rgb(116, 115, 115);
                font-weight: 500;
            }

            .btn-dropdown {
                border: 1px solid #ccc;
                border-radius: 10px;
                background-color: white;
                text-align: left;
            }

            .input_date {
                width: 100%;
                border: 1px solid #ccc;
                border-radius: 10px;
                height: 50px;
                padding: 5px 10px;
                margin-top: 5px;
            }

            .form_moreinfo {
                box-shadow: 1px 2px 7px 3px #ccc;
                padding: 10px 20px;
                margin-top: 5px;
            }

            /*********choosemayor***********/
            .btn_choose_mayor {
                width: 200px;
                height: 60px;
                background-color: rgba(7, 140, 150, 0.4);
                color: white;
                text-align: center;
                line-height: 60px;
                border-radius: 20px;
                /* border: 1px solid rgba(8, 223, 238, 0.4); */

            }

            .btn_choose_mayor:hover {
                background-color: rgba(24, 222, 236, 0.4);
            }

            .btn_choose_mayor:focus {
                background-color: rgba(184, 239, 243, 0.4);
            }

            .oneline_choosemayor {
                margin-top: 20px;
                display: flex;
                justify-content: space-between;

                padding-left: 50px;
            }

            .btn_login_choosemayor {
                margin-left: 40px;
                width: 87%;
                border-radius: 10px;
            }

            /**********job-page************/
            .flex {
                display: flex;
            }

            .wp-container {
                max-width: 1280px;
                margin-top: 20px;
            }

            .btn_find_jobpage {
                line-height: 54px;
                margin-left: 10px;
                border-radius: 5px;
                color: #000;
                background-color: rgb(173, 223, 238);
                font-weight: 600;
                text-align: center;
                flex: 1;
            }

            .btn_find_jobpage button {
                font-weight: 600;
                color: #000;
            }

            .btn_drop_jobpage {
                height: 70px;
            }

            .select_job {
                flex: 2;
            }

            .select_city {
                flex: 2;
            }

            .list-link {
                list-style: none;
            }

            .list-link li {
                margin-left: 10px;
                padding: 0;
            }

            #list_job {
                margin-top: -20px;
                margin-bottom: 20px;
            }

            .detail-job ul {
                display: flex;
                padding: 0;
                margin-bottom: 0px;
            }

            .detail-job>ul>li {
                margin-right: 20px;
            }

            .title-job {
                color: #3e8ff8;
            }

            .company-name {
                color: #727272;
            }

            .content-job {
                display: flex;
                margin-left: 40px;
                border: 1px solid rgb(216, 240, 245);
                padding: 10px 20px;
                background-color: rgb(250, 254, 255);
                margin-top: 20px;
                border-radius: 10px;
            }

            .content-job:hover {
                box-shadow: 5px 5px 15px #888888;
            }

            .name-content {
                margin-left: 40px;
            }

            ul li {
                list-style: none;

            }

            .logo_company {
                width: 100px;
                height: 100%;
                margin-right: 20px;
                border: 0.5px solid #ccc;
                border-radius: 10px;
            }

            .job-content_icon {
                padding-bottom: 2px;
                margin-right: 3px;
                font-size: 25px;
                opacity: .5;
            }

            /********* ul right listjob******/
            .group-menu {
                border: 1px solid #ccc;
                margin-left: 20px;
                padding: 10px 20px 10px 20px;
                margin-top: 20px;
                border-radius: 5px;
            }

            .group-menu-tittle h2 {
                text-align: center;
                font-size: 1.5rem;
                font-weight: 400;
                padding-bottom: 20px;
                border-bottom: 2px solid #000;
            }
            .group-menu-list{
                padding-left: 10px;
            }
            .group-menu-items{
                list-style: none;
                border-bottom: 1px dashed #ccc;
                line-height: 48px;
                color: black !important;
            }
            .group-menu-items a{
                color: rgb(133, 132, 132) !important;
            }
            #detail-info-job{
                padding-top: 50px;
                margin-bottom: 30px;
            }
            .ml--20{
                margin-left: -20px;
            }
            .detail-job-content{
                padding: 10px 30px;
                box-shadow: 1px 3px 3px 3px #ccc;

            }
            .detail-job-main{
                margin-left: 55px;
            }
            /********* detail-job**********/
            .logo-name_company{
                display: flex;
                width: 100%;
            }
            .logo-name_company h5{
                line-height: 80px;
            }
            .date_apply{
                padding: 0;
                margin-top: 15px;
            }
            .date_apply li{
                margin-right: 30px;
            }
            .section-btn_detailjob{
                margin-top: 20px;
                margin-bottom: 20px;
            }
            .btn_apply{
                background-color: #3e8ff8;
                padding: 10px 10px;
                text-align: center;
                width: 150px;
                color: white;
                border-radius: 10px;
            }
            .btn_share{
                background-color: #ffffff;
                border: 1px solid #ccc;
                border-radius: 10px;
                padding: 10px 10px;
                text-align: center;
                width: 150px;
                color: black;
                margin-left: 20px;
                font-weight: 600;
            }
            .detail-job-request > ul{
                display: flex;
                padding: 0;

            }
            .detail-job-request > ul > li{
                display: flex;
                flex-direction: column;
                flex: 1;
                position: relative;
                border-right: 1px solid #ccc;
                margin-right: 10px;
            }
            .detail-job-request > ul > li:last-child{
                border: none;
            }
            .detail-job-request > ul > li span:last-child{
                margin-top: 10px;
                font-weight: 600;
            }
            .detail-job-request > ul > li span:first-child{
                opacity: .5;
                font-weight: 600;
                font-size: 14px;
            }
            .detail-infomation-content ul{
                padding: 0;
            }
            .detail-infomation-content ul > li{
                display: flex;

            }
            .detail-infomation-content ul > li > span:first-child{
                font-size: 16px;
                font-weight: 500;
                opacity: .6;
                width: 50%;
            }
            .detail-infomation-content ul > li > span:first-child{
                width: 50%;
            }

        </style>
    </head>
    <body>
        <tiles:insertAttribute name="header" />
        <tiles:insertAttribute name="belownav" />
        <tiles:insertAttribute name="content" />
        <tiles:insertAttribute name="login" />
        <tiles:insertAttribute name="footer" />

    </body>
    <script src="<c:url value="/js/static.js" />"></script>
</html>
