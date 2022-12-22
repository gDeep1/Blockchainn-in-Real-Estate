{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red79\green123\blue61;\red26\green26\blue41;\red172\green172\blue193;
\red70\green137\blue204;\red212\green212\blue212;\red167\green197\blue152;\red45\green175\blue118;\red237\green114\blue173;
\red13\green102\blue149;\red194\green126\blue101;\red14\green86\blue166;\red187\green97\blue44;\red253\green181\blue13;
\red140\green108\blue11;\red31\green133\blue64;}
{\*\expandedcolortbl;;\cssrgb\c37647\c54510\c30588;\cssrgb\c13333\c13725\c21176;\cssrgb\c72941\c73333\c80000;
\cssrgb\c33725\c61176\c83922;\cssrgb\c86275\c86275\c86275;\cssrgb\c70980\c80784\c65882;\cssrgb\c19608\c72941\c53725;\cssrgb\c95294\c54118\c73333;
\cssrgb\c0\c47843\c65098;\cssrgb\c80784\c56863\c47059;\cssrgb\c3137\c42353\c70980;\cssrgb\c78824\c45882\c22353;\cssrgb\c100000\c75686\c2745;
\cssrgb\c61961\c49412\c3137;\cssrgb\c12941\c58039\c31765;}
\paperw11900\paperh16840\margl1440\margr1440\vieww25780\viewh13200\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 //SPDX-License-Identifier: Unlicense\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 pragma\cf4 \strokec4  \cf5 \strokec5 solidity\cf4 \strokec4  \cf6 \strokec6 ^\cf7 \strokec7 0.8.0\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 interface IERC721 \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\
\cb3     \cf5 \strokec5 function\cf4 \strokec4  transferPropertyFrom\cf6 \strokec6 (\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 address\cf4 \strokec4  _from\cf6 \strokec6 ,\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 address\cf4 \strokec4  _to\cf6 \strokec6 ,\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 uint256\cf4 \strokec4  _id\cb1 \
\cb3     \cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 external\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cb3     \cf5 \strokec5 function\cf4 \strokec4  approve\cf6 \strokec6 (\cf5 \strokec5 address\cf4 \strokec4  _to\cf6 \strokec6 ,\cf4 \strokec4  \cf5 \strokec5 uint256\cf4 \strokec4  _tokenId\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 external\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 struct\cf4 \strokec4  Buyer \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 address\cf4 \strokec4  id\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 address\cf4 \strokec4  bank\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 struct\cf4 \strokec4  Bid \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 uint256\cf4 \strokec4  propertyID\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 address\cf4 \strokec4  buyerID\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 uint256\cf4 \strokec4  amount\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 bool\cf4 \strokec4  isBankApproved\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 struct\cf4 \strokec4  Property \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 uint256\cf4 \strokec4  id\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 uint256\cf4 \strokec4  price\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 address\cf4 \strokec4  inspector\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 bool\cf4 \strokec4  isOnSale\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 bool\cf4 \strokec4  isInspected\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 contract\cf4 \strokec4  RealEstatePlatform \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 address\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  nftAddress\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 address\cf4 \strokec4  \cf8 \strokec8 payable\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  seller\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cb3     Buyer \cf6 \strokec6 []\cf4 \strokec4  buyers\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     Property \cf6 \strokec6 []\cf4 \strokec4  properties\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     Bid \cf6 \strokec6 []\cf4 \strokec4  bids\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     Bid highestBid\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cb3     \cf9 \strokec9 constructor\cf6 \strokec6 (\cf5 \strokec5 address\cf4 \strokec4  _nftAddress\cf6 \strokec6 ,\cf4 \strokec4  \cf5 \strokec5 address\cf4 \strokec4  \cf8 \strokec8 payable\cf4 \strokec4  _seller\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         nftAddress \cf6 \strokec6 =\cf4 \strokec4  _nftAddress\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3         seller \cf6 \strokec6 =\cf4 \strokec4  _seller\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 // Put property on sale\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 function\cf4 \strokec4  putOnSale\cf6 \strokec6 (\cf4 \strokec4  \cf5 \strokec5 uint256\cf4 \strokec4  _propertyID\cf6 \strokec6 ,\cf4 \strokec4  \cf5 \strokec5 uint256\cf4 \strokec4  _purchasePrice\cf6 \strokec6 ,\cf4 \strokec4  \cf5 \strokec5 address\cf4 \strokec4  _inspector\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf8 \strokec8 payable\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 require\cf6 \strokec6 (\cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 sender \cf6 \strokec6 ==\cf4 \strokec4  seller\cf6 \strokec6 ,\cf4 \strokec4  \cf11 \strokec11 "Only seller can call this method"\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\
\cb3         \cf2 \strokec2 // trransfer NFT to this contract \cf4 \cb1 \strokec4 \
\cb3         IERC721\cf6 \strokec6 (\cf4 \strokec4 nftAddress\cf6 \strokec6 ).\cf4 \strokec4 transferPropertyFrom\cf6 \strokec6 (\cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 sender\cf6 \strokec6 ,\cf4 \strokec4  \cf5 \strokec5 address\cf6 \strokec6 (\cf12 \cb3 \strokec12 this\cf6 \cb3 \strokec6 ),\cf4 \strokec4  _propertyID\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\
\cb3         properties\cf6 \strokec6 .\cf4 \strokec4 push\cf6 \strokec6 (\cf4 \strokec4  \cb1 \
\cb3             Property\cf6 \strokec6 (\{\cf4 \strokec4 id\cf6 \strokec6 :\cf4 \strokec4  _propertyID\cf6 \strokec6 ,\cf4 \strokec4  price\cf6 \strokec6 :\cf4 \strokec4  _purchasePrice\cf6 \strokec6 ,\cf4 \strokec4  inspector\cf6 \strokec6 :\cf4 \strokec4  _inspector\cf6 \strokec6 ,\cf4 \strokec4  isOnSale\cf6 \strokec6 :\cf4 \strokec4  \cf5 \strokec5 true\cf6 \strokec6 ,\cf4 \strokec4  isInspected\cf6 \strokec6 :\cf4 \strokec4  \cf5 \strokec5 false\cf6 \strokec6 \})\cf4 \cb1 \strokec4 \
\cb3         \cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 // register buyer in the list for biding\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 function\cf4 \strokec4  register\cf6 \strokec6 (\cf5 \strokec5 address\cf4 \strokec4  _buyer\cf6 \strokec6 ,\cf4 \strokec4  \cf5 \strokec5 address\cf4 \strokec4  _bank\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 require\cf6 \strokec6 (\cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 sender \cf6 \strokec6 ==\cf4 \strokec4  seller\cf6 \strokec6 ,\cf4 \strokec4  \cf11 \strokec11 "Only seller can register the buyer"\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\
\cb3         buyers\cf6 \strokec6 .\cf4 \strokec4 push\cf6 \strokec6 (\cf4 \strokec4  \cb1 \
\cb3             Buyer\cf6 \strokec6 (\{\cf4 \strokec4 id\cf6 \strokec6 :\cf4 \strokec4  _buyer\cf6 \strokec6 ,\cf4 \strokec4  bank\cf6 \strokec6 :\cf4 \strokec4  _bank\cf6 \strokec6 \})\cf4 \cb1 \strokec4 \
\cb3         \cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf5 \strokec5 function\cf4 \strokec4  bid\cf6 \strokec6 (\cf5 \strokec5 uint256\cf4 \strokec4  _propertyID\cf6 \strokec6 ,\cf4 \strokec4  \cf5 \strokec5 uint256\cf4 \strokec4  _bidAmount\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 require\cf6 \strokec6 (\cf4 \strokec4 isContainsBuyer\cf6 \strokec6 (\cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 sender\cf6 \strokec6 ),\cf4 \strokec4  \cf11 \strokec11 "Only valid buyer can bid"\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 require\cf6 \strokec6 (\cf4 \strokec4 isContainsProperty\cf6 \strokec6 (\cf4 \strokec4 _propertyID\cf6 \strokec6 ),\cf4 \strokec4  \cf11 \strokec11 "Invalid Property. It is not on sale"\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\
\cb3          bids\cf6 \strokec6 .\cf4 \strokec4 push\cf6 \strokec6 (\cf4 \strokec4  \cb1 \
\cb3             Bid\cf6 \strokec6 (\{\cf4 \strokec4 propertyID\cf6 \strokec6 :\cf4 \strokec4  _propertyID\cf6 \strokec6 ,\cf4 \strokec4  buyerID\cf6 \strokec6 :\cf4 \strokec4  \cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 sender\cf6 \strokec6 ,\cf4 \strokec4  amount\cf6 \strokec6 :\cf4 \strokec4  _bidAmount\cf6 \strokec6 ,\cf4 \strokec4  isBankApproved\cf6 \strokec6 :\cf4 \strokec4  \cf5 \strokec5 false\cf6 \strokec6 \})\cf4 \cb1 \strokec4 \
\cb3         \cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 // Update Inspection Status (only inspector)\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 function\cf4 \strokec4  inspectionFor\cf6 \strokec6 (\cf5 \strokec5 uint256\cf4 \strokec4  _propertyID\cf6 \strokec6 ,\cf4 \strokec4  \cf5 \strokec5 bool\cf4 \strokec4  _passed\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cb1 \
\cb3         \cf13 \strokec13 for\cf6 \strokec6 (\cf5 \strokec5 uint\cf4 \strokec4  i \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf6 \strokec6 ;\cf4 \strokec4  i\cf6 \strokec6 <\cf4 \strokec4 properties\cf6 \strokec6 .\cf4 \strokec4 length\cf6 \strokec6 ;\cf4 \strokec4  i\cf6 \strokec6 ++)\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3             \cf14 \strokec14 if\cf6 \strokec6 (\cf4 \strokec4 properties\cf6 \strokec6 [\cf4 \strokec4 i\cf6 \strokec6 ].\cf4 \strokec4 id \cf6 \strokec6 ==\cf4 \strokec4  _propertyID\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3                 \cf2 \strokec2 // validate caller\cf4 \cb1 \strokec4 \
\cb3                 \cf10 \strokec10 require\cf6 \strokec6 (\cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 sender \cf6 \strokec6 ==\cf4 \strokec4  properties\cf6 \strokec6 [\cf4 \strokec4 i\cf6 \strokec6 ].\cf4 \strokec4 inspector\cf6 \strokec6 ,\cf4 \strokec4  \cf11 \strokec11 "Only inspector approve the deal"\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\cb3                 \cf2 \strokec2 // update status\cf4 \cb1 \strokec4 \
\cb3                 properties\cf6 \strokec6 [\cf4 \strokec4 i\cf6 \strokec6 ].\cf4 \strokec4 isInspected \cf6 \strokec6 =\cf4 \strokec4  _passed\cf6 \strokec6 ;\cf4 \strokec4  \cb1 \
\cb3             \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3         \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 // Approve bid by banker from buyer\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 function\cf4 \strokec4  bankApprovalFor\cf6 \strokec6 (\cf5 \strokec5 address\cf4 \strokec4  _buyerID\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 // filter buyer\cf4 \cb1 \strokec4 \
\cb3         \cf13 \strokec13 for\cf6 \strokec6 (\cf5 \strokec5 uint\cf4 \strokec4  i \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf6 \strokec6 ;\cf4 \strokec4  i\cf6 \strokec6 <\cf4 \strokec4 buyers\cf6 \strokec6 .\cf4 \strokec4 length\cf6 \strokec6 ;\cf4 \strokec4  i\cf6 \strokec6 ++)\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\
\cb3             \cf14 \strokec14 if\cf6 \strokec6 (\cf4 \strokec4 buyers\cf6 \strokec6 [\cf4 \strokec4 i\cf6 \strokec6 ].\cf4 \strokec4 id \cf6 \strokec6 ==\cf4 \strokec4  _buyerID\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3                 \cf2 \strokec2 // validate bank\cf4 \cb1 \strokec4 \
\cb3                 \cf10 \strokec10 require\cf6 \strokec6 (\cf4 \strokec4 buyers\cf6 \strokec6 [\cf4 \strokec4 i\cf6 \strokec6 ].\cf4 \strokec4 bank \cf6 \strokec6 ==\cf4 \strokec4  \cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 sender\cf6 \strokec6 ,\cf4 \strokec4  \cf11 \strokec11 "This bank is not assigned for approval"\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\
\cb3                 \cf2 \strokec2 // filter bid\cf4 \cb1 \strokec4 \
\cb3                 \cf13 \strokec13 for\cf6 \strokec6 (\cf5 \strokec5 uint\cf4 \strokec4  y \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf6 \strokec6 ;\cf4 \strokec4  y\cf6 \strokec6 <\cf4 \strokec4 bids\cf6 \strokec6 .\cf4 \strokec4 length\cf6 \strokec6 ;\cf4 \strokec4  y\cf6 \strokec6 ++)\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\
\cb3                     \cf14 \strokec14 if\cf6 \strokec6 (\cf4 \strokec4 bids\cf6 \strokec6 [\cf4 \strokec4 y\cf6 \strokec6 ].\cf4 \strokec4 buyerID \cf6 \strokec6 ==\cf4 \strokec4  _buyerID\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3                         \cb1 \
\cb3                         \cf2 \strokec2 // update status\cf4 \cb1 \strokec4 \
\cb3                         bids\cf6 \strokec6 [\cf4 \strokec4 y\cf6 \strokec6 ].\cf4 \strokec4 isBankApproved \cf6 \strokec6 =\cf4 \strokec4  \cf5 \strokec5 true\cf6 \strokec6 ;\cf4 \strokec4  \cb1 \
\cb3                     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3                 \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3             \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3         \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf5 \strokec5 function\cf4 \strokec4  endAuction\cf6 \strokec6 ()\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 require\cf6 \strokec6 (\cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 sender \cf6 \strokec6 ==\cf4 \strokec4  seller\cf6 \strokec6 ,\cf4 \strokec4  \cf11 \strokec11 "Only seller end the auction"\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\
\cb3         highestBid \cf6 \strokec6 =\cf4 \strokec4  getHighestBid\cf6 \strokec6 ();\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 // Close Sale and tranfer \cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 function\cf4 \strokec4  closeSale\cf6 \strokec6 (\cf5 \strokec5 uint256\cf4 \strokec4  _propertyID\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 require\cf6 \strokec6 (\cf10 \strokec10 msg\cf6 \strokec6 .\cf4 \strokec4 sender \cf6 \strokec6 ==\cf4 \strokec4  seller\cf6 \strokec6 ,\cf4 \strokec4  \cf11 \strokec11 "Only seller can close the deal"\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 require\cf6 \strokec6 (\cf4 \strokec4 highestBid\cf6 \strokec6 .\cf4 \strokec4 propertyID \cf6 \strokec6 ==\cf4 \strokec4  _propertyID\cf6 \strokec6 ,\cf4 \strokec4  \cf11 \strokec11 "Auction needs to be end first"\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\
\cb3         \cf13 \strokec13 for\cf6 \strokec6 (\cf5 \strokec5 uint\cf4 \strokec4  i \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf6 \strokec6 ;\cf4 \strokec4  i\cf6 \strokec6 <\cf4 \strokec4 properties\cf6 \strokec6 .\cf4 \strokec4 length\cf6 \strokec6 ;\cf4 \strokec4  i\cf6 \strokec6 ++)\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3             Property \cf15 \strokec15 memory\cf4 \strokec4  property \cf6 \strokec6 =\cf4 \strokec4  properties\cf6 \strokec6 [\cf4 \strokec4 i\cf6 \strokec6 ];\cf4 \cb1 \strokec4 \
\
\cb3             \cf14 \strokec14 if\cf6 \strokec6 (\cf4 \strokec4 property\cf6 \strokec6 .\cf4 \strokec4 id \cf6 \strokec6 ==\cf4 \strokec4  _propertyID\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3                 \cf10 \strokec10 require\cf6 \strokec6 (\cf4 \strokec4 property\cf6 \strokec6 .\cf4 \strokec4 isInspected\cf6 \strokec6 ,\cf4 \strokec4  \cf11 \strokec11 "Inspection is pending"\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\cb3                 \cf10 \strokec10 require\cf6 \strokec6 (\cf4 \strokec4 property\cf6 \strokec6 .\cf4 \strokec4 isOnSale\cf6 \strokec6 ,\cf4 \strokec4  \cf11 \strokec11 "Property is not on sale"\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\cb3                 \cb1 \
\cb3                 \cf2 \strokec2 // remove property from sale\cf4 \cb1 \strokec4 \
\cb3                 property\cf6 \strokec6 .\cf4 \strokec4 isOnSale \cf6 \strokec6 =\cf4 \strokec4  \cf5 \strokec5 false\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cb3                 \cf2 \strokec2 // transfer amount to seller\cf4 \cb1 \strokec4 \
\cb3                 \cf6 \strokec6 (\cf5 \strokec5 bool\cf4 \strokec4  success\cf6 \strokec6 ,\cf4 \strokec4  \cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 =\cf4 \strokec4  \cf8 \strokec8 payable\cf6 \strokec6 (\cf4 \strokec4 seller\cf6 \strokec6 ).\cf4 \strokec4 call\cf6 \strokec6 \{\cf4 \strokec4 value\cf6 \strokec6 :\cf4 \strokec4  highestBid\cf6 \strokec6 .\cf4 \strokec4 amount\cf6 \strokec6 \}(\cf4 \cb1 \strokec4 \
\cb3                 \cf11 \strokec11 ""\cf4 \cb1 \strokec4 \
\cb3                 \cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\cb3                 \cf10 \strokec10 require\cf6 \strokec6 (\cf4 \strokec4 success\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\cb3                 \cb1 \
\cb3                 \cf2 \strokec2 // transfer nft/property to buyer\cf4 \cb1 \strokec4 \
\cb3                 IERC721\cf6 \strokec6 (\cf4 \strokec4 nftAddress\cf6 \strokec6 ).\cf4 \strokec4 transferPropertyFrom\cf6 \strokec6 (\cf5 \strokec5 address\cf6 \strokec6 (\cf12 \cb3 \strokec12 this\cf6 \cb3 \strokec6 ),\cf4 \strokec4  highestBid\cf6 \strokec6 .\cf4 \strokec4 buyerID\cf6 \strokec6 ,\cf4 \strokec4  _propertyID\cf6 \strokec6 );\cf4 \cb1 \strokec4 \
\cb3             \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3         \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf9 \strokec9 receive\cf6 \strokec6 ()\cf4 \strokec4  \cf8 \strokec8 external\cf4 \strokec4  \cf8 \strokec8 payable\cf4 \strokec4  \cf6 \strokec6 \{\}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 // Return true if buyer exists in the list\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 function\cf4 \strokec4  isContainsBuyer\cf6 \strokec6 (\cf5 \strokec5 address\cf4 \strokec4  _buyerId\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 private\cf4 \strokec4  \cf8 \strokec8 view\cf4 \strokec4  \cf16 \strokec16 returns\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 bool\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf13 \strokec13 for\cf6 \strokec6 (\cf5 \strokec5 uint\cf4 \strokec4  i \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf6 \strokec6 ;\cf4 \strokec4  i\cf6 \strokec6 <\cf4 \strokec4 buyers\cf6 \strokec6 .\cf4 \strokec4 length\cf6 \strokec6 ;\cf4 \strokec4  i\cf6 \strokec6 ++)\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3             \cf14 \strokec14 if\cf6 \strokec6 (\cf4 \strokec4 buyers\cf6 \strokec6 [\cf4 \strokec4 i\cf6 \strokec6 ].\cf4 \strokec4 id \cf6 \strokec6 ==\cf4 \strokec4  _buyerId\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3                 \cf16 \strokec16 return\cf4 \strokec4  \cf5 \strokec5 true\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3             \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3         \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3         \cf16 \strokec16 return\cf4 \strokec4  \cf5 \strokec5 false\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 // Return true if property exists in the list\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 function\cf4 \strokec4  isContainsProperty\cf6 \strokec6 (\cf5 \strokec5 uint256\cf4 \strokec4  _propertyID\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 private\cf4 \strokec4  \cf8 \strokec8 view\cf4 \strokec4  \cf16 \strokec16 returns\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 bool\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf13 \strokec13 for\cf6 \strokec6 (\cf5 \strokec5 uint\cf4 \strokec4  i \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf6 \strokec6 ;\cf4 \strokec4  i\cf6 \strokec6 <\cf4 \strokec4 properties\cf6 \strokec6 .\cf4 \strokec4 length\cf6 \strokec6 ;\cf4 \strokec4  i\cf6 \strokec6 ++)\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3             \cf14 \strokec14 if\cf6 \strokec6 (\cf4 \strokec4 properties\cf6 \strokec6 [\cf4 \strokec4 i\cf6 \strokec6 ].\cf4 \strokec4 id \cf6 \strokec6 ==\cf4 \strokec4  _propertyID\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3                 \cf16 \strokec16 return\cf4 \strokec4  \cf5 \strokec5 true\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3             \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3         \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3         \cf16 \strokec16 return\cf4 \strokec4  \cf5 \strokec5 false\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3      \cf2 \strokec2 /**\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \strokec2      * Return sorted array of bids\cf4 \cb1 \strokec4 \
\cf2 \cb3 \strokec2      */\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 function\cf4 \strokec4  getHighestBid\cf6 \strokec6 ()\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf8 \strokec8 view\cf4 \strokec4  \cf16 \strokec16 returns\cf6 \strokec6 (\cf4 \strokec4 Bid \cf15 \strokec15 memory\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         Bid\cf6 \strokec6 []\cf4 \strokec4  \cf15 \strokec15 memory\cf4 \strokec4  items \cf6 \strokec6 =\cf4 \strokec4  bids\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cb3         \cf13 \strokec13 for\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 uint\cf4 \strokec4  i \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 1\cf6 \strokec6 ;\cf4 \strokec4  i \cf6 \strokec6 <\cf4 \strokec4  items\cf6 \strokec6 .\cf4 \strokec4 length\cf6 \strokec6 ;\cf4 \strokec4  i\cf6 \strokec6 ++)\cf4 \cb1 \strokec4 \
\cb3             \cf13 \strokec13 for\cf4 \strokec4  \cf6 \strokec6 (\cf5 \strokec5 uint\cf4 \strokec4  j \cf6 \strokec6 =\cf4 \strokec4  \cf7 \strokec7 0\cf6 \strokec6 ;\cf4 \strokec4  j \cf6 \strokec6 <\cf4 \strokec4  i\cf6 \strokec6 ;\cf4 \strokec4  j\cf6 \strokec6 ++)\cf4 \cb1 \strokec4 \
\cb3                 \cf14 \strokec14 if\cf4 \strokec4  \cf6 \strokec6 (\cf4 \strokec4 items\cf6 \strokec6 [\cf4 \strokec4 i\cf6 \strokec6 ].\cf4 \strokec4 amount \cf6 \strokec6 <\cf4 \strokec4  items\cf6 \strokec6 [\cf4 \strokec4 j\cf6 \strokec6 ].\cf4 \strokec4 amount\cf6 \strokec6 )\cf4 \strokec4  \cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3                     Bid \cf15 \strokec15 memory\cf4 \strokec4  res \cf6 \strokec6 =\cf4 \strokec4  items\cf6 \strokec6 [\cf4 \strokec4 i\cf6 \strokec6 ];\cf4 \cb1 \strokec4 \
\cb3                     items\cf6 \strokec6 [\cf4 \strokec4 i\cf6 \strokec6 ]\cf4 \strokec4  \cf6 \strokec6 =\cf4 \strokec4  items\cf6 \strokec6 [\cf4 \strokec4 j\cf6 \strokec6 ];\cf4 \cb1 \strokec4 \
\cb3                     items\cf6 \strokec6 [\cf4 \strokec4 j\cf6 \strokec6 ]\cf4 \strokec4  \cf6 \strokec6 =\cf4 \strokec4  res\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3                 \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\cb3         \cf16 \strokec16 return\cf4 \strokec4  items\cf6 \strokec6 [\cf7 \strokec7 0\cf6 \strokec6 ];\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 \}}