var subscribe = {
	init : function() {
		this.resetButton();
	},

	resetButton : function() {
		$("#subscribe").find("form").off().on("submit", this.sendEmail);
	},

	sendEmail : function() {
		var $boxEmail, email;

		$boxEmail = $("#subscribe").find("input[name=post-email]");
		email = $boxEmail.val();

		if(email != "") {
			$.ajax({
		        type : "GET",
		        url : config.url+"index.php",
		        data : { 
		        	action : "subscribe",
		          	email : email
		        },
		        dataType : "json",
		        success : function(response) {
		          	alert("Thank You");
		          	$boxEmail.val("");
		        },
		        error : function() {
		          	alert("Unknown Error, Please refresh your browser");
		        }
		    });
		    return false;
		}
		else return false;
	}
}