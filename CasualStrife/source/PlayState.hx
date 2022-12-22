package;

import flixel.FlxSprite;
import flixel.FlxState;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var player:Player;

	override public function create()
	{
		bgColor = 0;

		player = new Player();

		add(player);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
