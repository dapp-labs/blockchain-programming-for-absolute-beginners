var token = artifacts.require("./SampleToken.sol");

module.exports = function(deployer){
  deployer.deploy(token);
};
