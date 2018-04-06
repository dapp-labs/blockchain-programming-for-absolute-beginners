var HDWalletProvider = require("truffle-hdwallet-provider");

var infura_apikey = "3ViCoiKuhTeaMIc1256p";
var mnemonic = "symbol special subject hole evidence extend life suggest neither east code survey";

module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*" // Match any network id
    },
    ropsten: {
      provider: new HDWalletProvider(mnemonic, "https://ropsten.infura.io/"+infura_apikey),
      network_id: 3,
      gas:4500000
    }
  }
};
