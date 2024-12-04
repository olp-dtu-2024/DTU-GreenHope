// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract TransactionManager {
  struct Transaction {
    string transaction_code;
    uint256 amount;
    string direction;
    uint256 datetime;
  }

  Transaction[] public transactions;

  function createTransaction(
    string memory _transaction_code,
    uint256 _amount,
    string memory _direction
  ) public {
    transactions.push(
      Transaction({
        transaction_code: _transaction_code,
        amount: _amount,
        direction: _direction,
        datetime: block.timestamp
      })
    );
  }

  function getAllTransactions() public view returns (Transaction[] memory) {
    return transactions;
  }
}
