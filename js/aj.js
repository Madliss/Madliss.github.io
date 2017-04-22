var $ = function(id){
	return document.getElementById(id);
}

function getHTTPObject(){
  var xhr = false;
  if(window.XMLHttpRequest){
    xhr = new XMLHttpRequest();
  } else if (window.ActiveXObject){
    try{
      xhr = new ActiveXObject("Msxml2.XMLHTTP");
    } catch(e){
      try{
        xhr = new ActiveXObject("Microsoft.XMLHTTP");
      } catch(e){
        xhr = false;
      }
    }
  }
  return xhr;
}

function grabShoe(file){
  var request = getHTTPObject();
  if(request){
    request.onreadystatechange = function(){
      parseResponse(request);
    };
    request.open("GET", file, true);
    request.setRequestHeader('Accept','application/json');
    request.send(null);
  }
}

function parseResponse(request){
  if(request.readyState == 4){
    if(request.status == 200 || request.status == 304){
      //Print response to console
      console.log(request.responseText);

      var data = JSON.parse(request.responseText)
      console.log(data);
      
      var tag1 = data.tag1;
      var tag2 = data.tag2;
      var tag3 = data.tag3;
      
      var ol = document.createElement("ol");
      var html = "";
		html += "<li>"+"Name: "+tag1+"</li>"
			 +"<li>"+"Year: "+tag2+"</li>"
			 +"<li>"+"Price: "+tag3+"</li>";
		
		ol.innerHTML = html;
		
		
		var content = $("details");
		content.innerHTML="";
		content.appendChild(ol);
		
    }
  }
}

