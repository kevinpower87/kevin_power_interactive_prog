stage.addEventListener(KeyboardEvent.KEY_DOWN, mollyChar_keyDownHandler);

stage.addEventListener(KeyboardEvent.KEY_DOWN, mollyChar_keyUpHandler);
mollyChar.mollyWalk.stop();

function mollyChar_keyDownHandler(event:KeyboardEvent):void
{
	if(event.keyCode ==Keyboard.LEFT)
	{
		mollyChar.x -= 10;
	}
	
	if(event.keyCode == Keyboard.RIGHT)
	{
		mollyChar.x += 10;
		mollyChar.play();
		mollyChar.mollyWalk.play();

	}
	
	if(event.keyCode ==Keyboard.UP)
	{
		mollyChar.y -= 10;
	}
	
	if(event.keyCode == Keyboard.DOWN)
	{
		mollyChar.y += 10;
	}
}

function mollyChar_keyUpHandler(event:KeyboardEvent):void
{
	mollyChar.stop();
	mollyChar.mollyWalk.stop();

}
