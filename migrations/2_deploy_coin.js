var Migrations = artifacts.require("./Migrations.sol");
var NextCoin = artifacts.require("./NextCoin.sol")

module.exports = function(deployer) {
  deployer.deploy(Migrations);
  deployer.deploy(NextCoin, 1000000000);
};
