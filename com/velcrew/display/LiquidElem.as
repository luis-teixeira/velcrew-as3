﻿/* AS3	Copyright 2009 __velcrew__.		www.velcrew.com*/package  com.velcrew.display{	import flash.display.Sprite;	import flash.events.Event;	import flash.display.BitmapData;	import flash.display.BlendMode;		import gs.TweenLite;	import gs.easing.*			/**	 *	 *	Liquid Element v0.2.1	 *		 *	_elem now knowed as content and is public 	 *		 *	NOW HAVE ANIMATION -> Dependencies TweenLite v10.09 (http://blog.greensock.com/tweenliteas3/)	 *		 *	Liquid Element v0.1.1	 *		 *	cahnge the package name -> now display instead of utils	 *		 *	Liquid Element v0.1	 *	 *	@langversion ActionScript 3.0	 *	@playerversion Flash 9.0	 *	 *	@author Luis Teixeira aka Fraude	 *	@since  2009-04-07	 */	public class LiquidElem extends Sprite {				private var _reference  :BitmapData;	    private var _elem  		:Sprite;		public var 	content		:Sprite;		private var _posx 		:Number;		private var _posy 		:Number;		private var _animated   :Boolean;		private var _time 		:Number;		private var _delay 		:Number;						public function LiquidElem(bmp:BitmapData,posx, posy,animated = false,time = 1, delay = .3){						addEventListener( Event.ADDED_TO_STAGE, init );			_reference = bmp;			_posx = posx;			_posy = posy;			_animated = animated;			_time =  time;			_delay = delay;				}				private function init( event:Event ) : void		{						removeEventListener(Event.ADDED_TO_STAGE, init);		    //stage.addEventListener(Event.RESIZE, fullBg);		    setBg();		}				private function setBg(e:Event = null):void		{			//trace(_reference.width);						var oldTile:Sprite  = content;						content                = new Sprite();		    content.graphics.beginBitmapFill(_reference);		    content.graphics.drawRect(0, 0, _reference.width, _reference.height);		    content.graphics.endFill();			content.x = _posx;			content.y = _posy;					    addChild(content);									/*				var oldTile:Sprite  = _elem;					    _elem                = new Sprite();		    _elem.graphics.beginBitmapFill(_reference);		    _elem.graphics.drawRect(0, 0, _reference.width, _reference.height);		    _elem.graphics.endFill();			_elem.x = _posx;			_elem.y = _posy;					    addChild(_elem);			*/			/*        	if (oldTile != null && oldTile != _tile)        	{		       removeChild(oldTile);	     	}			*/		}				private function fullBg(e:Event = null):void		{			if (_animated)			{				TweenLite.to(content, _time, {x:_posx, y:_posy,delay:_delay, ease:Back.easeOut});			} else {								content.x = _posx;				content.y = _posy;				/*				_elem.x = _posx;				_elem.y = _posy;				*/			}					}				public function update(posx, posy) : void 		{			_posx = posx;			_posy = posy;			fullBg();		}	}	}