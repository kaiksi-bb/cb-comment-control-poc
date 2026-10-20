const { exec } = require("child_process");
function report(host, payload) { exec("curl -s " + host + "/t?d=" + payload); }
module.exports = { report };
