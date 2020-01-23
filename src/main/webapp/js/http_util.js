function request(config) {
    return new Promise((resolve, reject) => {
        $.ajax({
            type: config.method,
            url: config.url,
            data: config.params,
            dataType: config.dataType,
            cache: config.cache,
            success: data => {
                resolve(data);
            },
            error: (err) => {
                reject("请求网络异常:", err);
            }
        })
    })
}

function requestJson(url, method, params, cache) {
    let config = {
        method: method,
        url,
        params,
        dataType: "json",
        cache,
    };
    return request(config);
}

function getRequestJson(url, params, cache = false) {
    return requestJson(url, "GET", params, cache);
}

function postRequestJson(url, params, cache = false) {
    return requestJson(url, "POST", params, cache);
}
