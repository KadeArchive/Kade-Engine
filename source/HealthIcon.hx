package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [21, 27], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad-test', [10, 11], 0, false, isPlayer);
		animation.add('bf-test', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [22, 28], 0, false, isPlayer);
		animation.add('senpai-angry', [22, 28], 0, false, isPlayer);
		animation.add('spirit', [23, 29], 0, false, isPlayer);
		animation.add('spirit-flash', [23, 29], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('bf-old-alt', [24, 25], 0, false, isPlayer);
		animation.add('gf', [16, 26], 0, false, isPlayer);
		animation.add('gf-christmas', [16, 26], 0, false, isPlayer);
		animation.add('gf-pixel', [16, 26], 0, false, isPlayer);
		animation.add('gf-steps', [16, 26], 0, false, isPlayer);
		animation.add('gf-car', [16, 26], 0, false, isPlayer);
		animation.add('parents-christmas', [17, 18], 0, false, isPlayer);
		animation.add('monster', [19, 20], 0, false, isPlayer);
		animation.add('monster-christmas', [19, 20], 0, false, isPlayer);

		animation.play(char);
		scrollFactor.set();
		switch(char)
		{
			case 'senpai' | 'senpai-angry' | 'spirit' | 'bf-pixel' | 'spirit-flash':
			{
				antialiasing = false;
			}
			default:
			{
				antialiasing = true;
			}
		}
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
