/*-----------------------------------------------------------------------------------------------------------------*/
{ /* Region Imports */
	import flash.geom.Point;
}
/*-----------------------------------------------------------------------------------------------------------------*/
{ /* Region Variáveis */
	{ /* Reconhecimento teclas */
		var direitapressionada:Boolean = false;
		var esquerdapressionada:Boolean = false;
		var cimapressionada:Boolean = false;
		var baixopressionada:Boolean = false;
		var espacopressionada:Boolean = false;
	}

	{ /* Velocidade Padrão */
		var velocidadeX:Number = 8;
		var velocidadeY:Number = 8;
	}

	{ /* Posição Camera */
		var cameraX:int = 0;
		var cameraY:int = 0;
	}

	{ /* Fricção movimentação */
		var friccaoConstante:Number = 2;
		var friccaoBase:Number = 0.89;
	}

	{ /* Rotação base */
		var rotateX:int = 0;
		var rotateY:int = 0;
	}

	{ /* Reconhecimento Pontos */
		var ColisaoPontoN:Boolean = false;
		var ColisaoPontoNNE:Boolean = false;
		var ColisaoPontoNE:Boolean = false;
		var ColisaoPontoENE:Boolean = false;
		var ColisaoPontoE:Boolean = false;
		var ColisaoPontoESE:Boolean = false;
		var ColisaoPontoSE:Boolean = false;
		var ColisaoPontoSSE:Boolean = false;
		var ColisaoPontoS:Boolean = false;
		var ColisaoPontoSSO:Boolean = false;
		var ColisaoPontoSO:Boolean = false;
		var ColisaoPontoOSO:Boolean = false;
		var ColisaoPontoO:Boolean = false;
		var ColisaoPontoONO:Boolean = false;
		var ColisaoPontoNO:Boolean = false;
		var ColisaoPontoNNO:Boolean = false;
	}

	{ /* Localização Pontos */
		var pontoN:Point = new Point(24,-130);
		var pontoNNE:Point = new Point(24,-93);
		var pontoNE:Point = new Point(5,-62);
		var pontoENE:Point = new Point(5,-36);
		var pontoE:Point = new Point(5,-3);
		var pontoESE:Point = new Point(5,34);
		var pontoSE:Point = new Point(5,69);
		var pontoSSE:Point = new Point(9,103);
		var pontoS:Point = new Point(-10,130);
		var pontoSSO:Point = new Point(-39,102);
		var pontoSO:Point = new Point(-45,69);
		var pontoOSO:Point = new Point(-45,35);
		var pontoO:Point = new Point(-45,0);
		var pontoONO:Point = new Point(-45,-36);
		var pontoNO:Point = new Point(-40,-83);
		var pontoNNO:Point = new Point(-20,-120);
	}

	{ /* Fricção Gravidade */
		var gravidadeConstante:Number = 3;
		var puloConstante:Number = -25;
	}

	{ /* Pedaços Corações */
		var possuiPedaco01:Boolean = false;
		var possuiPedaco02:Boolean = false;
		var possuiPedaco03:Boolean = false;
		var possuiPedaco04:Boolean = false;
		var possuiPedaco05:Boolean = false;
		var possuiPedaco06:Boolean = false;
		var possuiPedaco07:Boolean = false;
		var possuiPedaco08:Boolean = false;
		var possuiPedaco09:Boolean = false;
		var possuiPedaco10:Boolean = false;
		var possuiPedaco11:Boolean = false;
		var possuiPedaco12:Boolean = false;
		var possuiPedaco13:Boolean = false;
		var possuiPedaco14:Boolean = false;
		var possuiPedaco15:Boolean = false;
		var possuiPedaco16:Boolean = false;
		var possuiPedaco17:Boolean = false;
		var possuiPedaco18:Boolean = false;
		var possuiPedaco19:Boolean = false;
	}

	{ /* Porta */
		var porta:Boolean = false;
	}

	{ /* Animação */
		var animacao:String = "parado";
	}

	/*{ /* Mensagens
		var mensagem1:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer...";
		var mensagem2:String = "Costumavamos olhar por\nessa janela no anoi-\ntecer...";
		var mensagem3:String = "Todo dia que ela che-\ngava, ela colocava seu\ncasaco aqui...";
		var mensagem4:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem5:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem6:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem7:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem8:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem9:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem10:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem11:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem12:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem13:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem14:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem15:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem16:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem17:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem18:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
		var mensagem19:String = "Lembro de ter tirado\nessa foto antes de tudo\nocorrer";
	}*/

	/*{ /* Tempo
		var timer:Timer = new Timer(1000);
		var count:int = 0;
	}*/
}
/*-----------------------------------------------------------------------------------------------------------------*/
{ /* Region Funções */
	function TeclaPressionada(e:KeyboardEvent):void
	{
		/*------------------------------------------------------------------------------------------------------------*/
		{ /* Pressionar Teclas Eixo X */
			if (e.keyCode == Keyboard.LEFT || e.keyCode == Keyboard.A)
				esquerdapressionada = true;
			else if (e.keyCode == Keyboard.RIGHT || e.keyCode == Keyboard.D)
				direitapressionada = true;
		}
		/*------------------------------------------------------------------------------------------------------------*/
		{ /* Pressionar Teclas Eixo Y */
			if (e.keyCode == Keyboard.UP || e.keyCode == Keyboard.W)
				cimapressionada = true;
			else if (e.keyCode == Keyboard.DOWN || e.keyCode == Keyboard.S)
				baixopressionada = true;
		}
		/*------------------------------------------------------------------------------------------------------------*/
		{ /* Pressionar Tecla Espaço */
			if (e.keyCode == Keyboard.SPACE)
				espacopressionada = true;
		}
		/*------------------------------------------------------------------------------------------------------------*/
	}
	/*-------------------------------------------------------------------------------------------------------------*/
	function TeclaSolta(e:KeyboardEvent):void
	{
		/*------------------------------------------------------------------------------------------------------------*/
		{ /* Soltar Teclas Eixo X */
			if (e.keyCode == Keyboard.LEFT || e.keyCode == Keyboard.A)
				esquerdapressionada = false;
			else if (e.keyCode == Keyboard.RIGHT || e.keyCode == Keyboard.D)
				direitapressionada = false;
		}
		/*------------------------------------------------------------------------------------------------------------*/
		{ /* Soltar Teclas Eixo Y */
			if (e.keyCode == Keyboard.UP || e.keyCode == Keyboard.W)
				cimapressionada = false;
			else if (e.keyCode == Keyboard.DOWN || e.keyCode == Keyboard.S)
				baixopressionada = false;
		}
		/*---------------------------------------------------------------------------------------------------------*/
		{ /* Pressionar Tecla Espaço */
			if (e.keyCode == Keyboard.SPACE)
				espacopressionada = false;
		}
		/*------------------------------------------------------------------------------------------------------------*/
	}
	/*-------------------------------------------------------------------------------------------------------------*/
	function loop(e:Event):void
	{
		{ /* Region Verificação Colisão */
			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoN.x, MvcPersonagem.y + pontoN.y, true))
				ColisaoPontoN = true;
			else
				ColisaoPontoN = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoNNE.x, MvcPersonagem.y + pontoNNE.y, true))
				ColisaoPontoNNE = true;
			else
				ColisaoPontoNNE = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoNE.x, MvcPersonagem.y + pontoNE.y, true))
				ColisaoPontoNE = true;
			else
				ColisaoPontoNE = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoENE.x, MvcPersonagem.y + pontoENE.y, true))
				ColisaoPontoENE = true;
			else
				ColisaoPontoENE = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoE.x, MvcPersonagem.y + pontoE.y, true))
				ColisaoPontoE = true;
			else
				ColisaoPontoE = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoESE.x, MvcPersonagem.y + pontoESE.y, true))
				ColisaoPontoESE = true;
			else
				ColisaoPontoESE = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoSE.x, MvcPersonagem.y + pontoSE.y, true))
				ColisaoPontoSE = true;
			else
				ColisaoPontoSE = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoSSE.x, MvcPersonagem.y + pontoSSE.y, true))
				ColisaoPontoSSE = true;
			else
				ColisaoPontoSSE = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoS.x, MvcPersonagem.y + pontoS.y, true))
				ColisaoPontoS = true;
			else
				ColisaoPontoS = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoSSO.x, MvcPersonagem.y + pontoSSO.y, true))
				ColisaoPontoSSO = true;
			else
				ColisaoPontoSSO = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoSO.x, MvcPersonagem.y + pontoSO.y, true))
				ColisaoPontoSO = true;
			else
				ColisaoPontoSO = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoOSO.x, MvcPersonagem.y + pontoOSO.y, true))
				ColisaoPontoOSO = true;
			else
				ColisaoPontoOSO = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoO.x, MvcPersonagem.y + pontoO.y, true))
				ColisaoPontoO = true;
			else
				ColisaoPontoO = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoONO.x, MvcPersonagem.y + pontoONO.y, true))
				ColisaoPontoONO = true;
			else
				ColisaoPontoONO = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoNO.x, MvcPersonagem.y + pontoNO.y, true))
				ColisaoPontoNO = true;
			else
				ColisaoPontoNO = false;

			if (MvcMeio.MvcChaoLimite.hitTestPoint(MvcPersonagem.x + pontoNNO.x, MvcPersonagem.y + pontoNNO.y, true))
				ColisaoPontoNNO = true;
			else
				ColisaoPontoNNO = false;
		}
		/*---------------------------------------------------------------------------------------------------------*/
		{ /* Region Teclas Pressionadas */
			if(esquerdapressionada)
			{
				velocidadeX -= friccaoConstante;
				MvcPersonagem.scaleX = -1;
			}
			else if (direitapressionada)
			{
				velocidadeX += friccaoConstante;
				MvcPersonagem.scaleX = 1;
			}
			/*
				if (cimapressionada)
					velocidadeY -= friccaoConstante;
				else if (baixopressionada)
					velocidadeY += friccaoConstante;
			*/
		}
		/*---------------------------------------------------------------------------------------------------------*/
		{ /* Region Calculos Colisão */
			{ /* Region VelocidadeX < - Esquerda */
				if(ColisaoPontoONO || ColisaoPontoO || ColisaoPontoOSO)
					if(velocidadeX < 0)
						velocidadeX *= -0.5;
			}
			/*-----------------------------------------------------------------------------------------------------*/
			{ /* Region VelocidadeX > - Direita */
				if(ColisaoPontoENE || ColisaoPontoE || ColisaoPontoESE)
					if(velocidadeX > 0)
						velocidadeX *= -0.5;
			}
			/*-----------------------------------------------------------------------------------------------------*/
			{ /* Region VelocidadeY < - Cima */
				if(ColisaoPontoNNO || ColisaoPontoN || ColisaoPontoNNE)
					if(velocidadeY < 0)
						velocidadeY *= -0.5;
			}
			/*-----------------------------------------------------------------------------------------------------*/
			{ /* Region VelocidadeY > - Baixo */
				if(ColisaoPontoSSO || ColisaoPontoS || ColisaoPontoSSE)
				{
					if(velocidadeY > 0)
						velocidadeY *= -0.5;
					if(cimapressionada)
						velocidadeY += puloConstante;
				}
				else
					velocidadeY += gravidadeConstante;
			}
			/*-----------------------------------------------------------------------------------------------------*/
			{ /* Region VelocidadeX < + VelocidadeY < - Esquerda + Cima */
				if(ColisaoPontoNO)
					if(velocidadeX < 0 && velocidadeY < 0)
					{
						velocidadeX *= -0.5;
						velocidadeY *= -0.5;
					}
			}
			/*-----------------------------------------------------------------------------------------------------*/
			{ /* Region VelocidadeX < + VelocidadeY > - Esquerda + Baixo */
				if(ColisaoPontoSO)
					if(velocidadeX < 0 && velocidadeY > 0)
					{
						velocidadeX *= -0.5;
						velocidadeY *= -0.5;
					}
			}
			/*-----------------------------------------------------------------------------------------------------*/
			{ /* Region VelocidadeX > + VelocidadeY < - Direita + Cima */
				if(ColisaoPontoNE)
					if(velocidadeX > 0 && velocidadeY < 0)
					{
						velocidadeX *= -0.5;
						velocidadeY *= -0.5;
					}
			}
			/*-----------------------------------------------------------------------------------------------------*/
			{ /* Region VelocidadeX > + VelocidadeY > - Direita + Baixo */
				if(ColisaoPontoSE)
					if(velocidadeX > 0 && velocidadeY > 0)
					{
						velocidadeX *= -0.5;
						velocidadeY *= -0.5;
					}
			}
			/*-----------------------------------------------------------------------------------------------------*/
		}
		{ /* Region Animação Person */
			if (MvcPersonagem.currentLabel != animacao)
				MvcPersonagem.gotoAndStop(animacao);

			if ((esquerdapressionada || direitapressionada || velocidadeX > friccaoConstante || velocidadeY < friccaoConstante * -1) && ColisaoPontoS)
				animacao = "andando";
			else
				animacao = "parado";
		}

		/*---------------------------------------------------------------------------------------------------------*/
		{ /* Region Calculos Movimentação cenário*/
			cameraX -= velocidadeX;
			cameraY -= velocidadeY;
			velocidadeX *= friccaoBase;
			velocidadeY *= friccaoBase;
			MvcMeio.x = cameraX;
			MvcFrente.x = cameraX*2;
			MvcMeio.y = cameraY;
			MvcFrente.y = cameraY*2;
			//MvcLua.y = cameraY * -1 /8;
		}
		/*---------------------------------------------------------------------------------------------------------*/
		{ /* Region "Freio" ABS */
			/* Manual
				if (velocidadeX < 0 && velocidadeX > -0.89)
					velocidadeX = 0;
				if (velocidadeY < 0 && velocidadeY > -0.89)
					velocidadeY = 0;
				if (velocidadeX > 0 && velocidadeX < 0.89)
					velocidadeX = 0;
				if (velocidadeY > 0 && velocidadeY < 0.89)
					velocidadeY = 0;
			*/
			if (Math.abs(velocidadeX) < 0.89)
				velocidadeX = 0;
			if (Math.abs(velocidadeY) < 0.89)
				velocidadeY = 0;

		}
		/*---------------------------------------------------------------------------------------------------------*/
		{ /* Region Verificação Chaves */
			if (!possuiPedaco01)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco1) && espacopressionada)
				{
					MvcMeio.MvcPedaco1.visible = false;
					MvcCoracaoMenu.MvcPedaco1.visible = true;
					possuiPedaco01 = true;
				}
			if (!possuiPedaco02)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco2) && espacopressionada)
				{
					MvcMeio.MvcPedaco2.visible = false;
					MvcCoracaoMenu.MvcPedaco2.visible = true;
					possuiPedaco02 = true;
				}
			if (!possuiPedaco03)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco3) && espacopressionada)
				{
					MvcMeio.MvcPedaco3.visible = false;
					MvcCoracaoMenu.MvcPedaco3.visible = true;
					possuiPedaco03 = true;
				}
			if (!possuiPedaco04)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco4) && espacopressionada)
				{
					MvcMeio.MvcPedaco4.visible = false;
					MvcCoracaoMenu.MvcPedaco4.visible = true;
					possuiPedaco04 = true;
				}
			if (!possuiPedaco05)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco5) && espacopressionada)
				{
					MvcMeio.MvcPedaco5.visible = false;
					MvcCoracaoMenu.MvcPedaco5.visible = true;
					possuiPedaco05 = true;
				}
			if (!possuiPedaco06)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco6) && espacopressionada)
				{
					MvcMeio.MvcPedaco6.visible = false;
					MvcCoracaoMenu.MvcPedaco6.visible = true;
					possuiPedaco06 = true;
				}
			if (!possuiPedaco07)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco7) && espacopressionada)
				{
					MvcMeio.MvcPedaco7.visible = false;
					MvcCoracaoMenu.MvcPedaco7.visible = true;
					possuiPedaco07 = true;
				}
			if (!possuiPedaco08)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco8) && espacopressionada)
				{
					MvcMeio.MvcPedaco8.visible = false;
					MvcCoracaoMenu.MvcPedaco8.visible = true;
					possuiPedaco08 = true;
				}
			if (!possuiPedaco09)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco9) && espacopressionada)
				{
					MvcMeio.MvcPedaco9.visible = false;
					MvcCoracaoMenu.MvcPedaco9.visible = true;
					possuiPedaco09 = true;
				}
			if (!possuiPedaco10)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco10) && espacopressionada)
				{
					MvcMeio.MvcPedaco10.visible = false;
					MvcCoracaoMenu.MvcPedaco10.visible = true;
					possuiPedaco10 = true;
				}
			if (!possuiPedaco11)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco11) && espacopressionada)
				{
					MvcMeio.MvcPedaco11.visible = false;
					MvcCoracaoMenu.MvcPedaco11.visible = true;
					possuiPedaco11 = true;
				}
			if (!possuiPedaco12)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco12) && espacopressionada)
				{
					MvcMeio.MvcPedaco12.visible = false;
					MvcCoracaoMenu.MvcPedaco12.visible = true;
					possuiPedaco12 = true;
				}
			if (!possuiPedaco13)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco13) && espacopressionada)
				{
					MvcMeio.MvcPedaco13.visible = false;
					MvcCoracaoMenu.MvcPedaco13.visible = true;
					possuiPedaco13 = true;
				}
			if (!possuiPedaco14)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco14) && espacopressionada)
				{
					MvcMeio.MvcPedaco14.visible = false;
					MvcCoracaoMenu.MvcPedaco14.visible = true;
					possuiPedaco14 = true;
				}
			if (!possuiPedaco15)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco15) && espacopressionada)
				{
					MvcMeio.MvcPedaco15.visible = false;
					MvcCoracaoMenu.MvcPedaco15.visible = true;
					possuiPedaco15 = true;
				}
			if (!possuiPedaco16)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco16) && espacopressionada)
				{
					MvcMeio.MvcPedaco16.visible = false;
					MvcCoracaoMenu.MvcPedaco16.visible = true;
					possuiPedaco16 = true;
				}
			if (!possuiPedaco17)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco17) && espacopressionada)
				{
					MvcMeio.MvcPedaco17.visible = false;
					MvcCoracaoMenu.MvcPedaco17.visible = true;
					possuiPedaco17 = true;
				}
			if (!possuiPedaco18)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco18) && espacopressionada)
				{
					MvcMeio.MvcPedaco18.visible = false;
					MvcCoracaoMenu.MvcPedaco18.visible = true;
					possuiPedaco18 = true;
				}
			if (!possuiPedaco19)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPedaco19) && espacopressionada)
				{
					MvcMeio.MvcPedaco19.visible = false;
					MvcCoracaoMenu.MvcPedaco19.visible = true;
					possuiPedaco19 = true;
				}
		}
		/*---------------------------------------------------------------------------------------------------------*/
		{ /* Region Verificação Porta */
			if (!porta)
				if (MvcPersonagem.hitTestObject(MvcMeio.MvcPorta))
					if (possuiPedaco01 && possuiPedaco02 && possuiPedaco03 && possuiPedaco04 && possuiPedaco05 && possuiPedaco06 && possuiPedaco07 && possuiPedaco08 && possuiPedaco09 && possuiPedaco10 && possuiPedaco11 && possuiPedaco12 && possuiPedaco13 && possuiPedaco14 && possuiPedaco15 && possuiPedaco16 && possuiPedaco17 && possuiPedaco18 && possuiPedaco19)
						gotoAndStop(1, "ScnFimBom");
					else
						gotoAndStop(1, "ScnFimRuim");
		}
		/*---------------------------------------------------------------------------------------------------------*/
		{ /* Region Exibição Valores Calculos */
			//trace ("MvcMeio.x: " + MvcMeio.x);
			//trace ("MvcMeio.y: " + MvcMeio.y);
			//trace ("MvcFrente.x: " + MvcFrente.x);
			//trace ("MvcFrente.y: " + MvcFrente.y);
			//trace ("MvcLua.x: " + MvcLua.x);
			//trace ("MvcLua.y: " + MvcLua.y);
			//trace ("CameraX: " + cameraX);
			//trace ("CameraY: " + cameraY);
			//trace ("VelocidadeX: " + velocidadeX);
			//trace ("VelocidadeY: " + velocidadeY + "\n");
		}
	}
}
/*-----------------------------------------------------------------------------------------------------------------*/
/*{ /* Region Timer
	function onTick(event:TimerEvent):void
	{
		if (MvcPensamento.visible)
		{
			count++;
			if (count==2)
			{
				MvcPensamento.visible = false;
				count=0;
			}
		}
	}
}*/
/*-----------------------------------------------------------------------------------------------------------------*/
{ /* Region Eventos */
	stage.addEventListener(Event.ENTER_FRAME, loop);
	stage.addEventListener(KeyboardEvent.KEY_DOWN, TeclaPressionada);
	stage.addEventListener(KeyboardEvent.KEY_UP, TeclaSolta);
}
/*-----------------------------------------------------------------------------------------------------------------*/
/*{ /* Region Exec Ao Iniciar
	timer.start();
	MvcMeio.MvcDoor.gotoAndStop(1);
	MvcBatteryMini.visible = false;
	MvcBattery2Mini.visible = false;
}*/
/*-----------------------------------------------------------------------------------------------------------------*/
