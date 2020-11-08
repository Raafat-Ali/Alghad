"use strict";

(function($) {
    function ProgressBar(config) {
        this.init(config);
    }
    ProgressBar.prototype = { 		
		icon: "",// 0<-> two circles the same thickness, 1<-> the top circle is in +4px thickness		
		title: "title",//title text
		caption: "caption",//caption text  
		devide: 5,
        bgcolor: "#eee",//color of background circle
		clrborder: "#d2d0d0",
		clrstart: "#72c926",
		clrend: "#87de38",
		position:10,
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
        animate: true,//animation speed 0<-> no animation  				
		//-------------------------------------- protected properties and methods --------------------------------------
        /**
         * @protected
         */
        constructor: ProgressBar,        
		/**         
         * @protected
         * @type {number}
         */
        width: 0,
		/**         
         * @protected
         * @type {number}
         */
        height: 0,
		/**         
         * @protected
         * @type {number}
         */
        p_width: 0,
		/**         
         * @protected
         * @type {number}
         */
        p_height: 0,
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
		/**         
         * @protected
         * @type {boolean}
         */
        animate_finish: false,
		tdText: null,
		//getter and setter        		
		getTitle: function() {
            return this.title;
        },
        setTitle: function(newValue) {			
			this.title = newValue;
			$(this.tdText).html(this.title+'<br/><font color="'+this.cfntcolor+'">'+this.caption+"</font>");				
        },
		getCaption: function() {
            return this.caption;
        },     
		setCaption: function(newValue) {
			this.caption = newValue;
			$(this.tdText).html(this.title+'<br/><font color="'+this.cfntcolor+'">'+this.caption+"</font>");				
        },
		init: function(config) {
			var self=this;
            $.extend(this, config); 			
            this.initWidget();
			$.event.special.debouncedresize.threshold = 250;
			$(window).bind("debouncedresize", function() {
				self.animate_finish=true;
				self.el.empty();
				self.oThik=self.thik;
				self.width=self.el.parent().width();
				self.height=self.el.parent().height();			
				self.drawBackground();	
			});
        },
        initWidget: function() {	
			this.animate_finish=false;
			this.oThik=this.thik;
			this.width=this.el.parent().width();
			this.height=this.el.parent().height();			
			this.drawBackground();					
        },			
		drawBackground: function (){
				var tdIconWidth=this.height*0.8900;
				var imgIconWidth=this.height*0.6500;
				var titleWidth=this.height*1.0000;
				var fnSize=this.height*0.2450;				
				var dvBG = $('<div></div>').appendTo(this.el)[0];
				var tblBG = $('<table border="0"></table>').appendTo(dvBG)[0];
				var trBG = $('<tr></tr>').appendTo(tblBG).get(0);
				var tdIcon = $('<td></td>').appendTo(trBG).get(0);
				var tdTitle = $('<td></td>').appendTo(trBG).get(0);
				var tdBar = $('<td></td>').appendTo(trBG).get(0);											
				$(dvBG)
					.css({'width': (this.width-2).toString()+'px'})
					.css({'height': (this.height-2).toString()+'px'})
					.css({'background-color': this.bgcolor})
					.css({'border': '1px solid '+this.clrborder})
					.css({'border-radius':'5px'});					
				$(tblBG)
					.css({'width': this.width.toString()+'px'})
					.css({'height': this.height.toString()+'px'})
					.css({'vertical-align': 'middle'})
					.css({'position': 'relative'})								
					.css({'font': '14px Tahoma, Helvetica, sans-serif'})	
					.css({'font-weight': 'normal'})	
					.css({'text-align': 'center'})
					.css({'border-spacing': '0'})
					.css({'border-collapse': 'collapse'});				
				$(tdIcon)
					.css({'text-align': 'center'})
					.css({'vertical-align': 'middle'})
					.css({'width': tdIconWidth.toString()+'px'});					
				$(tdTitle)
					.css({'width': titleWidth.toString()+'px'})	
					.css({'font-size': fnSize.toString()+'px'})					
					.css({'color': this.tfntcolor});								
				var img = $('<img src="'+this.icon+'" style="height:'+imgIconWidth.toString()+'px;margin:auto;"/>').appendTo(tdIcon).get(0);
				$(tdTitle).html(this.title+'<br/><font color="'+this.cfntcolor+'">'+this.caption+"</font>");	
				this.tdText=tdTitle;
				this.drawBar(tdBar);					
		},
		drawBar: function(tdBar){
				var brBGWidth=$(tdBar).width()*0.85;
				var brHeight=$(tdBar).height()*0.40;
				var brProgressWidth=(this.position/100)*brBGWidth;
				console.log('brBGWidth:'+brBGWidth+' ,brProgressWidth:'+brProgressWidth);
				var dvBG = $('<div></div>').appendTo(tdBar)[0];
				$(dvBG)
					.css({'width': brBGWidth.toString()+'px'})
					.css({'height': brHeight.toString()+'px'})					
					.css({'border': '1px solid #aeadad'})
					.css({'border-radius':'5px'})
					.css({'margin':'auto'})		
					.css({'overflow':'hidden'})
					.css({'position':'relative'})	
					.css({'background':'-webkit-linear-gradient(#bebebe, #d5d5d5)'})
					.css({'background':'-o-linear-gradient(#bebebe, #d5d5d5)'})
					.css({'background':'-moz-linear-gradient(#bebebe, #d5d5d5)'})
					.css({'background':'linear-gradient(#bebebe, #d5d5d5)'});																		
				var dvPrgrs = $('<div></div>').appendTo(dvBG)[0];
				$(dvPrgrs)
					.css({'width': '0px'})
					.css({'height': brHeight.toString()+'px'})					
					.css({'border': '1px solid #aeadad'})
					.css({'border-top-left-radius':'5px'})					
					.css({'border-bottom-left-radius':'5px'})					
					.css({'position':'relative'})
					.css({'top':'-1px'})		
					.css({'left':'-1px'})		
					.css({'background':'-moz-linear-gradient(top,'+this.clrend+' 0%,'+this.clrend+' 50%, '+this.clrstart+' 52%, '+this.clrstart+' 100%)'})
					.css({'background':'-webkit-linear-gradient(top,'+this.clrend+' 0%,'+this.clrend+' 50%,'+this.clrstart+' 52%,'+this.clrstart+' 100%)'})
					.css({'background':'linear-gradient(to bottom,'+this.clrend+' 0%,'+this.clrend+' 50%,'+this.clrstart+' 52%,'+this.clrstart+' 100%)'})
					.css({'filter':'progid:DXImageTransform.Microsoft.gradient( startColorstr="'+this.clrend+'", endColorstr="'+this.clrstart+'",GradientType=0 )'});
				if(!this.animate_finish && this.animate) {
					$(dvPrgrs).animate({ "width": brProgressWidth.toString()+'px' }, {duration: 1000,easing: 'swing'} );
				}else {
					$(dvPrgrs).css({'width': brProgressWidth.toString()+'px'});
				}				
				for(var i=0;i<this.devide;i++){
				   var a=$('<div></div>').appendTo(dvBG)[0];
				   $(a)
					.css({'width': '1px'})
					.css({'height': brHeight.toString()+'px'})					
					.css({'background-color':'#fff'})
					.css({'position':'absolute'})
					.css({'top':'0px'})		
					.css({'left':((i*(brBGWidth/this.devide))+(brBGWidth/this.devide)).toString()+'px'})
					.css({'opacity':'0.25'});					
				}		
		
		}
    };
    //-------------------------------------------- Initiating jQuery plugin --------------------------------------------
    $.ProgressBar = {        
        defaults: ProgressBar.prototype
    };
    //-------------------------------------------------------------------------------------------------------------------
    $.fn.ProgressBar = function(configOrCommand, commandArgument) {
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
                instance = new ProgressBar(config);
                el.data(dataName, instance);
            }
        });
    };
})(jQuery);
