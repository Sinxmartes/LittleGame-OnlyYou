{ /* Region Imports */
	import flash.events.MouseEvent;
	import flash.events.Event;
}

{ /* Region Functions */
	{ /* Region clicks */
		function clicarIniciar(e:MouseEvent):void
		{
			gotoAndStop(1, "ScnGame");
		}

		function clicarInstrucoes(e:MouseEvent):void
		{
			gotoAndStop(1, "ScnInstrucoes");
		}
	}

	{ /* Region Over-Out */
		{ /* Region Iniciar */
			function overIniciar(e:MouseEvent):void
			{
				MvcIniciar.width = 194;
				MvcIniciar.height = 73;
			}

			function outIniciar(e:MouseEvent):void
			{
				MvcIniciar.width = 145;
				MvcIniciar.height = 55;
			}
		}

		{ /* Region Instruções */
			function overInstrucoes(e:MouseEvent):void
			{
				MvcInstrucoes.width = 194;
				MvcInstrucoes.height = 73;
			}

			function outInstrucoes(e:MouseEvent):void
			{
				MvcInstrucoes.width = 145;
				MvcInstrucoes.height = 55;
			}
		}
	}
}

{ /* Region Exec ao Iniciar */
	gotoAndStop(1, "ScnMenu");
}

{ /* Region Eventos */
	MvcIniciar.addEventListener(MouseEvent.CLICK, clicarIniciar);
	MvcIniciar.addEventListener(MouseEvent.MOUSE_OVER, overIniciar);
	MvcIniciar.addEventListener(MouseEvent.MOUSE_OUT, outIniciar);
	MvcInstrucoes.addEventListener(MouseEvent.CLICK, clicarInstrucoes);
	MvcInstrucoes.addEventListener(MouseEvent.MOUSE_OVER, overInstrucoes);
	MvcInstrucoes.addEventListener(MouseEvent.MOUSE_OUT, outInstrucoes);
}
