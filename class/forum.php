<?php
	class forum {
		public function get_header_forum() {
			define("PHPBB_ROOT_PATH", "../forum.pasarauto.com/");
			define('IN_PHPBB', true);
			$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './';
			$phpEx = substr(strrchr(__FILE__, '.'), 1);
			include($phpbb_root_path . 'common.' . $phpEx);
			include($phpbb_root_path . 'includes/bbcode.' . $phpEx);
			include($phpbb_root_path . 'includes/functions_display.' . $phpEx);

			return $db;
		}	

		public function get_forum() {
			$db = $this->get_header_forum();

			$search_limit = 5;
			$ctr = 0;
			$return = [];

			$forum = "SELECT * FROM `phpbb_forums` WHERE `parent_id` = '0'";
			$forum_result = $db->sql_query_limit($forum, $search_limit);
			while($forum_row = $db->sql_fetchrow($forum_result)) {

				$return[$ctr]["forum"]["id"] = $forum_row["forum_id"];
				$return[$ctr]["forum"]["name"] = $forum_row["forum_name"];

				$ctr2 = 0;
				$topics = "SELECT * 
						FROM `phpbb_topics`
						WHERE `forum_id` IN (
							SELECT `forum_id`
							FROM `phpbb_forums`
							WHERE `parent_id` = '".$forum_row["forum_id"]."'
						)
						AND `topic_visibility` = '1' AND topic_status <> ".ITEM_MOVED."";
				$topics_result = $db->sql_query_limit($topics, $search_limit);
				while($topics_row = $db->sql_fetchrow($topics_result)) {
					$return[$ctr]["topics"][$ctr]["id"] = $topics_row["topic_id"];
					$return[$ctr]["topics"][$ctr]["title"] = $topics_row["topic_title"];
					$return[$ctr]["topics"][$ctr]["time"] = date("Y-m-d H:i:s", $topics_row["topic_last_post_time"]);

				}

				$ctr++;
			}

			return $return;
		}
	}