package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;

using StringTools;

class Character extends FlxSprite
{
	public var animOffsets:Map<String, Array<Dynamic>>;
	public var debugMode:Bool = false;

	public var isPlayer:Bool = false;
	public var curCharacter:String = 'bf';

	public var holdTimer:Float = 0;

	public function new(x:Float, y:Float, ?character:String = "bf", ?isPlayer:Bool = false)
	{
		super(x, y);

		animOffsets = new Map<String, Array<Dynamic>>();
		curCharacter = character;
		this.isPlayer = isPlayer;

		var tex:FlxAtlasFrames;
		antialiasing = true;

		switch (curCharacter)
		{
				case 'gf-mii':
					tex = Paths.getSparrowAtlas('GF_MII_assets');
					frames = tex;
					animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
					animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
					animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
	
					addOffset('sad', -2, -2);
					addOffset('danceLeft', 0, -9);
					addOffset('danceRight', 0, -9);
	
					playAnim('danceRight');

					case 'gf':
					tex = Paths.getSparrowAtlas('GF_MII_assets');
					frames = tex;
					animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
					animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
					animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
	
					addOffset('sad', -2, -2);
					addOffset('danceLeft', 0, -9);
					addOffset('danceRight', 0, -9);
	
					playAnim('danceRight');

				case 'speakers':
					tex = Paths.getSparrowAtlas('speakers');
					frames = tex;
					animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
					animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
					animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
	
					addOffset('sad', -2, -2);
					addOffset('danceLeft', 0, -9);
					addOffset('danceRight', 0, -9);
	
					playAnim('danceRight');	
					
				case 'gfFC':
					tex = Paths.getSparrowAtlas('gf/gf_FC');
					frames = tex;
					animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
					animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
					animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
	
					addOffset('sad', -2, 35);
					addOffset('danceLeft', 0, 28);
					addOffset('danceRight', 0, 28);
	
					playAnim('danceRight');
					
				case 'gfDM':
					tex = Paths.getSparrowAtlas('gf/gf_DM');
					frames = tex;
					animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
					animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
					animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
	
					addOffset('sad', -2, 35);
					addOffset('danceLeft', 0, 28);
					addOffset('danceRight', 0, 28);
	
					playAnim('danceRight');
					
				case 'gfWU':
					tex = Paths.getSparrowAtlas('gf/gf_WU');
					frames = tex;
					animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
					animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
					animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
	
					addOffset('sad', -2, 35);
					addOffset('danceLeft', 0, 28);
					addOffset('danceRight', 0, 28);
	
					playAnim('danceRight');
					
				case 'gfKH':
					tex = Paths.getSparrowAtlas('gf/gf_KH');
					frames = tex;
					animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
					animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
					animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
	
					addOffset('sad', -2, 35);
					addOffset('danceLeft', 0, 28);
					addOffset('danceRight', 0, 28);
	
					playAnim('danceRight');

				case 'gf-christmas':
				    tex = Paths.getSparrowAtlas('speakers/speakers');
				    frames = tex;
				    animation.addByPrefix('cheer', 'GF Cheer', 24, false);
				    animation.addByPrefix('singLEFT', 'GF left note', 24, false);
				    animation.addByPrefix('singRIGHT', 'GF Right Note', 24, false);
				    animation.addByPrefix('singUP', 'GF Up Note', 24, false);
				    animation.addByPrefix('singDOWN', 'GF Down Note', 24, false);
				    animation.addByIndices('sad', 'gf sad', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12], "", 24, false);
				    animation.addByIndices('danceLeft', 'GF Dancing Beat', [30, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14], "", 24, false);
				    animation.addByIndices('danceRight', 'GF Dancing Beat', [15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29], "", 24, false);
				    animation.addByIndices('hairBlow', "GF Dancing Beat Hair blowing", [0, 1, 2, 3], "", 24);
				    animation.addByIndices('hairFall', "GF Dancing Beat Hair Landing", [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], "", 24, false);
				    animation.addByPrefix('scared', 'GF FEAR', 24);

				    addOffset('cheer');
				    addOffset('sad', -2, -2);
				    addOffset('danceLeft', 0, -9);
				    addOffset('danceRight', 0, -9);

				    addOffset("singUP", 0, 4);
				    addOffset("singRIGHT", 0, -20);
				    addOffset("singLEFT", 0, -19);
				    addOffset("singDOWN", 0, -20);
				    addOffset('hairBlow', 45, -8);
				    addOffset('hairFall', 0, -9);

				    addOffset('scared', -2, -17);

				    playAnim('danceRight');	

			case 'bfmii':
				var tex = Paths.getSparrowAtlas('BOYFRIENDMII','shared');
				frames = tex;
				animation.addByPrefix('idle', 'BF idle dance', 24, false);
				animation.addByPrefix('singUP', 'BF NOTE UP0', 24, false);
				animation.addByPrefix('singLEFT', 'BF NOTE LEFT0', 24, false);
				animation.addByPrefix('singRIGHT', 'BF NOTE RIGHT0', 24, false);
				animation.addByPrefix('singDOWN', 'BF NOTE DOWN0', 24, false);
				animation.addByPrefix('singUPmiss', 'BF NOTE UP MISS', 24, false);
				animation.addByPrefix('singLEFTmiss', 'BF NOTE LEFT MISS', 24, false);
				animation.addByPrefix('singRIGHTmiss', 'BF NOTE RIGHT MISS', 24, false);
				animation.addByPrefix('singDOWNmiss', 'BF NOTE DOWN MISS', 24, false);
				animation.addByPrefix('hit', 'BF hit', 20, false);
	
				animation.addByPrefix('firstDeath', "BF dies", 24, false);
				animation.addByPrefix('deathLoop', "BF Dead Loop", 24, true);
				animation.addByPrefix('deathConfirm', "BF Dead confirm", 24, false);
	
				addOffset('idle', -5);
				addOffset("singUP", -29, 27);
				addOffset("singRIGHT", -38, -7);
				addOffset("singLEFT", 12, -6);
				addOffset("singDOWN", -10, -50);
				addOffset("singUPmiss", -29, 27);
				addOffset("singRIGHTmiss", -30, 21);
				addOffset("singLEFTmiss", 12, 24);
				addOffset("singDOWNmiss", -11, -19);
				addOffset('firstDeath', 37, 11);
				addOffset('hit', -5);
				addOffset('deathLoop', 37, 5);
				addOffset('deathConfirm', 37, 69);
	
				playAnim('idle');
	
				flipX = true;

			case 'matt':
				tex = Paths.getSparrowAtlas('matt_assets','shared');
				frames = tex;
				animation.addByPrefix('idle', "matt idle", 24);
				animation.addByPrefix('singUP', 'matt up note', 24, false);
				animation.addByPrefix('singDOWN', 'matt down note', 24, false);
				animation.addByPrefix('singLEFT', 'matt left note', 24, false);
				animation.addByPrefix('singRIGHT', 'matt right note', 24, false);
				addOffset("singUP", 0, 20);
				addOffset("singRIGHT", -15, -20);
				addOffset("singLEFT", 30, -40);
				addOffset("singDOWN", 0, -20);
				playAnim('idle');

				case 'swordmattnew':
					tex = Paths.getSparrowAtlas('wiik5Char/matt_sword_new','shared');
					frames = tex;
					animation.addByPrefix('idle', "matt idle", 24);
					animation.addByPrefix('singUP', 'matt up note', 24, false);
					animation.addByPrefix('singDOWN', 'matt down note', 24, false);
					animation.addByPrefix('singLEFT', 'matt left note', 24, false);
					animation.addByPrefix('singRIGHT', 'matt right note', 24, false);
					addOffset("singUP", 0, 20);
					addOffset("singRIGHT", -15, -20);
					addOffset("singLEFT", 30, -40);
					addOffset("singDOWN", 0, -20);
					playAnim('idle');

				case 'swordmadmatt':
				tex = Paths.getSparrowAtlas('MattSwordsManAngrynew','shared');
				frames = tex;
				animation.addByPrefix('idle', "Matt idle", 24);
				animation.addByPrefix('singUP', 'Matt up', 24, false);
				animation.addByPrefix('singDOWN', 'Matt down', 24, false);
				animation.addByPrefix('singLEFT', 'Matt left', 24, false);
				animation.addByPrefix('singRIGHT', 'Matt right', 24, false);
				addOffset("singUP", 0, 20);
				addOffset("singRIGHT", -15, -20);
				addOffset("singLEFT", 30, -40);
				addOffset("singDOWN", 0, -20);
				playAnim('idle');

				case 'swordchillmatt':
				tex = Paths.getSparrowAtlas('MattSwordsManChillnew','shared');
				frames = tex;
				animation.addByPrefix('idle', "Matt idle", 24);
				animation.addByPrefix('singUP', 'Matt up', 24, false);
				animation.addByPrefix('singDOWN', 'Matt down', 24, false);
				animation.addByPrefix('singLEFT', 'Matt left', 24, false);
				animation.addByPrefix('singRIGHT', 'Matt right', 24, false);
				addOffset("singUP", 0, 20);
				addOffset("singRIGHT", -15, -20);
				addOffset("singLEFT", 30, -40);
				addOffset("singDOWN", 0, -20);
				playAnim('idle');

				case 'swordhappymattswordhappymatt':
				tex = Paths.getSparrowAtlas('MattSwordsManHappynew','shared');
				frames = tex;
				animation.addByPrefix('idle', "Matt idle", 24);
				animation.addByPrefix('singUP', 'Matt up', 24, false);
				animation.addByPrefix('singDOWN', 'Matt down', 24, false);
				animation.addByPrefix('singLEFT', 'Matt left', 24, false);
				animation.addByPrefix('singRIGHT', 'Matt right', 24, false);
				addOffset("singUP", 0, 20);
				addOffset("singRIGHT", -15, -20);
				addOffset("singLEFT", 30, -40);
				addOffset("singDOWN", 0, -20);
				playAnim('idle');

			case 'mattmad':
				tex = Paths.getSparrowAtlas('mattangry','shared');
				frames = tex;
				animation.addByPrefix('idle', "matt idle", 24);
				animation.addByPrefix('singUP', 'matt up note', 24, false);
				animation.addByPrefix('singDOWN', 'matt down note', 24, false);
				animation.addByPrefix('singLEFT', 'matt left note', 24, false);
				animation.addByPrefix('singRIGHT', 'matt right note', 24, false);
				addOffset("singUP", 0, 10);
				addOffset("singRIGHT", -15, -20);
				addOffset("singLEFT", 30, -40);
				addOffset("singDOWN", 0, -20);
				playAnim('idle');
				
			case 'mattold':
				tex = Paths.getSparrowAtlas('matt_old','shared');
				frames = tex;
				animation.addByPrefix('idle', "matt idle", 24);
				animation.addByPrefix('singUP', 'matt up note', 24, false);
				animation.addByPrefix('singDOWN', 'matt down note', 24, false);
				animation.addByPrefix('singLEFT', 'matt left note', 24, false);
				animation.addByPrefix('singRIGHT', 'matt right note', 24, false);
				addOffset("singUP", 0, 10);
				addOffset("singRIGHT", -15, -20);
				addOffset("singLEFT", 30, -40);
				addOffset("singDOWN", 0, -20);
				playAnim('idle');
				
			case 'mattbox':
				tex = Paths.getSparrowAtlas('matt_box','shared');
				frames = tex;
				
				animation.addByPrefix('idle', "Matt BoxIdle", 24);
				animation.addByPrefix('singUP', 'Matt BoxUp', 24, false);
				animation.addByPrefix('singDOWN', 'Matt BoxDown', 24, false);
				animation.addByPrefix('singLEFT', 'Matt BoxLeft', 24, false);
				animation.addByPrefix('singRIGHT', 'Matt BoxRight', 24, false);
				
				addOffset("singUP", 0, 20);
				addOffset("singRIGHT", -4, 0);
				addOffset("singLEFT", 2, -1);
				addOffset("singDOWN", -7, 3);
				playAnim('idle');

			case 'mattchill':
				tex = Paths.getSparrowAtlas('matt_chill','shared');
				frames = tex;
				
				animation.addByPrefix('idle', "Matt ChillIdle", 24);
				animation.addByPrefix('singUP', 'Matt ChillUp', 24, false);
				animation.addByPrefix('singDOWN', 'Matt ChillDown', 24, false);
				animation.addByPrefix('singLEFT', 'Matt ChillLeft', 24, false);
				animation.addByPrefix('singRIGHT', 'Matt ChillRight', 24, false);
				animation.addByPrefix('snap', 'Matt ChillSnap', 24, false);
				
				addOffset("singUP", -9, 11);
				addOffset("singRIGHT", 16, -22);
				addOffset("singLEFT", -30, -24);
				addOffset("singDOWN", 15, -40);
				addOffset("snap", 0, -1);
				playAnim('idle');
				
			case 'matttko':
				tex = Paths.getSparrowAtlas('matt_tko','shared');
				frames = tex;
				
				animation.addByPrefix('idle', "Mart ChillIdle", 24);
				animation.addByPrefix('singUP', 'Mart ChillUp', 24, false);
				animation.addByPrefix('singDOWN', 'Mart ChillDown', 24, false);
				animation.addByPrefix('singLEFT', 'Mart ChillLeft', 24, false);
				animation.addByPrefix('singRIGHT', 'Mart ChillRight', 24, false);
				animation.addByPrefix('snep', 'Mart ChillSnap', 24, false);
				animation.addByPrefix('idle-alt', "m2 idle", 24, false);
				animation.addByPrefix('singUP-alt', 'm2 up', 24, false);
				animation.addByPrefix('singDOWN-alt', 'm2 down', 24, false);
				animation.addByPrefix('singLEFT-alt', 'm2 left', 24, false);
				animation.addByPrefix('singRIGHT-alt', 'm2 right', 24, false);
				animation.addByPrefix('tired', 'chill matt tired', 24, false);
				animation.addByPrefix('anger', 'matt chill anger', 24, false);
				animation.addByPrefix('transform', 'matt change', 24, false);
				animation.addByPrefix('backtochill', 'matt go back', 24, false);
				
				addOffset("singUP", -9, 11);
				addOffset("singRIGHT", 16, -22);
				addOffset("singLEFT", -30, -24);
				addOffset("singDOWN", 15, -40);
				addOffset("snep");
				addOffset("idle-alt", -93, 28);
				addOffset("singUP-alt", -50, 33);
				addOffset("singRIGHT-alt", -4, -26);
				addOffset("singLEFT-alt", -5, -6);
				addOffset("singDOWN-alt", -93, -26);
				addOffset("tired", -114, -28);
				addOffset("anger", -109, -28);
				addOffset("transform", -111, -29);
				addOffset("backtochill", -111, -29);
				playAnim('idle');

			case 'mattfight':
                tex = Paths.getSparrowAtlas('matt_fight','shared');
				frames = tex;
				animation.addByPrefix('idle', "Matt FightIdle", 24);
				animation.addByPrefix('singUP', 'Matt FightUp', 24, false);
				animation.addByPrefix('singDOWN', 'Matt FightDown', 24, false);
				animation.addByPrefix('singLEFT', 'Matt FightLeft', 24, false);
				animation.addByPrefix('singRIGHT', 'Matt FightRight', 24, false);
				
				addOffset('idle');
				addOffset("singUP", -3, 50);
				addOffset("singRIGHT", -55, 10);
				addOffset("singLEFT", 0, 10);
				addOffset("singDOWN", 0, -20);

				playAnim('idle');

			case 'matthurt':
                tex = Paths.getSparrowAtlas('matt_hurt','shared');
				frames = tex;
				animation.addByPrefix('idle', "Matt HurtIdle", 24);
				animation.addByPrefix('singUP', 'Matt HurtUp', 24, false);
				animation.addByPrefix('singDOWN', 'Matt HurtDown', 24, false);
				animation.addByPrefix('singLEFT', 'Matt HurtLeft', 24, false);
				animation.addByPrefix('singRIGHT', 'Matt HurtRight', 24, false);
				
			    addOffset('idle');
				addOffset("singUP", -3, 50);
				addOffset("singRIGHT", -55, 10);
				addOffset("singLEFT", 0, 10);
				addOffset("singDOWN", 0, -20);

				playAnim('idle');

			case 'matthurt2':
                tex = Paths.getSparrowAtlas('matt_hurt2','shared');
				frames = tex;
				animation.addByPrefix('idle', "Matt Hurt2Idle", 24);
				animation.addByPrefix('singUP', 'Matt Hurt2Up', 24, false);
				animation.addByPrefix('singDOWN', 'Matt Hurt2Down', 24, false);
				animation.addByPrefix('singLEFT', 'Matt Hurt2Left', 24, false);
				animation.addByPrefix('singRIGHT', 'Matt Hurt2Right', 24, false);
				
				addOffset('idle');
				addOffset("singUP", -3, 50);
				addOffset("singRIGHT", -55, 10);
				addOffset("singLEFT", 0, 10);
				addOffset("singDOWN", 0, -20);

				playAnim('idle');	

			case 'mart':
                tex = Paths.getSparrowAtlas('mart_fartsetts','shared');
				frames = tex;
				
				animation.addByPrefix('idle', "mart idle", 24);
				animation.addByPrefix('singUP', 'mart up', 24, false);
				animation.addByPrefix('singDOWN', 'mart down', 24, false);
				animation.addByPrefix('singLEFT', 'mart left', 24, false);
				animation.addByPrefix('singRIGHT', 'mart right', 24, false);
				animation.addByPrefix('troll', 'mart troll', 24, false);
				
				addOffset("singUP", -3, 27);
				addOffset("singRIGHT", -51, 1);
				addOffset("singLEFT", 22, 1);
				addOffset("singDOWN", -14, -36);
                addOffset("troll", -3, 27);

				playAnim('idle');

			case 'chillmatt':
                tex = Paths.getSparrowAtlas('chillmatt_assets','matt');
				frames = tex;
				
				animation.addByPrefix('idle', "Matt ChillIdle", 24);
				animation.addByPrefix('singUP', 'Matt ChillUp', 24, false);
				animation.addByPrefix('singDOWN', 'Matt ChillDown', 24, false);
				animation.addByPrefix('singLEFT', 'Matt ChillLeft', 24, false);
				animation.addByPrefix('singRIGHT', 'Matt ChillRight', 24, false);
				animation.addByPrefix('snap', 'Matt ChillSnap', 24, false);
				
				addOffset("singUP", -3, 27);
				addOffset("singRIGHT", -3, 27);
				addOffset("singLEFT", -3, 27);
				addOffset("singDOWN", -3, 27);
                addOffset("snap", -3, 27);
				playAnim('idle');
	  }

