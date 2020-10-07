<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <title>Home</title>
</head>
<style>
    *{
        box-sizing: border-box;
    }
    .l_header{
        position: fixed;
        z-index: 10000;
        left: 0;
        top: 0;
        width: 100%;
        height: 56px;
        background-image: linear-gradient(94deg,#ccfffc,#999999);
        box-sizing: border-box;
    }
    header{
        max-width: 1000px;
        margin: 0 auto;
    }
    .header_left{
        float: left;
    }

    .header_right{
        float: right;
    }
    .login_button{
        margin-top: 10px;
        text-align: center;
        min-width: 80px;
        line-height: 15px;
        font-size: 12px;
        color: black;
        padding: 8px 0 7px;
        margin-right: 16px;
    }
    .site_logo{
        float: left;
        margin-top: 3px;
    }
    .site_logo_img{
        width: 120px;
        height: 45px;
        background: url(resources/img/binkyungLogo12.png);
        background-size: 100%;
        margin-left: 0;
    }
    .site-family{
        float: left;
        margin-top: 18px;
        margin-left: 16px;
        padding-left: 16px;
        height: 20px;
        line-height: 20px;
        border-left: 1px solid;
        border-color: rgba(56, 54, 54, 0.5);
    }
    .site-family_button{
        background: none;
        color: rgb(17, 106, 240);
        line-height: 17px;
        font-size: 14px;
        border: 0;
        outline: 0;
        cursor: pointer;
    }

    /* .site-family_on .site-family-list{
        display: block;
        
    } */
    .site-family-list_on{
        display: block;
        position: absolute;
        width: 472px;
        top: auto;
        left: auto;
        transform: none;
        padding-left: 8px;
        padding-bottom: 8px;
        box-sizing: border-box;
        background: #fff;
        box-shadow: 0 4px 8px 0 rgba(0,0,0,.15);
        z-index: 100;
    }
    .site-family-list{
        display: none;
        position: absolute;
        width: 472px;
        top: auto;
        left: auto;
        transform: none;
        padding-left: 8px;
        padding-bottom: 8px;
        box-sizing: border-box;
        background: #fff;
        box-shadow: 0 4px 8px 0 rgba(0,0,0,.15);
        z-index: 100;
    }
    .site-family-list_title{
        position: relative;
        padding-top: 20px;
        padding-bottom: 16px;
        padding-left: 24px;
        line-height: 19px;
        font-size: 16px;
        color: #1ea1f7;
    }
    .site-family-icon{
        width: auto;
        height: auto;
        display: block;  
        text-align: center;
    }
    .site-family_icon{
        height: 24px;
        vertical-align: middle;
    }
    .site-family_name{
        margin-top: 6px;
        display: block;
        text-align: center;
    }
    .site-family-list_item a {
        display: block;
        float: left;
        width: 152px;
        padding-top: 16px;
        padding-bottom: 16px;
        table-layout: fixed;
        text-decoration: none;
        color: inherit;
    }
    ul{
        list-style: none;
    }
</style>
<script>
    
    function openmenu(){

        var a = document.getElementById("site-family-list").className
        console.log(a)
        if(a == "site-family-list"){
            document.getElementById("site-family-list").className = "site-family-list_on";
        }

        if(a == "site-family-list_on"){
            document.getElementById("site-family-list").className = "site-family-list";
        }
    }

    // window.onload=function(){

    //     var body = document.querySelector("body");
    //     body.addEventListener('click', clickBodyEvent);

    //     function clickBodyEvent(event){
    //         var target = event.target
    //         console.log(target);
    //         var a = event.currentTarget.querySelector(".site-family");
            
    //         var b = event.currentTarget.querySelector(".site-family_button");
    //         var c = event.currentTarget.querySelector(".site-family-list");
    //         var d = event.currentTarget.querySelector(".site-family-list_item");
    //         var e = event.currentTarget.querySelector(".site-family-list_title");
    //         var f = event.currentTarget.querySelector(".site-family-icon");
    //         var g = event.currentTarget.querySelector(".site-family_name");
    //         if(a || b || c || d || e || f || g){
    //             document.getElementById("site-family-list").className = "site-family-list_on";
    //         }
    //         else{
    //             document.getElementById("site-family-list").className = "site-family-list";
    //         }
    //     }
    // }
</script>
<body>
    <div class="l_header">
        <header class="header">
            <div class="header_left"> 
                <div class="site">
                    <div class="site_logo">
                        <a href="#">
                            <div class="site_logo_img"></div>
                        </a>
                    </div>
                    <div class="site-family">
                        <button class="site-family_button" onclick="openmenu();">
                            MENU
                            <div style="float: right;">
                                <img src="https://talk.op.gg/images/icon-dropdown-down-wh@2x.png" width="30px" style="margin-top: -7px;">
                            </div>
                        </button>
                        <ul class="site-family-list" id="site-family-list">
                            <li class="site-family-list_title">
                                    <img src="resources/img/footerlogo.png" width="74" alt="BK.GG">
                            </li>
                            <li class="site-family-list_item">
                                <a href="#">
                                    <span class="site-family-icon">
                                        <img class="site-family_icon" src="resources/img/lion.jpg" alt="lion" height="24">
                                    </span> 
                                    <span class="site-family_name">자유게시판</span>
                                 </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="header_right"> 
                <div class="site">
                    <div class="site_logo">
                        <button class="login_button">로그인</button>
                    </div>
                </div>
            </div>
        </header>
    </div>
</body>
</html>