/**
 * Created with JetBrains WebStorm.
 * User: Jason.Yao
 * Date: 13-12-2
 * Time: 上午9:21
 * To change this template use File | Settings | File Templates.
 */
(function ($) {

    $.JasonPager = function (options) {
        this.defaults = $.extend(this.defaults, options);
    }
    $.extend($.JasonPager, {
        defaults: {
            pagerIndex: 1,                                    //当前页码
            pagerSize: 10,                                    //每页显示数量
            pagerCount: 0,                                    //总页数
            pagerRowCount: 10,                               //数据总数量
            pagerShowCount: 10,                               //分页控件显示页数
            pagerContainer: "divPagerContainer",          //分页控件容器
            pagerContContainer: "divMainContainer",       //分页控件容器
            pagerFormId: "mainForm",                        //分页控件表单容器
            pagerIsAjaxSubmit: false,                        //是否Ajax提交
            pagerOnBeforeSend: function () {
            },                   //Ajax在发送请求之前调用的函数
            pagerOnComplete: function () {
            },                     //Ajax请求完成之后调用这个函数
            pagerOnSuccess: function (data, status) {
            },           //Ajax请求成功后的回调函数。
            pagerParameter: {},                              //提交参数
            pagerActionUrl: "",                              //提交地址
            pagerFirstText: "首页",                          //首页按钮显示值
            pagerLastText: "尾页",                           //尾页按钮显示值
            pagerNextText: "下一页",                         //下一页按钮显示值
            pagerPreviousText: "上一页",                     //上一页按钮显示值
            pagerIsShowJump: false,                          //是否显示跳转到指定页
            pagerJumpText: "跳转",                            //跳转按钮显示值
            pagerActiveStyle: "Active"                        //选中状态样式
        },
        Load: function (options) {
            this.defaults = $.extend(this.defaults, options);
            if (this.defaults.pagerCount > 0) {
                var locationIndex = Math.ceil(this.defaults.pagerShowCount / 2);//索引页所在分页按钮组中的位置
                var locationCurrentIndex = locationIndex; //当前索引页实际位置
                var locationStartIndex = 1;  //分页控件开始页码索引
                var locationEndIndex = this.defaults.pagerShowCount; //分页控件结束页码索引
                var firstCode = "<a href='javascript:void(0);' pageCode='1'>" + this.defaults.pagerFirstText + "</a>";                                                       //首页按钮Code
                var lastCode = "<a href='javascript:void(0);'  pageCode='" + this.defaults.pagerCount + "' >" + this.defaults.pagerLastText + "</a>";                                 //尾页按钮Code
                var prevCode = ""; //上一页按钮Code
                var nextCode = ""; //下一页按钮Code
                var indexCodes = "";//索引页按钮Code
                var jumpCode = "";//跳转按钮索引
                var pagerCode = ""; //分页控件Code
                if (parseInt(this.defaults.pagerIndex) > 1) {
                    var pagerPreviousIndex = parseInt(this.defaults.pagerIndex) - 1;
                    prevCode = "<a href='javascript:void(0);' pageCode='" + pagerPreviousIndex + "'>" + this.defaults.pagerPreviousText + "</a>";
                }

                if (parseInt(this.defaults.pagerIndex) < parseInt(this.defaults.pagerCount)) {
                    var pagerNextIndex = parseInt(this.defaults.pagerIndex) + 1;
                    nextCode = "<a href='javascript:void(0);' pageCode='" + pagerNextIndex + "' >" + this.defaults.pagerNextText + "</a>";
                }

                if (this.defaults.pagerIsShowJump) {
                    jumpCode = "<input type='text' id='JasonPager_JumpIndex' /><a href='javascript:void(0);'>" + this.defaults.pagerJumpText + "</a>";
                }

                //判断页面数量是否超过每组显示数量
                if (parseInt(this.defaults.pagerCount) <= parseInt(this.defaults.pagerShowCount)) {
                    locationStartIndex = 1;
                    locationEndIndex = parseInt(this.defaults.pagerCount);
                } else {
                    //当前索引页值 未超过最后一组设置位置值
                    if (parseInt(this.defaults.pagerIndex) <= (parseInt(this.defaults.pagerCount) - locationIndex + 1)) {
                        //当前索引页值 超过设定位置时
                        if ((parseInt(this.defaults.pagerIndex) - parseInt(locationIndex) + 1) > 0)
                            locationStartIndex = parseInt(this.defaults.pagerIndex) - parseInt(locationIndex) + 1;
                        else // 当前索引页值 未超过第一组设定位置时起始位置为 1
                            locationStartIndex = 1;

                        locationEndIndex = parseInt(locationStartIndex) + parseInt(this.defaults.pagerShowCount) - 1;
                        if (parseInt(locationEndIndex) >= parseInt(this.defaults.pagerCount)) {
                            locationEndIndex = parseInt(this.defaults.pagerCount);
                            locationStartIndex = parseInt(locationEndIndex) - parseInt(this.defaults.pagerShowCount) + 1;
                        }

                    } else {
                        locationEndIndex = parseInt(this.defaults.pagerCount);
                        locationStartIndex = parseInt(locationEndIndex) - parseInt(this.defaults.pagerShowCount) + 1;
                    }
                }
                //循环处理页码Code
                for (var i = 0; i < parseInt(this.defaults.pagerShowCount) ; i++) {
                    var activeClass = "";
                    if (parseInt(locationStartIndex) + i == parseInt(this.defaults.pagerIndex)) {
                        activeClass = "class='" + this.defaults.pagerActiveStyle + "'";
                    }
                    var pageTempIndex = locationStartIndex + i;
                    indexCodes += "<a href='javascript:void(0);'  " + activeClass + " pageCode='" + pageTempIndex + "'>" + pageTempIndex + "</a>";

                    if ((i + 1) == parseInt(locationEndIndex)) {
                        break;
                    }
                }

                pagerCode = firstCode + prevCode + indexCodes + nextCode + lastCode + jumpCode;

                $("#" + this.defaults.pagerContainer).html(pagerCode);

                $("#" + this.defaults.pagerContainer + " a").each(function () {
                    $(this).click(function () {
                        var pageCode = $(this).attr("pagecode");
                        $.JasonPager.Submit(pageCode);
                    });
                });
            }
        },
        Submit: function (pageIndex) {
            var pagerIndex = 1;
            if (parseInt(pageIndex) > 1) {
                pagerIndex = parseInt(pageIndex);
            }

            if ($.JasonPager.defaults.pagerIsAjaxSubmit) {
                $.JasonPager.defaults.pagerParameter.PagerIndex = pagerIndex;
                $.ajax(
                    {
                        url: $.JasonPager.defaults.pagerActionUrl,
                        data: $.JasonPager.defaults.pagerParameter,
                        type: "post",
                        beforeSend: $.JasonPager.defaults.pagerOnBeforeSend(),
                        success: function (data, status) {
                            $.JasonPager.defaults.pagerOnSuccess(data, status);
                            $.JasonPager.Load({ pagerIndex: pagerIndex });
                        },
                        complete: $.JasonPager.defaults.pagerOnComplete()
                    });
            } else {
                document.forms[$.JasonPager.defaults.pagerFormId].action = $.JasonPager.defaults.pagerActionUrl + "?pagerIndex=" + pagerIndex + "&&pagerSize=" + $.JasonPager.defaults.pagerSize;
                document.forms[$.JasonPager.defaults.pagerFormId].submit();
            }
        }
    });

    $.JasonPager.prototype = {}
})(jQuery);
