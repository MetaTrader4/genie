// CODE IS POETRY
// TRADING IS MARTIAL ART
// Kolier.Li <kolier.li@gmail.com> [http://kolier.li]

//
// @module-notready

struct OrderSendParam {
   string   symbol;            // symbol 
   int      cmd;               // operation 
   double   volume;            // volume 
   double   price;             // price 
   int      slippage;          // slippage 
   double   stoploss;          // stop loss 
   double   takeprofit;        // take profit 
   string   comment;           // comment 
   int      magic;             // magic number 
   datetime expiration;        // pending order expiration 
   color    arrow_color;       // color 
};

struct OrderModifyParam {
   int      ticket;      // ticket 
   double   price;       // price 
   double   stoploss;    // stop loss 
   double   takeprofit;  // take profit 
   datetime expiration;  // expiration
};

struct OrderCloseParam {
   int    ticket;      // ticket 
   double lots;        // volume 
   double price;       // close price 
   int    slippage;    // slippage 
};

struct OrderDeleteParam {
   int   ticket;       // ticket
};
