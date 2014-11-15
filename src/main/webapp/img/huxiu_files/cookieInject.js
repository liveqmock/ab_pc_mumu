define('jobAds/cookieInject', function(require, exports, module){
  function setCookie(name, value) {
      var d = new Date();
      // get the begining of today
      d.setHours(0,0,0,0);
      d.setTime(d.getTime() + (1*24*60*60*1000));
      var expires = "expires="+d.toUTCString();
      document.cookie = name + "=" + value + "; " + expires;
  }

  function getCookie(name) {
      var name = name + "=";
      var cookies = document.cookie.split(';');
      
      for(var i=0; i<cookies.length; i++) {
          var c = cookies[i];
          while (c.charAt(0)==' ') c = c.substring(1);
          if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
      }
      return "";
  }

  function generateUString() {
    var startPos = 2 + Math.floor(Math.random() * 3 + 1);
    return Math.random().toString(36).substr(startPos, 10);
  }

  var __jtid = getCookie("HXJTID");
  if (!__jtid) {
    __jtid = generateUString();
    setCookie('HXJTID', __jtid);
  }
  module.exports = __jtid;
})