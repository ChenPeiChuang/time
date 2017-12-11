        function checkname(){
            var name=document.getElementById("name");
            var mes= document.getElementById("mes");
            if(name.value.length==0||name.value.length>9){
                mes.className="a";
                mes.innerHTML="0~9个字符";
                return false;
            }else{
                mes.innerHTML="√";
                mes.className="b";
                return true;
            }
        }

        var pwd;
        function checkpwd(){
        	pwd = document.getElementById("pwd");
            var mes4 = document.getElementById("mes4");
            var reg=/\w{6,}/;
            if(reg.test(pwd.value)){
                mes4.innerHTML="√";
                mes4.className='b';
                return true;
            }else{
                mes4.innerHTML="至少包含6位字符或数字";
                mes4.className="a";
                return fasle;
            }
        }
        
       function checkrepwd(){
           var repwd =document.getElementById("repwd");
           var mes5  =document.getElementById("mes5");
            if(pwd.value != repwd.value){
               mes5.innerHTML="两次密码不一致";
               mes5.className="a";
               return false;
           }else{
               mes5.innerHTML="√";
               mes5.className='b';
               return true;
           }
       }

        function checkemail(){
            var email =document.getElementById("email");
            var mes6  =document.getElementById("mes6");
            var reg=/\w+\@{1}\w+\.{1}\w+/;
            if(reg.test(email.value)){
                mes6.innerHTML="√";
                mes6.className='b';
                return true;
            }else{
                mes6.innerHTML="格式错误，注意‘@’，‘.’";
                mes6.className="a";
                return false;
            }
        }
        
        function check(){
        	if (checkemail()&&checkrepwd()&&checkpwd()&&checkname()){
        		alert("success!");
        		return true;
        	}else{
        		alert("error!");
        		return false;
        	}
        }

//        function checknumber() {
//            var number = document.getElementById("number");
//            var mes7 = document.getElementById("mes7");
//            var  reg = /\d{11,}/;
//            if(reg.test(number.value)){
//                mes7.innerHTML="√";
//                mes7.className='b';
//            }else {
//                mes7.innerHTML="长度小于等于11";
//                mes7.className="a";
//            }
//
//
//        }
