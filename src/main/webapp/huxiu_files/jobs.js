/*
* zisasign
* 2014.4.23
* 招聘广告js
* 2014.5.26
* 修改 增加猎聘
* 2014.7.9
* 修改 增加猎聘 名企推荐
* 2014.8.29
* 重写了结构
*/
define('jobAds/jobs', ['jquery', 'jobAds/cookieInject'], function(require, exports, module) {
  var jQ = require('jquery');  
  var jtid = require('jobAds/cookieInject');
  
  // ie8 does not support Function.prototype.bind
  if (!Function.prototype.bind) {
    Function.prototype.bind = function (oThis) {
      if (typeof this !== "function") {
        // closest thing possible to the ECMAScript 5
        // internal IsCallable function
        throw new TypeError("Function.prototype.bind - what is trying to be bound is not callable");
      }

      var aArgs = Array.prototype.slice.call(arguments, 1), 
          fToBind = this, 
          fNOP = function () {},
          fBound = function () {
            return fToBind.apply(this instanceof fNOP && oThis
                   ? this
                   : oThis,
                   aArgs.concat(Array.prototype.slice.call(arguments)));
          };

      fNOP.prototype = this.prototype;
      fBound.prototype = new fNOP();

      return fBound;
    };
  }
  
  function jobAds(id, j, f,  pos, direction) {
    this.baseElement = jQ(id);
    this.j = j;
    this.pos = pos;
    this.f = f;
    this.animateDriection = direction;
  }
  
  jobAds.prototype.add_promo = function(url, imageUrl) {
    // promo插入到第一位置
    var content = "<div class='promo'>"+ 
                    "<a href='" + "/jump.html?j=" + this.j + "&pos=" + this.pos + "&f=" + this.f + "&jtid="+jtid+ "&jumpto=" + url + "' target='_blank'>" +
                    "<img src=" + imageUrl + "></img></a></div>";
    this.baseElement.prepend(content);
    return this;
  }
  
  jobAds.prototype.add_positions = function(data, itemWrapFunc) {
    var $list_wrapper = jQ("<div class='positions'></div>");
    var $jobs_list = jQ("<ul class='positions-list'></ul>");
    var url = "/jump.html?j=" + this.j + "&pos=" + this.pos + "&f=" + this.f + "&jtid=" + jtid + "&jumpto=";
    jQ.each(data, function(index, item) {
      var content = itemWrapFunc(item, url);
      jQ(content).appendTo($jobs_list);
    })
    $list_wrapper.append($jobs_list);
    this.baseElement.append($list_wrapper);
    return this;
  }
  
  jobAds.prototype.add_special_position = function(item, itemWrapFunc) {
    var url = "/jump.html?j=" + this.j + "&pos=" + this.pos + "&f=" + this.f + "&jtid=" + jtid + "&jumpto=";
    this.baseElement.find(".positions-list").append(itemWrapFunc(item, url));
    return this;
  }
  
  jobAds.prototype.add_control_buttons = function() {
    var content;
    if(this.animateDriection === "vertical") {
      content = "<div id='control'>" + 
          "<div class='up-button job-buttons'><i></i></div>" + 
          "<div class='down-button job-buttons'><i></i></div>" +
          "</div>";
    } else if(this.animateDriection === "horizontal") {
      content = "<div class='left-button job-buttons'><i></i></div>" +
                "<div class='right-button job-buttons'><i></i></div";
    }
    this.baseElement.append(jQ(content));
    return this;
  }
  
  jobAds.prototype.add_animate = function(autoLoop,doubleDecks) {
    var movePx, removeNum, handleFunc,
        animating = false;
    if(this.animateDriection === "vertical") {
      movePx = this.baseElement.find(".positions").height();
      removeNum = Math.floor(movePx / this.baseElement.find(".position-item").height());
      this.baseElement.find(".down-button").on("click", animateFunc.bind(this, "down"));
      this.baseElement.find(".up-button").on("click", animateFunc.bind(this, "up"));
      handleFunc = animateFunc.bind(this, "down");
    } else {
      movePx = this.baseElement.find(".positions").width();
      removeNum = Math.floor(movePx / this.baseElement.find(".position-item").width());
      this.baseElement.find(".left-button").on("click", animateFunc.bind(this, "left"));
      this.baseElement.find(".right-button").on("click", animateFunc.bind(this, "right"));
      handleFunc = animateFunc.bind(this, "left");
    }
    
    if(autoLoop) {
      var intervalHandler;
      this.baseElement.hover(function() {
        clearInterval(intervalHandler);
      },
      function() {
        intervalHandler = setInterval(handleFunc,2000);
      }).trigger('mouseleave');
    }

    function animateFunc(direction) {
      if(animating) return;
      var $list = this.baseElement.find(".positions-list");
      var $items = $list.find(".position-item");
      animating = true;
      switch(direction) {
      case "down":
        $list.animate({
          top: -movePx + 'px'
        },
        1000,
        function(){
          var $target = $items.slice(0, removeNum);
          $list.append($target).css("top", 0);
          animating = false;
        });
        break;
      case "up":
        var $target = $items.slice(-removeNum);
        $list.prepend($target).css("top", -movePx);
        $list.animate({top: 0 + 'px'},1000,
        function(){
          $list.css("top", 0);
          animating = false;
        })
        break;
      case "left":
        var $target = $items.slice(-removeNum);
        $list.prepend($target).css("left", -movePx);
        $list.animate({left: 0 + 'px'},1000,
        function(){
          $list.css("left", 0);
          animating = false;
        })
        break;
      case "right":
        $list.animate({left: -movePx + 'px'},1000,
        function(){
          var $target = $items.slice(0, removeNum);
          $list.append($target).css("left", 0);
          animating = false;
        })
        break;
      }
      
    }
    return this;
  }
  
  jobAds.prototype.show = function() {
    this.baseElement.show();
    return this;
  }
  
  jobAds.prototype.affix = function() {
    var offsetTop = this.baseElement.offset().top;
    jQ(window).on("scroll", (function() {
      if (jQ(window).scrollTop() > offsetTop) {
        this.baseElement.css({'position': 'fixed', 'top': '10px', 'z-index': '80'});
      } else {
        this.baseElement.css({'position': 'relative', 'top': 'auto'});
      }
    }).bind(this))
    return this;
  }
  
  module.exports = jobAds;
})