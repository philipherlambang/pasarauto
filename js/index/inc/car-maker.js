var carMaker = {
	init : function() {
		this.resetButton();
	},

	resetButton : function() {
		var $sideSearch;
		
		$sideSearch = $("#side-search");

		$sideSearch.find("select[name=post-maker]").off().on("change", this.select_carMaker);
	},

	select_carMaker : function() {
		$.ajax({
	        type : "GET",
	        url : config.url+"index.php",
	        data : { 
	        	action : "get_car_model",
	          	id_carmaker : $(this).val()
	        },
	        dataType : "json",
	        success : function(response) {
	          	carMaker.create_option(response.car_model);
	        },
	        error : function() {
	          	alert("Unknown error, Please try again!");
	        }
	    });
	},

	create_option : function(data) {
		var $postModel, temp;

		$postModel = $("#side-search").find("select[name=post-model]");
		temp = $('<option />').text("ANY MODEL").val("");
		$postModel.html(temp);
		$.each(data, function(key, value) {
			temp = $('<option />').text(value.name).val(value.id);
  			$postModel.append(temp);
		});
	}
}