		dance();

		if (isPlayer)
		{
			flipX = !flipX;

			// Doesn't flip for BF, since his are already in the right place???
			if (!curCharacter.startsWith('bf'))
			{
				// var animArray
				var oldRight = animation.getByName('singRIGHT').frames;
				animation.getByName('singRIGHT').frames = animation.getByName('singLEFT').frames;
				animation.getByName('singLEFT').frames = oldRight;

				// IF THEY HAVE MISS ANIMATIONS??
				if (animation.getByName('singRIGHTmiss') != null)
				{
					var oldMiss = animation.getByName('singRIGHTmiss').frames;
					animation.getByName('singRIGHTmiss').frames = animation.getByName('singLEFTmiss').frames;
					animation.getByName('singLEFTmiss').frames = oldMiss;
				}
			}
		}
	}

	override function update(elapsed:Float)
	{
		if (!curCharacter.startsWith('bf'))
		{
			if (animation.curAnim.name.startsWith('sing'))
			{
				holdTimer += elapsed;
			}

			var dadVar:Float = 4;

			if (curCharacter == 'dad')
				dadVar = 6.1;
			if (holdTimer >= Conductor.stepCrochet * dadVar * 0.001)
			{
				trace('dance');
				dance();
				holdTimer = 0;
			}
		}

		switch (curCharacter)
		{
			case 'gf':
				if (animation.curAnim.name == 'hairFall' && animation.curAnim.finished)
					playAnim('danceRight');
		}

		super.update(elapsed);
	}

	private var danced:Bool = false;

	/**
	 * FOR GF DANCING SHIT
	 */
	public function dance()
	{
		if (!debugMode)
		{
			switch (curCharacter)
			{
				case 'gf':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'gf-christmas':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'gf-car':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				case 'gf-pixel':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;

						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
				case 'gf-mii':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;
	
						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
					case 'gfFC':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;
	
						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
					case 'gfDM':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;
	
						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
					case 'gfWU':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;
	
						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}
					case 'gfKH':
					if (!animation.curAnim.name.startsWith('hair'))
					{
						danced = !danced;
	
						if (danced)
							playAnim('danceRight');
						else
							playAnim('danceLeft');
					}

				case 'spooky':
					danced = !danced;

					if (danced)
						playAnim('danceRight');
					else
						playAnim('danceLeft');
				default:
					playAnim('idle');
			}
		}
	}

	public function playAnim(AnimName:String, Force:Bool = false, Reversed:Bool = false, Frame:Int = 0):Void
	{
		animation.play(AnimName, Force, Reversed, Frame);

		var daOffset = animOffsets.get(AnimName);
		if (animOffsets.exists(AnimName))
		{
			offset.set(daOffset[0], daOffset[1]);
		}
		else
			offset.set(0, 0);

		if (curCharacter == 'gf')
		{
			if (AnimName == 'singLEFT')
			{
				danced = true;
			}
			else if (AnimName == 'singRIGHT')
			{
				danced = false;
			}

			if (AnimName == 'singUP' || AnimName == 'singDOWN')
			{
				danced = !danced;
			}
		}
	}

	public function addOffset(name:String, x:Float = 0, y:Float = 0)
	{
		animOffsets[name] = [x, y];
	}
}
