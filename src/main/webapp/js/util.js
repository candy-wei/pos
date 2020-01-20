/**
 * 点击按钮进行倒计时操作
 * @param that
 * @param callback
 */
function countdown(that, callback) {
    let second = 90;
    that.attr("disabled", true);
    let run = setInterval(() => {
        that[0].innerText = second + "s";
        second -= 1;
        if (second === 0) {
            clearCountdownBtn(that, run)
        }
    }, 1000);
    callback(run);
}

function clearCountdownBtn(that, runnable) {
    clearInterval(runnable);
    that[0].innerText = "获取";
    that.attr("disabled", false);
}


/**
 * 个位数补零操作
 * @param num
 * @returns {*}
 */
function fullNumber(num) {
    if (num > 9) {
        return num;
    } else {
        return "0" + num;
    }
}

/**
 * 发送 Poster 请求
 * @param url
 * @param params
 * @param callback
 * @param failback
 */
function postRequest(url, params, callback, failback) {
    baseRequest("POST", "json", url, params, callback, failback);
}

function postRequestHtml(url, params, callback, failback) {
    baseRequest("POST", "html", url, params, callback, failback);
}


function baseRequest(method, dataType, url, params, callback, failback) {
    $.ajax({
        type: method,
        url: url,
        data: params,
        dataType: dataType,
        cache: false,
        success: data => {
            callback(data)
        },
        error: () => {
            failback()
        }
    })
}


/**
 * 请求发送短信验证码
 * @param url
 * @param mobile
 * @param successcall
 * @param failcall
 */
function requestVerifyCode(url, mobile, successcall, failcall) {
    let params = {
        mobile: mobile
    };
    postRequest(url, params, data => {
        if (data.errorCode === "SUCCESS") {
            successcall();
        } else {
            failcall("获取验证码失败！");
        }
    }, err => {
        failcall("网络异常");
    })
}

/**
 * 校验手机验证码
 * @param url
 * @param mobile
 * @param verifyCode
 * @param sccesscall
 * @param failcall
 */
function verifyMobileCode(url, mobile, verifyCode, sccesscall, failcall) {
    let params = {
        mobile: mobile,
        code: verifyCode
    }
    postRequest(url, params, data => {
        if (data.errorCode === "SUCCESS") {
            sccesscall();
        } else {
            failcall("验证码校验失败！")
        }
    }, err => {
        failcall("网络异常")
    })

}


function formatName(userName) {
    if (!userName) {
        return "";
    }
    let nameArr = userName.split("");
    let newUserName;
    let len = nameArr.length;
    if (len > 3) {
        newUserName = nameArr[0] + "**" + nameArr[len - 1];
    } else if (len === 3) {
        newUserName = nameArr[0] + "*" + nameArr[len - 1];
    } else {
        newUserName = nameArr.join("");
    }
    return newUserName;

}

/**
 * 格式化时间为 yyyy-mm-dd hh:mm:ss
 * @param timeStamp
 * @returns {string}
 */
function formatTime(timeStamp) {
    if (timeStamp === undefined) {
        console.log('时间戳未传入')
        return ''
    }
    let date = new Date(timeStamp)
    let year = date.getFullYear()
    let month = date.getMonth() + 1
    let day = date.getDate()
    let hour = date.getHours()
    let minute = date.getMinutes()
    let second = date.getSeconds()

    return [year, month, day].map(fullNumber).join('/') + " " + [hour, minute, second].map(fullNumber).join(':')


}

/**
 * 替换字符串模板
 * @param str  原始字符串
 * @param params 填充内容
 * @returns {*}
 */
function strTemplateReplace(str, params) {
    let reg = /\{(.*?)\}/g;
    return str.replace(reg, function () {
        return params[arguments[1]]
    });
}







