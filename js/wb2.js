 var $ = function(id){
    		return document.getElementById(id);
    	}

    	var getHTTPObject = function(){
    	  var xhr = false;
    	  if (window.XMLHttpRequest) {
    	    xhr = new XMLHttpRequest();
    	  } else if (window.ActiveXObject) {
    	    try {
    	      xhr = new ActiveXObject("Msxml2.XMLHTTP");
    	    } catch(e) {
    	      try {
    	        xhr = new ActiveXObject("Microsoft.XMLHTTP");
    	      } catch(e) {
    	        xhr = false;
    	      }
    	    }
    	  }
    	  return xhr;
    	}

    	var getWeatherURL = function(url){
    		var request = getHTTPObject();
    		if(request){
    			request.onreadystatechange = function(){
    				parseResponse(request);
    			};
    			request.open("GET",url,true);
    			request.send(null);
    		}
    	}

    	var parseResponse = function(request){
    	  if (request.readyState == 4) 
    	    if (request.status == 200 || request.status == 304) {
    	      
    	      console.log(request.responseXML);

    	      //Parse xml file
    	      var xmlDoc = request.responseXML;


    	        var table2 = "<tr></tr>";

    	        var x = xmlDoc.getElementsByTagName("temperature")[0];
    	        var wea = xmlDoc.getElementsByTagName("symbol")[0].getAttribute("name");
    	         table2 += "<tr><td>"+"Today:"+x.getAttribute("day")+"&#8451"+"</td></tr><tr><td>"+"Weather description: "+wea+"</td></tr>";
    	        document.getElementById("demo").innerHTML = table2;


    	    }
    	}


    	window.onload = function(){

    		$("searchButton").onclick = function(){
    			var city = $("city").value;
    			console.log(city);

    			var url = "http://api.openweathermap.org/data/2.5/forecast/daily?q=" + city + "&mode=xml&units=metric&cnt=7&appid=04cc5da4078d26b707f06cb67a00ec3a";
    	    getWeatherURL(url);
    	    document.getElementById("text").innerHTML=$("city").value;
    		}

    		$("city").focus();
    	}
