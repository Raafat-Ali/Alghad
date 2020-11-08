"use strict";

(function($) {
    function CircleProgressIcon(config) {
        this.init(config);
    }
    CircleProgressIcon.prototype = { 		
		icon: "",// 0<-> two circles the same thickness, 1<-> the top circle is in +4px thickness		
		title: "title",//title text
		caption: "caption",//caption text        		        
        bgcolor: "#eee",//color of background circle
        fill: false,//fill the background circle
        thik: 5,//radius of the circles
        tfontsize: 35,//title font size
		cfontsize: 15,//caption font size
		tfntname: "tahoma",//title font name
		cfntname: "arial",//caption font name
		tfntcolor: "#556b2f",//title font color
		cfntcolor: "#eee",//caption font color		
		tclass: "",//title css class name
		cclass: "",//caption css class name				
        animationstep: 0,//animation speed 0<-> no animation  
		rotateanimationstep: 0,//animate the circle rotation speed 0<-> no animation 
		shadow:0,//add shadow 0<-> no , shadow  1<->shadow
		//-------------------------------------- protected properties and methods --------------------------------------
        /**
         * @protected
         */
        constructor: CircleProgressIcon,        
		/**         
         * @protected
         * @type {number}
         */
        dimension: 0,
		/**         
         * @protected
         * @type {number}
         */
        oThik: 10,		
		/**         
         * @protected
         * @type {number}
         */
        cX: 0,
		/**         
         * @protected
         * @type {number}
         */
        cY: 0,
        tblBG: null,
		/**         
         * @protected
         * @type {jQuery}
         */
        dvCaption: null,
		/**         
         * @protected
         * @type {jQuery}
         */
        dvTitle: null,		
		/**
         * @protected
         * @type {CanvasRenderingContext2D}
         */
        ctx: null,
		/**
         * @protected
         * @type {}
         */		 
		/**
         * @protected
         * @type {canvas}
         */
        canvas: null,		
		//getter and setter        		
		getTitle: function() {
            return this.title;
        },
        setTitle: function(newValue) {			
			this.title = newValue;
			$(this.dvTitle).text(this.title);				
        },
		getCaption: function() {
            return this.caption;
        },     
		setCaption: function(newValue) {
			this.caption = newValue;
			$(this.dvCaption).text(this.caption);
        },
		init: function(config) {
			var self=this;
            $.extend(this, config); 			
            this.initWidget();
			//bind resize event
			$.event.special.debouncedresize.threshold = 250;
			$(window).bind("debouncedresize", function() {				
				$(self.canvas)
					.attr('width', 1)
					.attr('height', 1);
				self.dimension = (self.el.parent().width() >= self.el.parent().height() ? self.el.parent().height() : self.el.parent().width());				
				self.calcCenterXY();
				$(self.canvas)
					.attr('width', self.dimension)
					.attr('height', self.dimension);	
			self.drawBackCircle();
			$(self.tblBG).remove();			
			self.drawTitle();		
			$(self.canvas).css({'left': self.cX+'px'});
			$(self.canvas).css({'top': self.cY+'px'});			
			});
        },
		//init
        initWidget: function() {		    
			var self=this;
			this.oThik=this.thik;
			self.dimension = (this.el.parent().width() >= this.el.parent().height() ? this.el.parent().height() : this.el.parent().width());
			this.calcCenterXY();
			this.createCanvas();
			this.drawBackCircle();
			this.drawTitle();					
        },
		calcCenterXY: function() {
				this.cX=(this.el.parent().width()-this.dimension)/2;
				this.cY=(this.el.parent().height()-this.dimension)/2;
				this.thik=this.oThik*this.dimension*0.003100;
				console.log('parent.width:'+this.el.parent().width()+' , dimension:'+this.dimension+' , cX:'+this.cX);
		},
		createCanvas: function() {			     
				var size = this.dimension;
				this.canvas = $('<canvas style="position:relative;display:block;"></canvas>').attr({
                    width: size,
                    height: size
                }).appendTo(this.el)[0];				
				$(this.canvas).css({'left': this.cX+'px'});
				$(this.canvas).css({'top': this.cY+'px'});				
				this.ctx = this.canvas.getContext('2d');				
		},
		drawBackCircle: function (){			    
			    var cntrX=Math.floor(this.dimension/2);
				var cntrY=Math.floor(this.dimension/2);
				var Radius=Math.floor(this.dimension/2);				
				Radius-=this.thik/1.5;
				this.ctx.clearRect(0,0,this.dimension,this.dimension);				
				this.ctx.lineWidth = this.thik;				
				if(Radius<=0) Radius=1;
				if(this.shadow==1){
					this.ctx.shadowBlur = 2;
					this.ctx.shadowColor="rgba(0,0,0,0.2)";					
					this.ctx.shadowOffsetY = 1;
				}	
				this.ctx.fillStyle=this.bgcolor;				
				this.ctx.arc(cntrX, cntrY, Radius, this.getRadian(0), this.getRadian(380), false); 								
				this.ctx.fill();					
			},		
		drawTitle: function (){		
				var imgWidth=this.dimension*0.2900;
				var pdTop=this.dimension*0.0540;
				var pdBottom=this.dimension*0.0540;				
				var fnSize=this.dimension*0.1100;
				
				var topAlign='-'+this.dimension.toString()+'px';
				var tblTitle = $('<table></table>').appendTo(this.el)[0];
				var trTitle = $('<tr></tr>').appendTo(tblTitle).get(0);
				var tdTitle = $('<td></td>').appendTo(trTitle).get(0);					
				this.dvTitle = $('<div></div>').appendTo(tdTitle).get(0);
				var imgIcon = $('<img src="'+this.icon+'" style="width:'+imgWidth.toString()+'px;"/>').appendTo(tdTitle).get(0);
				this.dvCaption = $('<div></div>').appendTo(tdTitle).get(0);
				this.tblBG=tblTitle;			
				$(tblTitle)
					.css({'width': this.dimension.toString()+'px'})
					.css({'height': this.dimension.toString()+'px'})
					.css({'vertical-align': 'middle'})
					.css({'position': 'relative'})
					.css({'margin-top': topAlign})				
					.css({'font': '14px Tahoma, Helvetica, sans-serif'})	
					.css({'font-weight': 'normal'})	
					.css({'text-align': 'center'})
					.css({'border-spacing': '0'})
					.css({'border-collapse': 'collapse'});
				$(tblTitle).css({'left': this.cX+'px'})
				$(tblTitle).css({'top': this.cY+'px'});								
				$(this.dvTitle).text(this.title);				
				$(this.dvCaption).text(this.caption);
				
				if(this.tid!="") {
					$(this.dvTitle).attr({id:this.tid});
					$(tdTitle).css({'cursor': 'pointer'});
				} 
				if(this.cid!="") {
					$(this.dvCaption).attr({id:this.cid});					
					$(this.dvCaption).css({'cursor': 'pointer'});
				}
				if(this.tclass!="") $(this.dvTitle).addClass(this.tclass);
				else{	
					$(this.dvTitle).css({'font-size': fnSize.toString()+'px'});	
					$(this.dvTitle).css({'padding-bottom': pdBottom.toString()+'px'});
					$(this.dvTitle).css({'color': this.tfntcolor});
				}				
				if(this.cclass!="") $(this.dvCaption).addClass(this.cclass);
				else{				
					$(this.dvCaption).css({'font-size': fnSize.toString()+'px'});
					$(this.dvCaption).css({'padding-top': pdTop.toString()+'px'});
					$(this.dvCaption).css({'color': this.cfntcolor});
				}								
			},
		getRadian: function (degrees) {
			    //correct the offset 0<->at 3 o'Clock (-90 deg)
				degrees-=90;
                return degrees * Math.PI / 180;
            }
    };
    //-------------------------------------------- Initiating jQuery plugin --------------------------------------------
    $.CircleProgressIcon = {        
        defaults: CircleProgressIcon.prototype
    };
    //-------------------------------------------------------------------------------------------------------------------
    $.fn.CircleProgressIcon = function(configOrCommand, commandArgument) {
        var dataName = 'circle-progress',
            firstInstance = this.data(dataName);
		if (configOrCommand == 'widget') {
            if (!firstInstance)
                throw Error('Calling "widget" method on not initialized instance is forbidden');
            return firstInstance.canvas;
        }
        if (configOrCommand == 'title') {
            if (!firstInstance)
                throw Error('Calling "title" method on not initialized instance is forbidden');
            if (typeof commandArgument == 'undefined') {
                return firstInstance.getTitle();
            } else {
                var newValue = arguments[1];
                return this.each(function() {
					$(this).data(dataName).setTitle(newValue);                   
                });
            }
        }
		else if (configOrCommand == 'caption') {
            if (!firstInstance)
                throw Error('Calling "caption" method on not initialized instance is forbidden');
            if (typeof commandArgument == 'undefined') {
                return firstInstance.getCaption();
            } else {
                var newValue = arguments[1];
                return this.each(function() {
					$(this).data(dataName).setCaption(newValue);                   
                });
            }
        }		
        return this.each(function() {
            var el = $(this),
                instance = el.data(dataName),
                config = $.isPlainObject(configOrCommand) ? configOrCommand : {};

            if (instance) {
                instance.init(config);
            } else {
                var initialConfig = $.extend({}, el.data());
                if (typeof initialConfig.fill == 'string')
                    initialConfig.fill = JSON.parse(initialConfig.fill);                
                config = $.extend(initialConfig, config);
                config.el = el;
                instance = new CircleProgressIcon(config);
                el.data(dataName, instance);
            }
        });
    };
})(jQuery);
