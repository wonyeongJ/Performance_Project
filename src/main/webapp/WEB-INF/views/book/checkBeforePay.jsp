<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
            <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
			<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
			<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"
                id="bootstrap-css">
            <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        </head>
        <style>
           #top{
      width:100%;
      height: 50px;
      margin-bottom: 10px;
      background-color: white;
          border-style: hidden;
          border-bottom: 10px solid blanchedalmond;
      }
      #table-main{
      width:70%;
      height: 470px;
      margin-bottom: 10px;
     
      }
      .mainline, .middleline {
          display: table;
          width: 100%;
      margin-bottom: 10px;
        }
        .table-row {
          display: table-row;
        }
        .table-cell {
          display: table-cell;
          vertical-align: top; 
          /* padding: 0px 20px; */
          height: 150px;
        }

        #divMain{
          margin-left: 20px;
        }
        #payBtn {
   
        
        background-color: coral;
        color:white;
        border:none;
        border-radius: 5px;
        width: 100px;
        height: 50px;
        margin-top: 10px;
        box-shadow: 1px 1px 1px #bcbcbc;
        /* transition-duration: 0.1s; */
        }   
        #cancelBtn {
        
   
        background-color: coral;
        color:white;
        border:none;
        border-radius: 5px;
        width: 100px;
        height: 50px;
        margin-top: 10px;
        box-shadow: 1px 1px 1px #bcbcbc;
        /* transition-duration: 0.1s; */
        }   
         #payBtn:active {
          
          margin-left: 5px;
            margin-top: 5px;
            box-shadow: none;
        } 
        #cancelBtn:active {
            
          margin-left: 5px;
            margin-top: 5px;
            box-shadow: none;
        } 
        </style>

        <body> 
       
          <div id="top">
            <p align="right" style="font-size: 15px; font-weight: bold; color: black; padding-right: 100px;"> 
              공연예매> <span style="font-weight: bolder; color: crimson; display: inline; ">주문 · 결제</span> > 예매완료
                </p>
          </div>
          <div class="mainline">
            <div class="table-row">
              <div id="table-main" class="table-cell">
                <p style="font-size: xx-large; font-weight: bold; margin-left: 20px;">예매목록을 확인하세요.</p>
                <br><br>
                <div id = "divMain">
                  <span style="font-size: large;" >
                    <p>공연명: <span id="prfnm"></span></p>
                    <p>공연 번호: <span id="performance_num"></span></p>
                    <p>공연 극장: <span id="fcltynm"></span></p>
                    <p>구매자 ID: <span id="member_id"></span></p>
                    <p>구매자 E-MAIL: <span id="member_email"></span></p>
                    <p>예약날짜: <span id="selectedDate"></span></p>
                    <p>상연시간: <span id="selectedTime"></span></p>
                    <p>선택한 좌석: <span id="selectedSeats"></span></p>
                    <p>결제할 금액: <span id="priceValue"></span></p>
                  </span>
                </div>
                    <!-- <P>구매금액: </P> -->
                </div>
              </div>
            </div>
                <!-- <form method="post" action="done">  -->
                <input type="hidden" name="prfnm" id="prfnm_input" />
                <input type="hidden" name="performance_num" id="performance_num_input">
                <input type="hidden" name="fcltynm" id="fcltynm_input" />
                <input type="hidden" name="num" id="member_num_input">
                <input type="hidden" name="id" id="member_id_input">
                <input type="hidden" name="name" id="member_name_input">
                <input type="hidden" name="email" id="member_email_input">
                <input type="hidden" name="reservDate" id="selectedDate_input">
                <input type="hidden" name="reserveTime" id="selectedTime_input">
                <input type="hidden" name="seatId" id="selectedSeats_input">
                <input type="hidden" name="baseSeatPrie" id="baseSeatPrie_input">
                <input type="hidden" name="fcltynm" id="fcltynm_input">

                <input type="reset" style="color: crimson;" value="취소하기" id="cancelBtn">   
                <button type="submit"  style="color: blue;"
                    id="payBtn" >결제하기</button>
                 <!-- </form>  -->

            <script src="../../../resources/js/book/checkBeforePay.js"></script>
            <script src="../../../resources/js/iamportpay.js"></script>        

            <script>
                $(document).ready(function() {
                    $('#cancelBtn').click(function() {
                        if (confirm('예매를 취소하시겠습니까?')) {
                            let performanceNum = $('#performance_num').text(); 
                            window.opener.location.href = '../performance/detail?performance_num=' +  performanceNum;
                            window.close();
                        }
                    });
                });
            </script> 
        </body>

        </html>