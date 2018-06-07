{ /* Region Imports */
	import flash.events.MouseEvent;
	import flash.events.Event;
}

{ /* Region Functions */
	{ /* Region clicks */
		function clicarMenu(e:MouseEvent):void
		{
			gotoAndStop(1, "ScnMenu");
		}

		function clicarJogar(e:MouseEvent):void
		{
			gotoAndStop(1, "ScnGame");
		}
	}
}

{ /* Region Eventos */
	MvcVoltarMenu.addEventListener(MouseEvent.CLICK, clicarMenu);
	MvcJogar.addEventListener(MouseEvent.CLICK, clicarJogar);
}
