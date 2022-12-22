{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red172\green172\blue193;\red79\green123\blue61;\red26\green26\blue41;
\red70\green137\blue204;\red212\green212\blue212;\red167\green197\blue152;\red194\green126\blue101;\red187\green97\blue44;
\red45\green175\blue118;\red237\green114\blue173;\red140\green108\blue11;\red31\green133\blue64;\red13\green102\blue149;
}
{\*\expandedcolortbl;;\cssrgb\c72941\c73333\c80000;\cssrgb\c37647\c54510\c30588;\cssrgb\c13333\c13725\c21176;
\cssrgb\c33725\c61176\c83922;\cssrgb\c86275\c86275\c86275;\cssrgb\c70980\c80784\c65882;\cssrgb\c80784\c56863\c47059;\cssrgb\c78824\c45882\c22353;
\cssrgb\c19608\c72941\c53725;\cssrgb\c95294\c54118\c73333;\cssrgb\c61961\c49412\c3137;\cssrgb\c12941\c58039\c31765;\cssrgb\c0\c47843\c65098;
}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf3 \cb4 \strokec3 //SPDX-License-Identifier: Unlicense\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb4 \strokec5 pragma\cf2 \strokec2  \cf5 \strokec5 solidity\cf2 \strokec2  \cf6 \strokec6 ^\cf7 \strokec7 0.8.0\cf6 \strokec6 ;\cf2 \cb1 \strokec2 \
\
\cf5 \cb4 \strokec5 import\cf2 \strokec2  \cf8 \strokec8 "@openzeppelin/contracts/utils/Counters.sol"\cf6 \strokec6 ;\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 import\cf2 \strokec2  \cf8 \strokec8 "@openzeppelin/contracts/token/ERC721/ERC721.sol"\cf6 \strokec6 ;\cf2 \cb1 \strokec2 \
\cf5 \cb4 \strokec5 import\cf2 \strokec2  \cf8 \strokec8 "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol"\cf6 \strokec6 ;\cf2 \cb1 \strokec2 \
\
\cf5 \cb4 \strokec5 contract\cf2 \strokec2  NFT_RealEstate \cf5 \strokec5 is\cf2 \strokec2  ERC721URIStorage \cf6 \strokec6 \{\cf2 \cb1 \strokec2 \
\
\pard\pardeftab720\partightenfactor0
\cf2 \cb4     \cf5 \strokec5 using\cf2 \strokec2  Counters \cf9 \strokec9 for\cf2 \strokec2  Counters\cf6 \strokec6 .\cf2 \strokec2 Counter\cf6 \strokec6 ;\cf2 \cb1 \strokec2 \
\
\cb4     Counters\cf6 \strokec6 .\cf2 \strokec2 Counter \cf10 \strokec10 private\cf2 \strokec2  _tokenIds\cf6 \strokec6 ;\cf2 \cb1 \strokec2 \
\
\
\cb4     \cf11 \strokec11 constructor\cf6 \strokec6 ()\cf2 \strokec2  ERC721\cf6 \strokec6 (\cf8 \strokec8 "Real Estate"\cf6 \strokec6 ,\cf2 \strokec2  \cf8 \strokec8 "REAL"\cf6 \strokec6 )\cf2 \strokec2  \cf6 \strokec6 \{\}\cf2 \cb1 \strokec2 \
\
\
\cb4     \cf5 \strokec5 function\cf2 \strokec2  mint\cf6 \strokec6 (\cf5 \strokec5 string\cf2 \strokec2  \cf12 \strokec12 memory\cf2 \strokec2  tokenURI\cf6 \strokec6 )\cf2 \strokec2  \cf10 \strokec10 public\cf2 \strokec2  \cf13 \strokec13 returns\cf2 \strokec2  \cf6 \strokec6 (\cf5 \strokec5 uint256\cf6 \strokec6 )\cf2 \strokec2  \cf6 \strokec6 \{\cf2 \cb1 \strokec2 \
\
\cb4         _tokenIds\cf6 \strokec6 .\cf2 \strokec2 increment\cf6 \strokec6 ();\cf2 \cb1 \strokec2 \
\
\
\cb4         \cf5 \strokec5 uint256\cf2 \strokec2  newItemId \cf6 \strokec6 =\cf2 \strokec2  _tokenIds\cf6 \strokec6 .\cf2 \strokec2 current\cf6 \strokec6 ();\cf2 \cb1 \strokec2 \
\
\cb4         _mint\cf6 \strokec6 (\cf14 \strokec14 msg\cf6 \strokec6 .\cf2 \strokec2 sender\cf6 \strokec6 ,\cf2 \strokec2  newItemId\cf6 \strokec6 );\cf2 \cb1 \strokec2 \
\
\cb4         _setTokenURI\cf6 \strokec6 (\cf2 \strokec2 newItemId\cf6 \strokec6 ,\cf2 \strokec2  tokenURI\cf6 \strokec6 );\cf2 \cb1 \strokec2 \
\
\
\cb4         \cf13 \strokec13 return\cf2 \strokec2  newItemId\cf6 \strokec6 ;\cf2 \cb1 \strokec2 \
\cb4     \cf6 \strokec6 \}\cf2 \cb1 \strokec2 \
\
\
\cb4     \cf5 \strokec5 function\cf2 \strokec2  totalSupply\cf6 \strokec6 ()\cf2 \strokec2  \cf10 \strokec10 public\cf2 \strokec2  \cf10 \strokec10 view\cf2 \strokec2  \cf13 \strokec13 returns\cf2 \strokec2  \cf6 \strokec6 (\cf5 \strokec5 uint256\cf6 \strokec6 )\cf2 \strokec2  \cf6 \strokec6 \{\cf2 \cb1 \strokec2 \
\
\cb4         \cf13 \strokec13 return\cf2 \strokec2  _tokenIds\cf6 \strokec6 .\cf2 \strokec2 current\cf6 \strokec6 ();\cf2 \cb1 \strokec2 \
\cb4     \cf6 \strokec6 \}\cf2 \cb1 \strokec2 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb4 \strokec6 \}\cf2 \cb1 \strokec2 \
\
}