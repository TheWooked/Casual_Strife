package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;
import openfl.display3D.Context3DWrapMode;

class Player extends FlxSprite
{
	static inline var SPEED:Float = 200;

	override function update(elapsed:Float)
	{
		updateMovement();
		super.update(elapsed);
	}

	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);

		setFacingFlip(LEFT, true, false);
		setFacingFlip(RIGHT, false, false);

		drag.x = drag.y = 800;

		loadGraphic("assets/images/main/KhernASSETS1.png", true);
		frames = FlxAtlasFrames.fromSparrow("assets/images/main/KhernASSETS1.png", "assets/images/main/KhernASSETS1.xml");
		screenCenter();
		animation.addByPrefix("idle", "khern idle", 24);
		animation.addByPrefix("walk", "khern walk", 24);
		animation.addByPrefix("win", "khern victory", 24);
		animation.play("idle");

		scale.set(0.5, 0.5);
		updateHitbox();
	}

	function updateMovement()
	{
		var up:Bool = false;
		var down:Bool = false;
		var left:Bool = false;
		var right:Bool = false;

		up = FlxG.keys.anyPressed([UP, W]);
		down = FlxG.keys.anyPressed([DOWN, S]);
		left = FlxG.keys.anyPressed([LEFT, A]);
		right = FlxG.keys.anyPressed([RIGHT, D]);

		if (left && right)
			left = right = false;

		if (left || right || down)
		{
			var newAngle:Float = 0;

			if (left)
			{
				newAngle = 180;
				facing = LEFT;
			}
			else if (right)
			{
				newAngle = 0;
				facing = RIGHT;
			}

			velocity.setPolarDegrees(SPEED, newAngle);
		}
		var action = "idle";

		if ((velocity.x != 0 || velocity.y != 0) && touching == NONE)
		{
			action = "walk";
		}
		switch (facing)
		{
			case LEFT, RIGHT:
				animation.play(action);
			case _:
		}
	}
}
