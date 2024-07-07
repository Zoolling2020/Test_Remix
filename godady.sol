// SPDX-License-Identifier: MIT

// twitter:@

// telegram:t.me/TATE FRIEND

// File: @openzeppelin/contracts/utils/Context.sol


// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

contract ERC20 is Context, IERC20, IERC20Metadata {
    mapping(address => uint256) private _balances;

    mapping(address => mapping(address => uint256)) private _allowances;

    uint256 private _totalSupply;
    // Social links
    string public website;
    string public twitter;
    string public telegram;
    }


    // Wallets
   // address public developmentWallet = 0x4EE3C678E736eD21752A57031c1641a17e17d214;
 //   address public liquidityWallet = 0xC85Bc625EA55c091fe976269220C03ffd4baC5b9;
 //   address public marketingWallet = 0xdf9f29E38b63Af266F790658598d58Df3D6e4Cd7;
  //  address public teamWallet = 0x57148De80cBb0b2cc7556889f5e9001Cf232CB68;
   //   address public airdropWallet1 = 0x82bb994b49DA144b7bddb667330c1E1D8D9fec6c;
   // address public airdropWallet2 = 0x1493D18c8BeAb5e4f67d91170795bd14c8819E47;
   // address public cexLiquidityWallet = 0xa0E8d29FBFcF49906d1285dA880D9D761E532211;
  //  address public deadAddress = address(0);
                                                                                            


    // Max supply
   // uint256 private constant _maxSupply = 10000000000 * 10 ** decimals();
    
  //  constructor(
        string memory _name,
        string memory _symbol,
        string memory _website,
        string memory _twitter,
        string memory _telegram
    ) ERC20(_name, _symbol) {
        website = _website;
        twitter = _twitter;
        telegram = _telegram;
        _mint(msg.sender, _maxSupply);
    }

    // Allow only the owner to mint tokens
    function mint(address to, uint256 amount) public onlyOwner {
        require(totalSupply() + amount <= _maxSupply, "ERC20: minting would exceed max supply");
        _mint(to, amount);
    }

    // Function to renounce ownership
    function renounceOwnership() public override onlyOwner {
        transferOwnership(deadAddress);
    }
    
    // Function to get balances of wallets
    function getBalance(address wallet) public view returns (uint256) {
        return balanceOf(wallet);
    }

    // Function to get allowances
    function getAllowance(address owner, address spender) public view returns (uint256) {
        return allowance(owner, spender);
    }
}
