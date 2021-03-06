# QuickenParser

This is a quick'n'dirty gem to parse Quicken QFX format.

Given an input stream, or a file, this library will return Ruby structures
representing the transactions, accounts and credit cards contained in the
file / stream.

## Example
``` ruby
 accounts = QuickenParser.parse(STDIN)
 accounts.length #=> 3
 account = accounts.first
 #=> <QuickenParser::Account ...>
 account.number     #=> "123456789012"
 account.currency   #=> "CAD"
 account.bank_id    #=> "900000100"
 account.balance    #=> <Money @cents=12345, @currency="CAD">
 account.transactions.length #=> 97
 account.transactions.timespan #=> Sun Aug 31, 2008..Sat Sep 13
 account.transactions.each do |transaction|
   transaction.type       #=> "DEBIT"
   transaction.amount     #=> <Money @cents=13209, @currency="CAD">
   transaction.timestamp  #=> Sun Aug 31, 2008 08:15 AM
   transaction.name       #=> "..."
   transaction.memo       #=> "..."
   transaction.id         #=> "932374"
 end
```
