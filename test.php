<?php
define("PHPBB_ROOT_PATH", "../forum.pasarauto.com/");

	define('IN_PHPBB', true);

	$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './';
	$phpEx = substr(strrchr(__FILE__, '.'), 1);
	include($phpbb_root_path . 'common.' . $phpEx);
	include($phpbb_root_path . 'includes/bbcode.' . $phpEx);
	include($phpbb_root_path . 'includes/functions_display.' . $phpEx);

	get_forum($db);

	function header_forum() {
		// Start session management
		//$user->session_begin();
		//$auth->acl($user->data);
		//$user->setup('viewforum');

		$search_limit = 5;

		print_r($db);
	}

function get_forum($db) {

	
	




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
	echo "<pre>";
	print_r($return);
	echo "</pre>";

}



/*
$topics = 'SELECT * FROM ' . TOPICS_TABLE . '
    ' . $forum_id_where . '
      AND topic_status <> ' . ITEM_MOVED . '
      AND topic_visibility = 1
    ORDER BY topic_id DESC';


$topics_result = $db->sql_query_limit($topics, $search_limit);

while( $topics_row = $db->sql_fetchrow($topics_result) )
{
	echo "<pre>";
	print_r($topics_row);
	echo "</pre>";
 $topic_title       = $topics_row['topic_title'];
 $topic_author       = get_username_string('full', $topics_row['topic_poster'], $topics_row['topic_first_poster_name'], $topics_row['topic_first_poster_colour']);
 $topic_date       = $user->format_date($topics_row['topic_time']);
 $topic_last_post    = append_sid("{$phpbb_root_path}viewtopic.$phpEx", 'f=' . $topics_row['forum_id'] . '&amp;t=' . $topics_row['topic_id'] . '&amp;p=' . $topics_row['topic_last_post_id']) . '#p' . $topics_row['topic_last_post_id'];
 $topic_last_author    = get_username_string('full', $topics_row['topic_last_poster_id'], $topics_row['topic_last_poster_name'], $topics_row['topic_last_poster_colour']);
 $topic_link       = append_sid("{$phpbb_root_path}viewtopic.$phpEx", 'f=' . $topics_row['forum_id'] . '&amp;t=' . $topics_row['topic_id']);

 $template->assign_block_vars('announcements', array(
 'TOPIC_TITLE'       => censor_text($topic_title),
 'TOPIC_AUTHOR'       => $topic_author,
 'TOPIC_DATE'       => $topic_date,
 'TOPIC_LAST_POST'    => $topic_last_post,
 'TOPIC_LAST_AUTHOR' => $topic_last_author,
 'TOPIC_LINK'       => $topic_link,
 ));
}
*/