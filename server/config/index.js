'use strict';
Object.defineProperty(exports, '__esModule', { value: true });
function getConfig(key) {
    const config = {
        port: 3200,
        mysql_config: {
            dialect: 'mysql',
            host: 'mysql',
            port: 3306,
            username: 'chatgpt',
            password: 'chatgpt',
            database: 'chatgpt',
            timezone: '+08:00',
            dialectOptions: {
                dateStrings: true,
                typeCast: true
            }
        },
        redis_config: {
            type: 'redis',
            host: 'redis',
            port: 6379,
            password: ''
        },
        email: 'xxxx',
        email_config: {
            host: 'smtp.feishu.cn',
            port: 465,
            //ignoreTLS: true,
            //secure: false,
            auth: {
                user: 'xxxx',
                pass: 'xxxx'
            }
        }
    };
    if (key) {
        return config[key];
    }
    return config;
}
exports.default = {
    getConfig
};
//# sourceMappingURL=index.js.map