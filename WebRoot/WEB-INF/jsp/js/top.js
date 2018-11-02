

function checkusername() {

var username = document.getElementById("username").value;
	if (username=="") {
		document.getElementById("displayusername").innerHTML = "用户名不能为空！";
		return;
	}
}
function checkpassword() {

var password = document.getElementById("password").value;
	if (password=="") {
		document.getElementById("displaypassword").innerHTML = "密码不能为空！";
		return;
	}
}