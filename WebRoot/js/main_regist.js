// JavaScript Document

window.onload = function(){

	mv.app.toTip1();
};
var mv={};

mv.tools ={};




mv.ui = {};

mv.ui.textChange= function(obj,str,obj_text) {

	obj.onfocus = function(){		
		if(obj_text.innerHTML == str){
			obj_text.innerHTML  = '';
			atler(str);

		}
	};
	
	obj.onblur = function(){
		if(obj_text.innerHTML==''&&obj.value==''){
			
			obj_text.innerHTML  = str;
					
		}
	};
	};
	



mv.app ={};

mv.app.toTip1 = function() {
	var password =document.getElementById('password');
	var password_1 =document.getElementById('password_1');
	var  email = document.getElementById('email');
	
	var field = document.getElementById('text_user');
	var field2 = document.getElementById('text_password');
	var field3 = document.getElementById('text_password_1');
	
	var str = document.getElementById('text_password').innerHTML;
	var str_1 = document.getElementById('text_password_1').innerHTML;
	
	mv.ui.textChange(email,'用户名',field);	
	mv.ui.textChange(password,str,field2);	
	mv.ui.textChange(password_1,str_1,field3);	

	};
	
	
  function validateLogin(){	
    var userName = document.getElementById("email").value ;
    var passWord = document.getElementById("password").value;
    var passWord_1 = document.getElementById("password_1").value;
    if (userName ==""){
     alert("用户名不能为空");
     return false ;
    }
    
    if (passWord ==""){
     alert("密码不能为空");
     return false ;
    }
    if (passWord_1 ==""){
        alert("新密码密码不能为空");
        return false ;
       };
       
    if(password_1==password){
        alert("新旧密码一致！！！");
        return false ;	
    }
   }	
	

	