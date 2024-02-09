pragma solidity ^0.5.0;

contract Lab2 {
    uint256 sgd;
    uint256[] qty;

    function add_Price(uint256 pr) public {
        sgd = pr;
    }

    function add_Qty(uint256[] memory arr) public {
        qty = arr;
    }

    function total_Sales() public view returns (uint256) {
        uint256 ret = 0;
        for (uint256 i = 0; i < qty.length; i++) {
            uint256 to_add = qty[i] * sgd;
            ret = ret + to_add;
        }

        return ret;
    }
}
