<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/rightTop.css">
<script type="text/javascript" src="js/top.js"></script>
</head>
<body>
<div id="container">
  <div id="header"><a href="homePage.html"><img src="images/logo.jpg"></a></div>
  
  
  <div id="download">
    <div class="dl">
    <img src="images/1.png">
      <a class="dlb" href="/A00215675FengChen/downloadServlet?filename=1.png">Download</a>
    </div>
    <div class="dl">
    <img src="images/2.png">
      <a class="dlb" href="/A00215675FengChen/downloadServlet?filename=2.png">Download</a>
    </div>
    <div class="dl">
    <img src="images/3.png">
      <a class="dlb" href="/A00215675FengChen/downloadServlet?filename=3.png">Download</a>
    </div>
  </div>
  <div id="message">
  	<form method="post" action="LeaveMessageServlet">
  		Enter name:<input type="text" name="name"><br/><br/>
  		<textarea rows="8" cols="28" name="message" placeholder="Leave your message here..."></textarea><br>

  		<input type="submit" value="Send">
  	</form>
  </div>

  <div id = "vid">
  	<video id="vidd" width="890" height="520" controls>
  		<source src="video/video.mp4" type="video/mp4">
  	</video><br>

  </div>

  <div id="comment">
  	<div id="list">
          <div class="box clearfix">
              <a class="close" href="javascript:;">�</a>
  						<img class="head" src="images/ko.jpg" alt=""/>
              <div class="content">

                  <div class="main">
                      <p class="txt">
                          <span class="user">Andy: </span>I think Lebron is the best player in the world.
                      </p>
                      <img class="pic" src="images/Jame.jpg" alt=""/>
                  </div>
                  <div class="info clearfix">
                      <span class="time">02-14 23:01</span>
                      <a class="praise" href="javascript:;">Like</a>
                  </div>
                  <div class="praises-total" total="4" style="display: block;">4 people like it</div>
                  <div class="comment-list">
                      <div class="comment-box clearfix" user="self">
                          <img class="myhead" src="images/ko.jpg" alt=""/>
                          <div class="comment-content">
                              <p class="comment-text"><span class="user">Me:</span>I agree with you.</p>
                              <p class="comment-time">
                                  2017-02-19 14:36
                                  <a href="javascript:;" class="comment-praise" total="1" my="0" style="display: inline-block">1 Like</a>
                                  <a href="javascript:;" class="comment-operate">Delete</a>
                              </p>
                          </div>
                      </div>
                  </div>
                  <div class="text-box">
                      <textarea class="comment" autocomplete="off">Comment...</textarea>
                      <button class="btn ">Reply</button>
                      <span class="word"><span class="length">0</span>/140</span>
                  </div>
              </div>
          </div>

          <div class="box clearfix">
              <a class="close" href="javascript:;">�</a>
              <img class="head" src="images/kr.jpg" alt=""/>
              <div class="content">
                  <div class="main">
                      <p class="txt">
                          <span class="user">Mary:</span>I love Lebron.
                      </p>
                      <img class="pic" src="images/Jame.jpg" alt=""/>
                  </div>
                  <div class="info clearfix">
                      <span class="time">02-17 23:01</span>
                      <a class="praise" href="javascript:;">Like</a>
                  </div>
                  <div class="praises-total" total="0" style="display: none;"></div>
                  <div class="comment-list">
                      <div class="comment-box clearfix" user="other">
                          <img class="myhead" src="images/tm.jpg" alt=""/>
                          <div class="comment-content">
                              <p class="comment-text"><span class="user">Walker: </span>I want it too.</p>
                              <p class="comment-time">
                                  2017-02-19 14:36
                                  <a href="javascript:;" class="comment-praise" total="0" my="0">Like</a>
                                  <a href="javascript:;" class="comment-operate">Reply</a>
                              </p>
                          </div>
                      </div>
                  </div>
                  <div class="text-box">
                      <textarea class="comment" autocomplete="off">Comment...</textarea>
                      <button class="btn ">Reply</button>
                      <span class="word"><span class="length">0</span>/140</span>
                  </div>
              </div>
          </div>

          <div class="box clearfix">
              <a class="close" href="javascript:;">�</a>
              <img class="head" src="images/lbj.jpg" alt=""/>
              <div class="content">
                  <div class="main">
                      <p class="txt">
                          <span class="user">Wade: </span>Cavs won the game last night.
                      </p>
                  </div>
                  <div class="info clearfix">
                      <span class="time">02-11 13:17</span>
                      <a class="praise" href="javascript:;">Like</a>
                  </div>
                  <div class="praises-total" total="0" style="display: none;"></div>
                  <div class="comment-list">

                  </div>
                  <div class="text-box">
                      <textarea class="comment" autocomplete="off">Comment...</textarea>
                      <button class="btn ">Reply</button>
                      <span class="word"><span class="length">0</span>/140</span>
                  </div>
              </div>
          </div>
      </div>
  </div>
  </div>
</body>
</html>