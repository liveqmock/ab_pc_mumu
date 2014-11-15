/*
* zisasign
* 2014.4.23
* 广告启动js
* 2014.8.29
* 重写了结构
*/

define('jobAds/setup', ['jquery', 'jobAds/jobs'], function(require, exports){
  var jobAds = require('jobAds/jobs');
  var jQ = require('jquery');
  
  // ie8 does not surpport Date.now()
  var date_now = Date.now || function() { return +new Date; };
  
  var random = parseInt(Math.random()*100000),
      lagou_url = "/usersubmit.html?is_ajax=1&" + random + "&huxiu_hash_code=" + huxiu_hash_code + "&act=get_lagou_data&aid=" + count_article_id,
      liepin_url = "/usersubmit.html?is_ajax=1&" + random + "&huxiu_hash_code=" + huxiu_hash_code + "&act=get_liepin_data";
  var specialPosition = {
    hurl: "http%3A%2F%2Fjob.liepin.com%2F185_1856705%3Fmscid%3Dh_x_0001",
    name: "猎聘网",
    salary: "18-23万",
    title: "高级产品经理"
  }
  
  function liepinItemWrap(item, baseUrl) {
    return "<li class='position-item'>" +
             "<a href='"+ baseUrl + item.hurl.replace(/h_x_0001/i, "h_x_0004") + "' target='_blank'>" +
               "<dl>" +
                 "<dt class='title' title='" + item.title + "'>" + item.title + "</dt>" +
                 "<dd class='company' >" + item.name + "</dd>" +
                 "<dd class='salary'>" + item.salary.substring(0, item.salary.length - 1)  +"<em>万</em></dd>" +
               "</dl>" +
             "</a>" +
           "</li>";
  }
  
  function lagouItemWrap(item, baseUrl) {
    return "<li class='position-item'>" + 
             "<a href='" + baseUrl + item.hurl + "' target='_blank'>" +
               "<dl>" +
                 "<dt class='title' title='" + item.positionName + "'>" + item.positionName + "</dt>" +
                 "<dd class='company'>" + item.companyName + "</dd>" +
                 "<dd class='salary'><em>" + parseFloat(item.salary) + "万</em>/年</dd>" +
                 "<dd class='advantage'>职位诱惑: " + item.positionAdvantage + "</dd>" +
               "</dl>" +
             "</a>" +
           "</li>";
  }
  
  exports.add_jobAds1 = function() {
    var id = "#liepin_ad_wide";
    jQ.post(liepin_url, function (data) {
      var data = eval('(' + data + ')');
      if(data.is_success == "1") {
        var controller = new jobAds(id, "liepin", "web", "1", "horizontal");
        controller.add_promo("http://www.liepin.com/%3Fmscid=h_x_0004", "/static/img/jobAds/liepin_left_8_18.png");
        controller.add_positions(data.datalist.slice(0, -1), liepinItemWrap)
                  .add_special_position(specialPosition, liepinItemWrap);
        controller.add_control_buttons().add_animate().show();
      }
    })
  }
  
  exports.add_jobAds2 = function() {
    var id = "#liepin_ad";
    jQ.post(liepin_url, function (data) {
      var data = eval('(' + data + ')');
      if(data.is_success == "1") {
        var controller = new jobAds(id, "liepin", "web", "2", "horizontal");
        controller.add_promo("http://www.liepin.com/%3Fmscid=h_x_0004", "/static/img/jobAds/liepin_promo.png");
        controller.add_positions(data.datalist.slice(0, -1), liepinItemWrap)
                  .add_special_position(specialPosition, liepinItemWrap);
        controller.add_control_buttons().add_animate().show();
      }
    })
  }
  
  exports.add_jobAds3 = function() {
    var id = "#lagou_ad";
    jQ.post(lagou_url, function (data) {
      var data = eval('(' + data + ')');
      if(data.is_success == "1") {
        var controller = new jobAds(id, "lagou", "web", "3", "vertical");
        controller.add_promo("http://www.lagou.com/%3Futm_source=AD__huxiu_banner%26utm_medium=front%26utm_campaign=toufang", "/static/img/jobAds/lagou_promo_1020.png");
        // controller.add_promo("http://www.lagou.com/%3Futm_source=AD__huxiu_banner%26utm_medium=front%26utm_campaign=toufang", "/static/img/jobs_lagou_promo_10_09.jpg?time=20141009");
        controller.add_positions(data.datalist, lagouItemWrap);
        controller.add_control_buttons().add_animate().show();//.affix();
      }
    })
  }
  
  exports.add_jobAds4 = function() {
    var id = "#lagou_ad_index";
    jQ.post(lagou_url, function (data) {
      var data = eval('(' + data + ')');
      if(data.is_success == "1") {
        var controller = new jobAds(id, "lagou", "web", "6", "vertical"); controller.add_promo("http://www.lagou.com/%3Futm_source=AD__huxiu_banner%26utm_medium=front%26utm_campaign=toufang", "/static/img/jobAds/lagou_promo_1020.png?time=20140929");
        // var controller = new jobAds(id, "lagou", "web", "6", "vertical"); controller.add_promo("http://www.lagou.com/%3Futm_source=AD__huxiu_banner%26utm_medium=front%26utm_campaign=toufang", "/static/img/jobs_lagou_promo_10_09.jpg?time=20141009");
        controller.add_positions(data.datalist, lagouItemWrap);
        controller.add_control_buttons().add_animate().show();
      }
    })
  }
  
})