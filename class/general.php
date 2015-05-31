<?php 
	class general {
		public function time_since($since) {
		    $chunks = array(
		        array(60 * 60 * 24 * 365 , 'year'),
		        array(60 * 60 * 24 * 30 , 'mon'),
		        array(60 * 60 * 24 * 7, 'week'),
		        array(60 * 60 * 24 , 'day'),
		        array(60 * 60 , 'hour'),
		        array(60 , 'min'),
		        array(1 , 'sec')
		    );

		    for ($i = 0, $j = count($chunks); $i < $j; $i++) {
		        $seconds = $chunks[$i][0];
		        $name = $chunks[$i][1];
		        if (($count = floor($since / $seconds)) != 0) {
		            break;
		        }
		    }

		    $print = ($count == 1) ? '1 '.$name : "$count {$name}s";
		    return $print;
		}

		public function time_diff($time_since) {
			$now = strtotime("now");
			$time_diff = $now - strtotime($time_since);
			return $time_diff;
		}
	}