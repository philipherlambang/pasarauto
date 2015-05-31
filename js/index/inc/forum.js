var forum = {
	init : function() {
		this.resetFunction();
	},

	resetFunction : function() {
		var $forum;

		$forum = $("#content").find(".forum");

		$forum.find(".btn-item-forum").off().on("click", this.changeViewDiscussion);
	},

	changeViewDiscussion : function() {
		var $forum, $this, dataID;

		$forum = $("#content").find(".forum");
		$this = $(this);
		dataID = $this.attr("data-id");

		$forum.find(".item-forum").removeClass("hidden").addClass("hidden");
		$forum.find(".item-forum[data-id="+dataID+"]").removeClass("hidden");
		$forum.find(".btn-item-forum").removeClass("selected");
		$this.addClass("selected");
	}
}