var newCar = {
	init : function() {
		this.resetButton();
	},

	resetButton : function() {
		var $table;
		
		$table = $("#content").find(".table");

		$table.find(".option").find("a").off().on("mouseover", this.hoverOption);
	},

	hoverOption : function() {
		var $table, $this;
		
		$table = $("#content").find(".table");
		$this = $(this);

		$table.find(".option").find(".selected").removeClass("selected");
		$this.addClass("selected");

		$table.find(".tab").removeClass("hidden").addClass("hidden");
		$table.find(".tab."+$this.attr("data")).removeClass("hidden");
	}
}