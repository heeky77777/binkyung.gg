<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<style>
    footer{
        padding-bottom: 32px;
        background:#dddfe4;
    }
    
    .footer-link{
        background: #ebeef1;
        overflow: hidden;
        border-left: solid #dddfe4;
        max-width: 1044px;
        margin: 0 auto;
    }
    ul{
        list-style: none;
        display: block;    
    }    
    .footer-link-list_item{
        float: left;
        border-left: 1px solid #c5cbd0;
        padding-left: 8px;
        margin-left: 8px;        
        color: #7b858e;
        line-height: 19px;
        font-size: 16px;
        
        margin-left: 16px 
    }    
    .footer-link-list{
        padding-left: 16px;
        padding-right: 16px;
        max-width: 1044px;
        margin: 19px auto 19px -33px;
        height: 20px
    }
    .content{
        max-width: 1044px;
        margin: 0 auto;
    }
    .crop-info{
        line-height: 18px;
        font-size: 12px;
        color: #7b858e;
    }
    
    .footer-link-list_item footer-link-list_item--mobile-hide {
        display: none;
    }
</style>




<body>
    <div class="footer">
        <footer class="footer">
            <div class="footer-link">
                <ul class="footer-link-list">
                    <li class="footer-link-list_item footer-link-list_item--mobile-hide">
                        <a>회사소개</a>                        
                    </li>
                    <li class="footer-link-list_item">
                        <a>이용약관</a>
                    </li>
                    <li class="footer-link-list_item">
                        <a>개인정보처리방침</a>
                    </li>
                    <li class="footer-link-list_item">
                        <a>제휴</a>
                    </li>
                    <li class="footer-link-list_item">
                        <a>문의/피드백</a>
                    </li>
                    <li class="footer-link-list_item footer-link-list_item--mobile-hide">
                        <a>채용</a>
                    </li>
                </ul>                
            </div>
            <br>
            <div class="content">
                <div class="corp-info">
                   <img src="resources/img/footerlogo.png" style="display: block; margin-left: -10px; margin-bottom: 5px;">
                   
                    서울특별시
                    <br>
                    Tel : 010-0000-0000 / Fax: 02) 000-0000 (주)빈경지지 (대표자 : 임진빈, 송희경)
                    <br>
                    사업자등록번호 : 2020-09-29
                    <br><br>
                    @ BK.GG All rights reserved                
                </div>
            </div>           
            
        </footer>
        
        
        
    </div>

</body>
</html>