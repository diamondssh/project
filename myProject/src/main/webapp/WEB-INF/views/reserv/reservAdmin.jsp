<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Calendar</title>


<script src="http://code.jquery.com/jquery-latest.js"></script>

<script>
function calendar_in(a){
	//alert(a);
	 window.open("reservListAll.do?dateNum="+a+"", "", "width=1280px, height=800px, status=1");
	
	
}

function Calendar(id, date) {
   var Calendar = document.getElementById(id);
   
   
   if (typeof (date) !== 'undefined') {
      date = date.split('-');
      date[1] = date[1] - 1;
      date = new Date(date[0], date[1], date[2]);
   } else {
      var date = new Date();
   }

   // 년도를 구함
   var currentYear = date.getFullYear();

   // 연을 구함. 월은 0부터 시작하므로 +1, 12월은 11을 출력
   var currentMonth = date.getMonth() + 1;

   // 오늘 일자
   var currentDate = date.getDate();

   date.setDate(1);

   // 이번달 1일의 요일은 출력. 0은 일요일 6은 토요일
   var currentDay = date.getDay();

   // 각 달의 마지막 일을 계산, 윤년의 경우 년도가 4의 배수이고 100의 배수가 아닐 때 혹은 400의 배수일 때 2월달이 29일.
   var dateString = new Array('sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat');
   var lastDate = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
   if ((currentYear % 4 === 0 && currentYear % 100 !== 0)
         || currentYear % 400 === 0)
      lastDate[1] = 29;

   // 총 몇 주인지 구함.
   var currentLastDate = lastDate[currentMonth - 1];
   var week = Math.ceil((currentDay + currentLastDate) / 7);

   // 만약 이번달이 1월이라면 1년 전 12월로 출력.
   if (currentMonth != 1)
      var prevDate = currentYear + '-' + (currentMonth - 1) + '-'
            + currentDate;
   else
      var prevDate = (currentYear - 1) + '-' + 12 + '-' + currentDate;

   // 만약 이번달이 12월이라면 1년 후 1월로 출력.
   if (currentMonth != 12)
      var nextDate = currentYear + '-' + (currentMonth + 1) + '-'
            + currentDate;
   else
      var nextDate = (currentYear + 1) + '-' + 1 + '-' + currentDate;

   // 10월 이하라면 앞에 0을 붙여줌.
   if (currentMonth < 10)
      var currentMonth = '0' + currentMonth;

   var calendar = '';
   calendar += '<center>'
   calendar += '<div id="header">';
   calendar += '         <span><a href="#" class="button left" onclick="Calendar(\''
         + id + '\', \'' + prevDate + '\')"><</a></span>';
   calendar += '         <span id="date">' + currentYear + '년 ' + currentMonth
         + '월</span>';
   calendar += '         <span><a href="#" class="button right" onclick="Calendar(\''
         + id + '\', \'' + nextDate + '\')">></a></span>';
   calendar += '      </div>';
   calendar += '      <table border="1" cellspacing="0" cellpadding="0">';
   calendar += '         <thead>';
   calendar += '            <tr>';
   calendar += '              <th class="sun" scope="row">일</th>';
   calendar += '              <th class="mon" scope="row">월</th>';
   calendar += '              <th class="tue" scope="row">화</th>';
   calendar += '              <th class="wed" scope="row">수</th>';
   calendar += '              <th class="thu" scope="row">목</th>';
   calendar += '              <th class="fri" scope="row">금</th>';
   calendar += '              <th class="sat" scope="row">토</th>';
   calendar += '            </tr>';
   calendar += '         </thead>';
   calendar += '         <tbody>';

   var dateNum = 1 - currentDay;


   for (var i = 0; i < week; i++) {
      calendar += '<tr>';
      for (var j = 0; j < 7; j++, dateNum++) {
         if (dateNum < 1 || dateNum > currentLastDate) {
            calendar += '<td class="' + dateString[j] + '"> </td>';
            continue;
         }
         
         var totalDate = currentYear + currentMonth + dateNum;

         
         //window.open("pwd_find.nhn", "비번찾기", "width=400,height=500");
         //alert(currentYear+currentMonth+dateNum);
   
         
         //alert(currentYear+currentMonth+dateNum);
           /*  calendar += ' <td class="' + dateString[j] + '" name="'+currentYear+currentMonth+dateNum+'">' 
                 + '<a href="/group_pro/cBoard_list.nhn?dateNum='+currentYear+currentMonth+dateNum+'">' 
                       +dateNum+ 
                  '</a><br><span id="'
                        +currentYear+currentMonth+dateNum+
                        '"></span>'    
                 +'</td>';    */
                 
            calendar += ' <td class="' + dateString[j] + '" name="'+currentYear+currentMonth+dateNum+'">' 
           + '<a href="#" onclick="calendar_in('+currentYear+currentMonth+dateNum+')">' 
                 +dateNum+ 
            '</a><br><span id="'
                  +currentYear+currentMonth+dateNum+
                  '"></span>'    
           +'</td>';    
            
      
      }
      calendar += '</tr>';
   }

   calendar += '</tbody>';
   calendar += '</table>';

   Calendar.innerHTML = calendar;
}
</script>
<style>
@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);

* {
	font-family: 'Nanum Gothic', serif;
}

#Calendar {
	width: 100%;
	height: 50em;
	border: 1px solid black;
}

#Calendar #header {
	height: 50px;
	line-height: 50px;
	text-align: center;
	font-size: 18px;
	font-weight: bold
}

#Calendar .button {
	color: #000;
	text-decoration: none;
}

#Calendar table {
	width: 70%;
	height: 70%;
}

#Calendar caption {
	display: none;
}

#Calendar tr {
	height: 50px;
	border: 1px;
}

#Calendar .sun {
	text-align: center;
	color: deeppink;
}

#Calendar .mon {
	text-align: center;
}

#Calendar .tue {
	text-align: center;
}

#Calendar .wed {
	text-align: center;
}

#Calendar .thu {
	text-align: center;
}

#Calendar .fri {
	text-align: center;
}

#Calendar .sat {
	text-align: center;
	color: deepskyblue;
}
</style>

</head>


<body>
	<div id="Calendar">
		<script>
      window.onload = function () {
         Calendar('Calendar');
      };
   </script>
	</div>

</body>
</html>