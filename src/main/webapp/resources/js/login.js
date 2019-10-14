function chkUser(info){
	var dt;
	$.ajax({
		url:"/corediet/chkUser",
		type: "post",
		data:JSON.stringify(info),
		async:false,
		contentType : "application/json; charset=UTF-8",
		dataType:"text",
		success:function(json){			
			console.log(json);
			dt = json;
			if(json == "ok"){
				location.href="/corediet/register";
			}
			
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
	return dt;
	
}