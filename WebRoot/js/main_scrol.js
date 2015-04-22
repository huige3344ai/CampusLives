// JavaScript Document

window.onload = function(){

	mv.app.toRun();

};
var mv={};

mv.tools ={};


mv.tools.getByClass = function(oParent,sClass){
	var aEle = oParent.getElementsByTagName('*');
	var arr = [];
	
	for(var i=0;i<aEle.length;i++){
		if(aEle[i].className == sClass){
			arr.push(aEle[i]);
		}
	}
	
	return arr;
};

mv.tools.getStyle = function(obj,attr){
 if( obj.currentStyle){
	 return obj.currentStyle[attr];
	 }
 else{
	 return getComputedStyle(obj,false);
	 }
};


mv.ui = {};


	

mv.ui.moveLeft = function(obj,old,now){
	
	clearInterval(obj.timer);
	obj.timer = setInterval(function(){
		
		var iSpeed = (now - old)/10;
		iSpeed = iSpeed > 0 ? Math.ceil(iSpeed) : Math.floor(iSpeed);//Math.ceil()执行向上舍入，即它总是将数值向上舍入为最接近的整数；
																	//Math.floor()执行向下舍入，即它总是将数值向下舍入为最接近的整数；
		
		if(now == old){
			clearInterval(obj.timer);
		}
		else{
			old += iSpeed;
			obj.style.left = old + 'px';
		}
		
	},30);
	
};
mv.app ={};




mv.app.toRun = function(){
	var oRun = document.getElementById('run1');
	var oUl = oRun.getElementsByTagName('ul')[0];
	var aLi = oUl.getElementsByTagName('li');
	
	var oPrev = mv.tools.getByClass(oRun,'prev')[0];
	var oNext = mv.tools.getByClass(oRun,'next')[0];
	
	var iNow = 0;
	
	oUl.innerHTML += oUl.innerHTML;
	
	oUl.style.width = aLi.length * aLi[0].offsetWidth + 'px';
	
	oPrev.onclick = function(){
		
		if(iNow == 0){
			
			iNow = aLi.length/2;
			oUl.style.left = -oUl.offsetWidth/2 + 'px';
		}
		
		mv.ui.moveLeft(oUl,-iNow*aLi[0].offsetWidth,-(iNow-1)*aLi[0].offsetWidth);
		
		iNow--;
		
	};
	
	oNext.onclick = function(){
		
		if(iNow == aLi.length/2){
			iNow = 0;
			oUl.style.left = 0;
		}
		
		mv.ui.moveLeft(oUl,-iNow*aLi[0].offsetWidth,-(iNow+1)*aLi[0].offsetWidth);
		
		iNow++;
		
	};
	
	
};



	