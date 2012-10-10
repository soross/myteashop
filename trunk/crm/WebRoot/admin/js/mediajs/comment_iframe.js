(
function comment_create()
{
	if (typeof comment_para_site == 'undefined' || typeof comment_para_id == 'undefined')
	{
		return;
	}
	(
	function Init()
	{
		if (typeof comment_para_show == 'undefined')
		{
			comment_para_show = 0;
		}
		if (comment_para_show != 0)
		{
			comment_para_show = 1;
		}
		
		if (typeof comment_para_sum == 'undefined')
		{
			comment_para_sum = 10;
		}
		if (typeof comment_para_style == 'undefined')
		{
			comment_para_style = '';
		}
		if (typeof comment_para_height == 'undefined')
		{
			comment_para_height = 0;
		}
		if (typeof comment_para_is_group == 'undefined')
		{
			comment_para_is_group = 0;
		}
		if (typeof comment_para_mode == 'undefined')
		{
			comment_para_mode = 'total';
		}
		if (typeof comment_para_submit_pos == 'undefined')
		{
			comment_para_submit_pos = 0;
		}
		if (typeof comment_para_count_id == 'undefined')
		{
			comment_para_count_id = '';
		}
		if (typeof comment_para_final_domain == 'undefined')
		{
			comment_para_final_domain = '';
		}
	})();
	
	document.domain = 'qq.com';

	var rnd_id = 'COMMENT_IFRAME_ID_';
	/*
    for (var i = 0; i < 10; i++)
    {
        rnd_id += Math.floor(Math.random() * 10);
    }
    */
	if (typeof auto_id == 'undefined')
	{
		auto_id = 0;
	}
	rnd_id += auto_id++;
	
	var i_comment_domain = 'comment2.qq.com';
	if (comment_para_is_group == 1
		|| comment_para_sum != 0)
	{
		i_comment_domain = 'comment1.qq.com';
	}
	
	document.write('<iframe src="http://'
		+ i_comment_domain
		+ '/i_comment.htm?site='
		+ comment_para_site + '&id='
		+ comment_para_id + '&sum='
		+ comment_para_sum + '&style='
		+ comment_para_style + '&height='
		+ comment_para_height + '&is_group='
		+ comment_para_is_group + '&mode='
		+ comment_para_mode + '&submit_pos='
		+ comment_para_submit_pos + '&show='
		+ comment_para_show + '&count_id='
		+ comment_para_count_id + '&final_domain='
		+ comment_para_final_domain + '&p_iframe_id='
		+ rnd_id + '" frameborder="0"'
		+ (comment_para_height == 0 ? '' : ' height="' + comment_para_height + '"')
		+ '" width="100%"'
		+ (comment_para_height == 0 ? ' scrolling="no"' : '')
		+ (comment_para_show == 0 ? ' style="display:none;"': '')
		+ ' id="' + rnd_id + '"></iframe>');
})()