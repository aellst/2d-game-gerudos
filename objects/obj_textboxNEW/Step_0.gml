if (visible_count < array_length(chatStella))
{
	timer -= 1;
	
	if timer <= 0
		{
		visible_count += 1;
		timer = 120;
		}
}